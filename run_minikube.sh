# !/bin/bash
set -e
ENVIRONMENT=minikube
ENVIRONMENT_DIRECTORY=env/$ENVIRONMENT

ansible-playbook -i $ENVIRONMENT_DIRECTORY init-site.yaml
