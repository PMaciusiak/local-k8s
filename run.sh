# !/bin/bash
set -e
ENVIRONMENT=dev01
ENVIRONMENT_DIRECTORY=env/$ENVIRONMENT

VAULT_ID=$ENVIRONMENT-vault
VAULT_PASS='admin'
echo "$VAULT_PASS" > vault-pass

  ansible-playbook --vault-id $VAULT_ID@vault-pass -i $ENVIRONMENT_DIRECTORY \
  tests-autoscale.yaml

rm vault-pass