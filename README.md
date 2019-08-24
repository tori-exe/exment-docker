# exment-docker
こちらはExment https://exment.net/ の**非公式**Dockerfileです  
Exmentのお手軽検証用に作成したものです

## 使い方

### クイックスタート

docker-composeでの起動  
`sudo docker-compose up -d`

ブラウザでアクセス  
`http://localhost:10000/admin/`

### 説明
Exmentの使用方法については公式サイトを参照ください  
https://exment.net/docs/#/ja/quickstart

### 解説
コンテナ作成時にはインターネット接続が必要です  
公式サイトからインストーラーをダウンロードし `/opt/exment/` に展開しています

Exmentのバージョン2.0で動作確認しています

バインドするポート番号の変更はDockerfileを編集してください