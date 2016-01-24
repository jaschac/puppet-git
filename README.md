# lostinmalloc-git
#### Table of Contents
1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What lostinmalloc-git affects](#what-lostinmalloc-users-affects)
    * [Requirements](#requirements)
4. [Usage](#usage)
5. [Reference](#reference)
6. [Limitations](#limitations)
7. [Development](#development)

## Overview
The `lostinmalloc-git` module manages Git, the distributed revision control system. It is distributed through the Apache License 2.0. Please do refer to the [LICENSE](https://github.com/jaschac/puppet-git/blob/master/LICENSE) for details.

## Module Description
The `lostinmalloc-git` module allows to manage Git and its configuration. `lostinmalloc-git` is not responsible to clone remote repositories. It does ensure that the package is either present or nor in the system.

## Setup
In order to install `lostinmalloc-git`, run the following command:
```bash
$ sudo puppet module install lostinmalloc-git
```
Once installed, Git on a node through `lostinmalloc-git` is a simple as:
```bash
node 'puppet.lostinmalloc.com' {
  class { 'git': }
}
```
The module does expect all the data to be provided through 'Hiera'. See [Usage](#usage) for examples on how to configure it.

#### Requirements
In terms of **requirements** `lostinmalloc-git` demands:

  - `puppet >=4.0.0`

## Usage
All data must be provided through `Hiera`. 

**YAML**
```yaml
---
git::params::package_ensure: 'installed'
```

## Reference
All data must be provided through `Hiera`. Attributes written *in italic*, are optional:

**YAML**

  -  *`package_ensure`*: Defines whether the package is present or not. It must be assigned any of the following values: `absent`, `held`, `installed`, `latest`, `present`, or `purged`. It defaults to `installed`.

## Limitations
`lostinmalloc-git` has been developed and tested on the following setup(s):

  - Operating Systems:
    - Debian 7 Wheezy (3.2.68-1+deb7u3 x86_64)
    - Debian 8 Jessie (3.16.7-ckt11-1+deb8u3 x86_64)
  - Puppet
    - 4.2.1
  - Hiera
    - 3.0.1
  - Facter
    - 2.4.4
  - Ruby
    - 2.1.6p336

## Development
You can contact me through the official page of this module: https://github.com/jaschac/puppet-git. Please do report any bug and suggest new features/improvements.

