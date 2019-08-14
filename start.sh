docker run -d --name history-tools \
 --volume /opt/eos/history-volume:/opt/eos/history-volume -p 0.0.0.0:8880:8880 \
 -e "PGUSER=eos" -e "PGPASSWORD=111111" -e "PGDATABASE=eos" -e PGHOST="172.21.0.100" \
 history-tools:v1.0.dev \
 bash -c  "/opt/eos/bin/history-tools --fill-connect-to 172.21.0.100:8080  --plugin fill_pg_plugin; while true;do sleep 1000;done"

