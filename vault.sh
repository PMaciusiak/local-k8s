# !/bin/bash
set -e

ENV=dev01
VAULT_ID=$ENV-vault
VAULT_PASS='admin'
echo "$VAULT_PASS" > vault-pass

# Encrypt whole file
# ansible-vault encrypt --vault-id $VAULT_ID@vault-pass env/$ENV/secrets.yaml

# Decrypt whole file
# ansible-vault decrypt --vault-id $VAULT_ID@vault-pass env/$ENV/secrets.yaml
