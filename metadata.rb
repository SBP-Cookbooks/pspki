name             'pspki'
maintainer       'Stephen Hoekstra'
maintainer_email 'shoekstra@schubergphilis.com'
license          'All rights reserved'
description      'Installs PKI PowerShell module (https://pspki.codeplex.com)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

supports 'windows'

issues_url 'https://github.com/shoekstra/chef-pspki/issues' if respond_to?(:issues_url)
source_url 'https://github.com/shoekstra/chef-pspki' if respond_to?(:source_url)
chef_version '>= 12.1' if respond_to?(:chef_version)
