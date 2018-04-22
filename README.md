# node_oracledb
Docker machine prepered for NodeJS scripts to work with Oracle Database.

## build docker image
```
git clone https://github.com/atabrea/nodejs_oracledb.git
cd node_oracledb
docker build -t="node_oracledb"
```

## execute NodeJS script
`docker run -it --rm -w /work_dir -v $PWD:/work_dir node_oracledb node select.js`

```
-w /work_dir                    :working directory inside container
-v $PWD:/work_dir               :mount current directory (command $PWD) to `/work_dir` directory into container
select.js                       :nodeJS script `select.js`, should be in current path
```