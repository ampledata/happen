# Makefile for the Happen Framework.
#
# Home:: https://github.com/ampledata/happen
# Author:: Greg Albrecht <mailto:gba@splunk.com>
# Copyright:: Copyright 2012 Splunk, Inc.
# License:: Apache License 2.0
#


## Initialization
init: install_gemset librarian_update

install_gemset:
	rvm gemset import happen.gems

librarian_update:
	librarian-chef update


## Vagrant Targets
vagrant: vagrant_up

vagrant_up:
	vagrant up

vagrant_provision:
	vagrant provision

vagrant_destroy:
	vagrant destroy
