Instana Agent
=========

This role installs the [Instana](https://www.instana.com) Agent.
Ubuntu.

[![Build Status](https://travis-ci.org/Rheinwerk/ansible-role-instana_agent.svg?branch=master)](https://travis-ci.org/Rheinwerk/ansible-role-instana_agent)

Requirements
------------

The Instana Agent is a customer specific download, including a
pre-packaged license key. You need to provide a download url for your
agent in the `_instana` dictionary.

Role Variables
--------------

There is one main variable that drives this role: `_instana`. It is a map that contains all configuration and settings for this role.
The access key and the location of `JAVA_HOME` can be overridden using role variables.
Please see `defaults/main.yml` for details.

Dependencies
------------

Instana requires a pre-installed Oracle JDK, version 8 or above.
By default it is expected in `/usr/java/default`, but can be overridden.


Example Playbook
----------------

The general contract of this role is to take the variables map `_instana` from `defaults/main.yml` as a template for your configuration and pass that configuration as a parameter to this role.

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      var:
        INSTANA:
          ...
      roles:
         - { role: instana_agent, tags: [ 'instana' ], _jdk: "{{ INSTANA }}" }

License
-------

Please see LICENSE.

Author Information
------------------

Original author is [Daniel Schneller](https://github.com/dschneller) as member of the [Rheinwerk](https://github.com/Rheinwerk) project.

