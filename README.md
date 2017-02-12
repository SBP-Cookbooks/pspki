# pspki

Chef cookbook to install the [Public Key Infrastructure PowerShell module](http://pspki.codeplex.com/).

## Table of contents

1. [Requirements](#requirements)
    * [Platforms](#platforms)
    * [Cookbooks](#cookbooks)
2. [Usage](#usage)
3. [Attributes](#attributes)
4. [Recipes](#recipes)
5. [Versioning](#versioning)
6. [Testing](#testing)
7. [License and Maintainers](#license-and-maintainers)
8. [Contributing](#contributing)

## Requirements

### Platforms

This cookbook supports:

* Windows

### Cookbooks

This cookbook does not depend on any other cookbooks.

## Usage

Using this cookbook is simple, add the recipe to your run-list and it will install the PKI PowerShell module.

You can specify a custom source URL via the `['pspki']['source_url']` attribute.

## Attributes

Attributes in this cookbook:

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['pspki']['pscx_package_name']</tt></td>
    <td>String</td>
    <td>Specifies the PowerShell Community Extensions package name, this should be safe to leave as default.</td>
    <td><tt>PowerShell PKI Module</tt></td>
  </tr>
  <tr>
    <td><tt>['pspki']['pscx_source_url']</tt></td>
    <td>String</td>
    <td>Specifies where to download the PowerShell Community Extensions installer from incase you wish to host it internally.</td>
    <td><tt>http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=pspki&DownloadId=1563372&FileTime=131053734314730000&Build=21031</tt></td>
  </tr>
  <tr>
    <td><tt>['pspki']['pspki_package_name']</tt></td>
    <td>String</td>
    <td>Specifies the PowerShell PKI package name, this should be safe to leave as default.</td>
    <td><tt>PowerShell PKI Module</tt></td>
  </tr>
  <tr>
    <td><tt>['pspki']['pspki_source_url']</tt></td>
    <td>String</td>
    <td>Specifies where to download the PowerShell PKI installer from incase you wish to host it internally.</td>
    <td><tt>http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=pspki&DownloadId=1563372&FileTime=131053734314730000&Build=21031</tt></td>
  </tr>
</table>

## Recipes

### Public Recipes

#### `pspki::default`

Installs the PKI PowerShell module.

## Versioning

This cookbook uses [Semantic Versioning 2.0.0](http://semver.org/).

Given a version number MAJOR.MINOR.PATCH, increment the:

* MAJOR version when you make functional cookbook changes,
* MINOR version when you add functionality in a backwards-compatible manner,
* PATCH version when you make backwards-compatible bug fixes.

## Testing

```
rake integration:kitchen:all                    # Run all test instances
rake integration:kitchen:default-windows2012r2  # Run default-windows2012r2 test instance
rake spec                                       # Run ChefSpec examples
rake style                                      # Run all style checks
rake style:chef                                 # Run Chef style checks
rake style:ruby                                 # Run Ruby style checks
rake style:ruby:auto_correct                    # Auto-correct RuboCop offenses
```

## License and Maintainers

Maintainers:

* Stephen Hoekstra <shoekstra@schubergphilis.com>

Copyright (c) 2017, Schuberg Philis, All Rights Reserved.

## Contributing

We welcome contributed improvements and bug fixes via the usual work flow:

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request

