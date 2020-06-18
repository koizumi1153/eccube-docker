# eccube-docker

## 準備
・ec-cubeフォルダの作成
利用するEC-CUBEは[ec-cube]フォルダ直下に展開すること
ec-cube-docker/
  └ ec-cube/

## 起動方法
・初回起動時
```
docker-compose up -d --build
```

・通常起動時
```
docker-compose up -d
```

・停止時
```
docker-compose down
```

## 初回作業
dockerが立ち上がったら、
`docker exec -it eccube_db bash`

コンテナ内で、
`mysql -u root -p`
※password

Mysql内で、
``` 
CREATE DATABASE idoly_pride;
CREATE USER 'ip_user'@'%';
SET PASSWORD FOR 'ip_user'@'%' = PASSWORD('NrnB_(Xt7ne-N+IP');
GRANT ALL ON idoly_pride.* TO ip_user;
```

## その他
appコンテナに入るには
`docker exec -it docker_app_1 bash`

## Sequel Pro等でDBアクセス
ホスト： `127.0.0.1`
ユーザー名： `ip_user`
パスワード： `NrnB_(Xt7ne-N+IP`
データベース： `idoly-pride`