# eccube-docker

## 準備
*docker-syncのインストール
```docker-syncのインストール
gem install docker-sync
brew install fswatch
brew install unison
```

参考：https://qiita.com/pocari/items/0340049742927f3a94b7

## 起動方法
*初回起動時
```初回起動時
docker-sync start
docker-compose up -d --build
```

*通常起動時
```通常起動時
docker-sync start
docker-compose up -d
```

*停止時
```停止時
docker-compose down
docker-sync stop
```

## 初回作業
dockerが立ち上がったら、
`docker exec -it eccube_db bash`

コンテナ内で、
`mysql -u root -ppassword`

Mysql内で
``` db&user作成
CREATE DATABASE idoly-pride;
CREATE USER ip_user IDENTIFIED BY 'NrnB_(Xt7ne-N+IP';
GRANT ALL ON idoly-pride.* TO ip_user;
```

## その他
appコンテナに入るには
`docker exec -it docker_app_1 bash`
