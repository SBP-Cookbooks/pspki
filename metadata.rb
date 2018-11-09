name             'pspki'
description      'Installs PKI PowerShell module (https://pspki.codeplex.com)'
maintainer       'Schuberg Philis'
maintainer_email 'cookbooks@schubergphilis.com'
license          'Apache-2.0'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
issues_url       'https://github.com/sbp-cookbooks/pspki/issues'
source_url       'https://github.com/sbp-cookbooks/pspki'

supports 'windows'
chef_version '>= 12.1' if respond_to?(:chef_version)
