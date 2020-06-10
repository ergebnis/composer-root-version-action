# composer-root-version-action

[![Continuous Integration](https://github.com/ergebnis/composer-root-version-action/workflows/Continuous%20Integration/badge.svg)](https://github.com/ergebnis/composer-root-version-action/actions)
[![Continuous Deployment](https://github.com/ergebnis/composer-root-version-action/workflows/Continuous%20Deployment/badge.svg)](https://github.com/ergebnis/composer-root-version-action/actions)

Provides a GitHub Action that sets a `COMPOSER_ROOT_VERSION` environment variable from the value of the branch alias defined in `composer.json`.

## Usage

### Inputs

* `branch` - Optional, name of the branch for which we want to retrieve the branch alias. Defaults to `main`.
* `path` - Optional, path in which to look for `composer.json`. Defaults to `'.'`.


```yaml
name: "Continuous Integration"

on:
  pull_request:
  push:
    branches:
      - "main"

jobs:
  continuous-integration:
    name: "Continuous Integration"

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
