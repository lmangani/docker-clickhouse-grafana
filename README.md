# :mag_right: ClickHouse-Grafana

Custom Docker container + compose providing:
* [Clickhouse](https://github.com/yandex/ClickHouse/) Database _(latest)_
* [Grafana](https://github.com/grafana/grafana) w/ autoprovisioned [Clickhouse Datasource](https://github.com/Vertamedia/clickhouse-grafana) _(latest)_

##### Datasource
![image](https://user-images.githubusercontent.com/1423657/32407391-5beaf81a-c188-11e7-948c-f0bbdc98ae44.png)

#### Chart Example
![image](https://user-images.githubusercontent.com/1423657/32408830-df515e58-c19f-11e7-856c-e8984f008cbf.png)

#### Table Example
![image](https://user-images.githubusercontent.com/1423657/32408387-2f6f7e96-c197-11e7-9cf4-62fb70c59c3d.png)


## Docker Hub Image
```
qxip/clickhouse-grafana
```

## Launch w/ Compose
```
docker-compose up -d
```

## Build Local Image
```
git clone https://github.com/lmangani/docker-clickhouse-grafana
cd docker-clickhouse-grafana

docker build -t qxip/clickhouse-grafana:local .
```
