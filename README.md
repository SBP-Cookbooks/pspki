# pspki

Chef cookbook to install the [Public Key Infrastructure PowerShell module](http://pspki.codeplex.com/).

## Table of contents

1. [Usage](#usage)
1. [Attributes](#attributes)
1. [Recipes](#recipes)
1. [Resources](#resources)
1. [Versioning](#versioning)
1. [Contributing](#contributing)
1. [License and Author](#license-and-author)

## Usage

## Attributes

Attributes in this cookbook:

Name                         | Types   | Description                                                       | Default
---------------------------- | ------  | ----------------------------------------------------------------- | -------
`['pspki']['pscx_install']`  | Boolean | Specifies if to install PSCX module, set to `false` to uninstall  | `true`
`['pspki']['pscx_version']`  | String  | Specifies version to install, installs latest if not set          | `nil`
`['pspki']['pspki_install']` | Boolean | Specifies if to install PSPKI module, set to `false` to uninstall | `true`
`['pspki']['pspki_version']` | String  | Specifies version to install, installs latest if not set          | `nil`

## Recipes

### `pspki::default`

Installs the PKI PowerShell module and it's dependencies.

## Resources

This cookbook doesn't ship any resources.

## Versioning

This cookbook uses [Semantic Versioning 2.0.0](http://semver.org/).

Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make functional cookbook changes,
- MINOR version when you add functionality in a backwards-compatible manner,
- PATCH version when you make backwards-compatible bug fixes.

## Contributing

We welcome contributed improvements and bug fixes via the usual work flow:

1. Fork this repository
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create a new pull request

## License and Author

Authors and contributors:

- Author: Stephen Hoekstra (stephenhoekstra@gmail.com)

```text
Copyright 2018, Stephen Hoekstra <stephenhoekstra@gmail.com>
Copyright 2018, Schuberg Philis

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
