# RDS bridge container

ローカルからVPC内のRDSを使いたい！というケースで便利なコンテナです

## 必要なもの

- (*required*) docker
- [direnv](https://github.com/direnv/direnv)
- ssh-config

  ```
  # ~/.ssh/config
  Host fumidai.host
    HostName your.fumidai.ec2.compute.amazonaws.com
    Port 22
    User ubuntu
    IdentityFile ~/.ssh/your.pem
  ```


## 使い方

1. `$ cp .direnv.sample .direnv && vim .direnv` して、踏み台と行き先のホストを設定する
2. `$ docker-compose build`
3. `$ docker-compose up -d`
4. できあがり！あとは直接ポート指定してローカルのクライアントツールから接続するもよし、docker-compose.ymlにアプリのコンテナを追加するもよしです！！

