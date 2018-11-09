#
# Cookbook:: pspki
# Recipe:: default
#
# Copyright (C) 2017 Schuberg Philis
#
# Created by: Stephen Hoekstra <shoekstra@schubergphilis.com>
#

powershell_package 'Pscx' do
  version node['pspki']['pscx_version'] if node['pspki']['pscx_version']
  action node['pspki']['pscx_install'] ? :install : :remove
end

powershell_package 'PSPKI' do
  version node['pspki']['pspki_version'] if node['pspki']['pspki_version']
  action node['pspki']['pspki_install'] ? :install : :remove
end
