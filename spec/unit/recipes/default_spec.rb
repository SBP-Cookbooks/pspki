#
# Cookbook:: pspki
# Spec:: default
#
# Copyright:: 2018, Stephen Hoekstra
# Copyright:: 2018, Schuberg Philis
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'

describe 'pspki::default' do
  context 'When all attributes are default' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new.converge(described_recipe)
    end

    it 'should converge successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install "Pscx" Powershell package' do
      expect(chef_run).to install_powershell_package('Pscx')
    end

    it 'should install "PSPKI" Powershell package' do
      expect(chef_run).to install_powershell_package('PSPKI')
    end
  end

  context 'When install attributes are set to false' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.normal['pspki']['pscx_install'] = false
        node.normal['pspki']['pspki_install'] = false
      end.converge(described_recipe)
    end

    it 'should converge successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should remove "Pscx" Powershell package' do
      expect(chef_run).to remove_powershell_package('Pscx')
    end

    it 'should remove "PSPKI" Powershell package' do
      expect(chef_run).to remove_powershell_package('PSPKI')
    end
  end

  context 'When version attributes are set' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.normal['pspki']['pscx_version'] = 2
        node.normal['pspki']['pspki_version'] = 2
      end.converge(described_recipe)
    end

    it 'should converge successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install "Pscx" version 2 Powershell package' do
      expect(chef_run).to install_powershell_package('Pscx')
    end

    it 'should install "PSPKI" version 2 Powershell package' do
      expect(chef_run).to install_powershell_package('PSPKI')
    end
  end
end
