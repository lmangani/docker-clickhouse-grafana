# :mag_right: ClickHouse-Grafana

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=lmangani&repoName=docker-clickhouse-grafana&branch=master&pipelineName=docker-clickhouse-grafana&accountName=lmangani&type=cf-1)]( https://g.codefresh.io/repositories/lmangani/docker-clickhouse-grafana/builds?filter=trigger:build;branch:master;service:59fdf001a13744000180f5f7~docker-clickhouse-grafana) <img src="https://img.shields.io/docker/pulls/qxip/clickhouse-grafana.svg"/> 

Custom Docker container + compose providing:
* [Clickhouse](https://github.com/yandex/ClickHouse/) Database _(latest)_
* [Grafana](https://github.com/grafana/grafana) w/ autoprovisioned [Clickhouse Datasource](https://github.com/Vertamedia/clickhouse-grafana) _(latest)_

![image](https://user-images.githubusercontent.com/1423657/32409700-ef67af3e-c1b0-11e7-80d6-cf75172f9f38.png)

#### Chart Example
![image](https://user-images.githubusercontent.com/1423657/32409943-84bb92e4-c1b6-11e7-9a79-659e26bac45f.png)

#### Table Example
![image](https://user-images.githubusercontent.com/1423657/32409937-5d0ce874-c1b6-11e7-8f39-f333d47eb817.png)

#### Pie Example
![image](https://user-images.githubusercontent.com/1423657/32410028-19c33b66-c1b8-11e7-85a3-4e92b2c87c90.png)

##### More Examples
Full Examples are available on the project [wiki](https://github.com/lmangani/docker-clickhouse-grafana/wiki)


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
##### Credits
This bundle lives thanks to the Vertamedia [clickhouse-grafana](https://github.com/Vertamedia/clickhouse-grafana) datasource plugin
