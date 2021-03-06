#!/bin/bash
{% for n in range(aws.nodes) %}

mkdir -p {{ projectname }}-node{{ n }}

cat > {{ projectname }}-node{{ n }}/config.toml << EOF
[parity]
chain = "chain-spec.json"
base_path = "node"

[network]
port = 30300
min_peers = 39
max_peers = 50

[rpc]
port = 8540
apis = ["web3", "eth", "net", "personal", "parity", "parity_set", "traces", "rpc", "parity_accounts"]
interface = "all"
hosts = ["all"]

[ui]
port = 8180

[dapps]
port = 8080

[ipc]
disable = true

[account]
password = ["passwords"]

[mining]
engine_signer = "{{ node_list[n] }}"
reseal_on_txs = "none"
usd_per_tx = "0"
force_sealing = true
tx_queue_size = {{ tx_queue_size }}
EOF

cat > {{ projectname }}-node{{ n }}/stakeholder_setup.json << EOF
{"jsonrpc":"2.0","method":"parity_newAccountFromPhrase","params":["node{{ n }}", "node{{ n }}"],"id":0}
EOF

cat > {{ projectname }}-node{{ n }}/passwords << EOF
node{{ n }}
EOF

cat > {{ projectname }}-node{{ n }}/address << EOF
export ADDRESS="{{ node_list[n] }}"
EOF

{% endfor %}
