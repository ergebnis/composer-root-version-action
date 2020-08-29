# composer-root-version-action

[![Deploy](https://github.com/ergebnis/composer-root-version-action/workflows/Deploy/badge.svg?branch=main)](https://github.com/ergebnis/composer-root-version-action/actions)
[![Integrate](https://github.com/ergebnis/composer-root-version-action/workflows/Integrate/badge.svg?branch=main)](https://github.com/ergebnis/composer-root-version-action/actions)
[![Prune](https://github.com/ergebnis/composer-root-version-action/workflows/Prune/badge.svg?branch=main)](https://github.com/ergebnis/composer-root-version-action/actions)
[![Release](https://github.com/ergebnis/composer-root-version-action/workflows/Release/badge.svg?branch=main)](https://github.com/ergebnis/composer-root-version-action/actions)
[![Renew](https://github.com/ergebnis/composer-root-version-action/workflows/Renew/badge.svg?branch=main)](https://github.com/ergebnis/composer-root-version-action/actions)

Provides a GitHub Action that sets a [`COMPOSER_ROOT_VERSION`](https://getcomposer.org/doc/03-cli.md#composer-root-version) environment variable from the value of the branch alias defined in `composer.json`.

## Usage

### Inputs

* `branch` - Optional, name of the branch for which we want to retrieve the branch alias. Defaults to `main`.
* `path` - Optional, path in which to look for `composer.json`. Defaults to `'.'`.

```yaml
name: "Integrate"

on:
  pull_request: null
  push:
    branches:
      - "main"

jobs:
  integrate:
    name: "Integrate"

    runs-on: "ubuntu-latest"

    steps:
      - name: "Checkout"
        uses: "actions/checkout@v2"

      - name: "Set COMPOSER_ROOT_VERSION environment variable"
        uses: "ergebnis/composer-root-version-action@main"
        with:
          branch: "main"

      - name: "Install dependencies with composer"
        run: "composer install --no-interaction --no-progress --no-suggest"
```

## Changelog

Please have a look at [`CHANGELOG.md`](CHANGELOG.md).

## Contributing

Please have a look at [`CONTRIBUTING.md`](.github/CONTRIBUTING.md).

## Code of Conduct

Please have a look at [`CODE_OF_CONDUCT.md`](https://github.com/ergebnis/.github/blob/main/CODE_OF_CONDUCT.md).

## License

This package is licensed using the MIT License.

Please have a look at [`LICENSE.md`](LICENSE.md).

## Curious what I am building?

:mailbox_with_mail: [Subscribe to my list](https://localheinz.com/projects/), and I will occasionally send you an email to let you know what I am working on.
