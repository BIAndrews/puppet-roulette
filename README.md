#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
3. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Overview

A module to setup a game of Russian roulette on Linux systems.

## Usage

```
include ::roulette
```

## Reference

###Classes

####Public classes
* `roulette`: Installs the Russian roulette script

####Private classes
* `roulette::params`: Parameters

###Parameters

#####`hit`

Optional. Specify the shell script command run on hit. Default: `echo "Hit"`

#####`miss`

Optional. Specify the shell script command run on miss. Default: `echo "Miss"`

#####`owner`

Optional. Specify the shell script user owner. Default: `root`

#####`group`

Optional. Specify the shell script group owner. Default: `root`

#####`mode`

Optional. Specify the shell script file mode. Default: `0755`

#####`chance`

Optional. Specify the chance of hit. Default: `6`

#####`filename`

Optional. Specify the shell script file name. Default: `/etc/profile.d/puppet_roulette.sh`

## Limitations

This is a Linux only puppet module.

## Development

See `CONTRIBUTING.md`
