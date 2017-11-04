#!/bin/bash
./run.sh "${@}" &

until $(curl --output /dev/null --silent --head --fail http://localhost:3000); do
    sleep 5
done

curl -s -H "Content-Type: application/json" \
    -XPOST "http://$GF_SECURITY_ADMIN_USER:$GF_SECURITY_ADMIN_PASSWORD@localhost:3000/api/datasources" \
    -d @- <<EOF
{
	"orgId": 1,
	"name":"clickhouse",
        "type":"vertamedia-clickhouse-datasource",
        "typeLogoUrl":"public/plugins/vertamedia-clickhouse-datasource/img/clickhouse_logo.svg",
        "access":"proxy",
        "url":"http://clickhouse:8123",
        "password":"",
        "user":"",
        "database":"",
        "basicAuth":false,
        "isDefault":true,
        "jsonData":{  
           "addCorsHeader":true,
           "tlsSkipVerify":true
        },
	"secureJsonFields": {}
}
EOF

pkill grafana-server
timeout 10 bash -c "while </dev/tcp/localhost/3000; do sleep 1; done"

exec ./run.sh "${@}"
