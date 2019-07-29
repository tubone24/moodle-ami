# Moodle AMI

Moodle Ami repository used by AWS Training

## What is this repo?

[Moodle](https://moodle.org/?lang=ja) is  a Learning Platform or course management system.

This repo is creating Moodle Server by [Packer](https://www.packer.io/) with some tools below.

* Provisioned by [Ansible](https://www.ansible.com/)
* Check Provisioned Server by [Serverspec](https://serverspec.org/)

## Version

* Moodle 3.4.2

## Preconditions
* Install [Homebrew](https://brew.sh/index_ja.html)
* For execution locally
    * virtualbox (5.1.22 or more)
    * vagrant (1.9.7 or more)
    * sahara (0.0.17 or more)
        * install command `vagrant plugin install sahara`
    * vbguest(0.15.1 or more)
        * install command `vagrant plugin install vbguest`
* ruby 2.4.0 or more
    * use `rbenv` (recommend)
* bundler
    * execute `bundle update` (recommend)

## Installation

* install packer

```
brew install packer
packer --version
> 1.0.0
```

* install aws-cli

```
brew install awscli
aws --version
> aws-cli/1.11.100 Python/2.7.6 Darwin/14.4.0 botocore/1.5.63
```

* install ansible

```
brew install ansible
ansible --version
> ansible 2.3.1.0
```

## Setup MySQL Password

* Mysql Pass includes (packer/ansible/roles/moodle/vars/main.yml)

```
mysql_root_password: passWord <= FixME
```

* Also Change serverspec (packer/serverspec/spec/properties.yml)

```
aws-training:
  :user: aws-training
  :uid: 5000
  :group: aws-training
  :gid: 5000
:db_passwd: passWord <= FixME
```

## Execution

### Execute locally

* initialize vagrant

```
make init-vagrant
```

if error was occured, run the command below.

`vagrant vbguest && vagrant up && vagrant sandbox on`

* test ansible

```
make test-local TARGET=moodle
```

if errors, run the command below.(ex. SSH timeout)
`vagrant up --provision && vagrant sandbox on`

### Execute on server

* get environment key-pair

```
make get-keypair
```

* validate file

```
make validate TARGET=moodle
```

* create AMI for moodle

```
make create-ami TARGET=moodle
```
