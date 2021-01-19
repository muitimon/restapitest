# restapitest
Docker 上で動く HelloWorld を返すだけの簡単な RestAPI を作ったよ。

## 動かし方
- dockerコンテナ立ち上げ
```
$ cd restapitest
$ docker-compose up -d
```

- curl で HelloWorld が返ってくるか確認
```
$ curl localhost:9292
```
