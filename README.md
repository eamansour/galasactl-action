# Galasa CLI (galasactl) GitHub Action
GitHub Action for Galasa's CLI tool

This GitHub Action allows you to run Galasa's "galasactl" CLI tool in GitHub workflows.

## Inputs

`galasactl_version` - The version of galasactl to use. Default `latest`.

`galasactl_args` - **Required** The arguments to be passed into galasactl.

## Usage

To use this GitHub Action in a workflow:
```
jobs:
  run-galasactl:
    runs-on: ubuntu-latest
    name: Runs galasactl
    steps:
      - name: Get the version of galasactl
        id: galasactl-version
        uses: eamansour/galasactl-action@v1
        with:
          galasactl_args: |-
            --version
```