bash -c "cat >/etc/consul.d/consul.json" << EOF
{
  "server": true,
  "bootstrap_expect": 3,
  "raft_protocol": 3,
  "datacenter": "superduper",
  "raft_protocol": 3,
  "retry_join": ["192.168.13.35","192.168.13.36","192.168.13.37"],
  "advertise_addr": "$(hostname -I |grep -Eo '192\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')",
  "leave_on_terminate": true,
  "data_dir": "/opt/consul/data",
  "client_addr": "0.0.0.0",
  "log_level": "INFO",
  "ui": true,
  "acl_datacenter": "superduper",
  "acl_default_policy": "deny",
  "acl_down_policy": "allow",
  "acl_agent_master_token": "testtoken",
  "acl_master_token":"a4c878e5-a0eb-48ef-b6b4-00e18a146bf2"
}
EOF