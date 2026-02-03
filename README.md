# homebrew-besu
 [![Discord](https://img.shields.io/discord/905194001349627914?logo=Hyperledger&style=plastic.svg)](https://discord.gg/hyperledger)
 [![Documentation Status](https://readthedocs.org/projects/hyperledger-besu/badge/?version=latest)](https://besu.hyperledger.org/en/latest/?badge=latest)
 [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/hyperledger/homebrew-besu/blob/main/LICENSE)
Homebrew Tap for besu.

## Getting started
Add the tap, and install:

```
brew tap hyperledger/besu
brew install besu
```
Run the besu executable:

```
besu --help
```

Refer to the [Besu docs](https://besu.hyperledger.org) for further information.

To upgrade besu:
```
brew tap hyperledger/besu
brew upgrade besu
```

## Version update workflow

Use GitHub [workflow](.github/workflows/update-version.yml) to updated the version. Run the workflow to perform new
release update. Workflow requires Besu version. If the workflow
has permission to create pull requests, it will create the PR. If not, you need to create the pull request using the
created branch.
