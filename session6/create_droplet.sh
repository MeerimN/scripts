#!/bin/bash 

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  -d '{"name":"meerim-script", "region":"nyc3","size":"s-1vcpu-1gb","image":"centos-stream-9-x64","ssh_keys":["4d:72:c3:4f:88:15:4c:3b:1e:2f:73:75:3b:1a:c6:a4"]}' \
  "https://api.digitalocean.com/v2/droplets"