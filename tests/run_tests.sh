#!/bin/bash

ansible-playbook test.yml -i inventory --extra-vars="S_INSTANA_AGENT_KEY=${S_INSTANA_AGENT_KEY}"  --diff $@

