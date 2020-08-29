# CONTRIBUTING

We are using [GitHub Actions](https://github.com/features/actions) as a continuous integration system.

For details, take a look at the following workflow configuration files:

- [`workflows/deploy.yaml`](workflows/deploy.yaml)
- [`workflows/integrate.yaml`](workflows/integrate.yaml)
- [`workflows/prune.yaml`](workflows/prune.yaml)
- [`workflows/release.yaml`](workflows/release.yaml)
- [`workflows/triage.yaml`](workflows/triage.yaml)

## Coding Standards

We are using [`yamllint`](https://github.com/adrienverge/yamllint) to enforce coding standards in YAML files.

If you do not have `yamllint` installed yet, run

```sh
$ brew install yamllint
```

to install `yamllint`.

Run

```sh
$ make coding-standards
```

to detect coding standard violations.

## Docker Image

Run

```
$ make docker
```

to build, tag, and run the Docker image locally.

## Extra lazy?

Run

```sh
$ make
```

to enforce coding standards, build, tag, and run the Docker image locally.

## Help

:bulb: Run

```sh
$ make help
```

to display a list of available targets with corresponding descriptions.
