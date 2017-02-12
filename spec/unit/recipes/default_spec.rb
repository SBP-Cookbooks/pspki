#
# Cookbook:: pspki
# Spec:: default
#
# Copyright (C) 2017 Schuberg Philis
#
# Created by: Stephen Hoekstra <shoekstra@schubergphilis.com>
#

require 'spec_helper'

describe 'pspki::default' do
  context 'When all attributes are default' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new(file_cache_path: '/Chef/cache').converge(described_recipe)
    end

    it 'should converge successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install the PSCX PowerShell module using default attribute values' do
      expect(chef_run).to run_powershell_script('Fetch PSCX MSI')
      expect(chef_run).to install_windows_package('PowerShell Community Extensions 3.2.0')
    end

    it 'should install the PSPKI PowerShell module using default attribute values' do
      expect(chef_run).to run_powershell_script('Fetch PSPKI EXE')
      expect(chef_run).to install_windows_package('PowerShell PKI Module')
    end
  end
end
