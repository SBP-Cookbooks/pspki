#
# Cookbook:: pspki
# Recipe:: default
#
# Copyright (C) 2017 Schuberg Philis
#
# Created by: Stephen Hoekstra <shoekstra@schubergphilis.com>
#

# For some reason Chef doesn't like to fetch this file using remote_file
# so for now have worked around it using a powershell_script block
#
# remote_file "#{Chef::Config['file_cache_path']}/pscx.msi" do
#   source node['pspki']['pscx_source_url']
# end

powershell_script 'Fetch PSCX MSI' do
  code <<-EOS.gsub(/^ {4}/, '')
    $downloader = New-Object System.Net.WebClient
    $url        = "#{node['pspki']['pscx_source_url']}"
    $dest       = "#{Chef::Config['file_cache_path']}/pscx.msi"
    $downloader.DownloadFile($url, $dest)
  EOS
  not_if { ::File.exist? "#{Chef::Config['file_cache_path']}/pscx.msi" }
end

windows_package node['pspki']['pscx_package_name'] do
  source "#{Chef::Config['file_cache_path']}/pscx.msi"
  installer_type :msi
end

# For some reason Chef doesn't like to fetch this file using remote_file
# so for now have worked around it using a powershell_script block
#
# remote_file "#{Chef::Config['file_cache_path']}/pspki.exe" do
#   source node['pspki']['pspki_source_url']
# end

powershell_script 'Fetch PSPKI EXE' do
  code <<-EOS.gsub(/^ {4}/, '')
    $downloader = New-Object System.Net.WebClient
    $url        = "#{node['pspki']['pspki_source_url']}"
    $dest       = "#{Chef::Config['file_cache_path']}/pspki.exe"
    $downloader.DownloadFile($url, $dest)
  EOS
  not_if { ::File.exist? "#{Chef::Config['file_cache_path']}/pspki.exe" }
end

windows_package node['pspki']['pspki_package_name'] do
  source "#{Chef::Config['file_cache_path']}/pspki.exe"
  installer_type :custom
  options 'addlocal=all /qn'
end
