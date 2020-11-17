# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

For a full diff see [`0.2.1...main`][0.2.1...main].

## [`0.2.1`][0.2.1]

For a full diff see [`0.2.0...0.2.1`][0.2.0...0.2.1].

### Changed

* Stopped using `set-env` to set `COMPOSER_ROOT_VERSION` environment variable ([#26]), by [@localheinz]

## [`0.2.0`][0.2.0]

For a full diff see [`0.1.3...0.2.0`][0.1.3...0.2.0].

### Changed

* Started using `main` as default branch name ([#11]), by [@localheinz]

## [`0.1.3`][0.1.3]

For a full diff see [`0.1.2...0.1.3`][0.1.2...0.1.3].

### Fixed

* Allowed running Docker image without arguments ([#9]), by [@localheinz]

## [`0.1.2`][0.1.2]

For a full diff see [`0.1.1...0.1.2`][0.1.1...0.1.2].

### Fixed

* Default value of `path` should be `'.'` ([#8]), by [@localheinz]

## [`0.1.1`][0.1.1]

For a full diff see [`0.1.0...0.1.1`][0.1.0...0.1.1].

### Fixed

* Properly resolved tag from corresponding step ([#7]), by [@localheinz]

## [`0.1.0`][0.1.0]

For a full diff see [`b25b879...0.1.0`][b25b879...0.1.0].

[0.1.0]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.1.0
[0.1.1]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.1.1
[0.1.2]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.1.2
[0.1.3]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.1.3
[0.2.0]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.2.0
[0.2.1]: https://github.com/ergebnis/composer-root-version-action/releases/tag/0.2.1

[b25b879...0.1.0]: https://github.com/ergebnis/composer-root-version-action/compare/b25b879...0.1.0
[0.1.0...0.1.1]: https://github.com/ergebnis/composer-root-version-action/compare/0.1.0...0.1.1
[0.1.1...0.1.2]: https://github.com/ergebnis/composer-root-version-action/compare/0.1.1...0.1.2
[0.1.2...0.1.3]: https://github.com/ergebnis/composer-root-version-action/compare/0.1.2...0.1.3
[0.1.3...0.2.0]: https://github.com/ergebnis/composer-root-version-action/compare/0.1.3...0.2.0
[0.2.0...0.2.1]: https://github.com/ergebnis/composer-root-version-action/compare/0.2.0...0.2.1
[0.2.1...main]: https://github.com/ergebnis/composer-root-version-action/compare/0.2.1...main

[#7]: https://github.com/ergebnis/composer-root-version-action/pull/7
[#8]: https://github.com/ergebnis/composer-root-version-action/pull/8
[#9]: https://github.com/ergebnis/composer-root-version-action/pull/9
[#11]: https://github.com/ergebnis/composer-root-version-action/pull/11
[#26]: https://github.com/ergebnis/composer-root-version-action/pull/26

[@localheinz]: https://github.com/localheinz
