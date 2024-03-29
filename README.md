## アプリケーションの概要と作成にあたったきっかけ
ファッション関連のセレクトショップやブランドを探すことのできるアプリケーションです。<br>
趣味でセレクトショップや古着屋巡りをする際、セレクトショップの場所や自分の探しているブランドの取り扱いがあるショップをまとめたサイトといったものが存在せず、情報を得るためにはショップの情報をInstagramや公式HP、もしくはブランドの公式HPの取引先情報からチェックする必要がありました。<br>
上記のような手間を無くすために、セレクトショップの情報や、特定のブランドの取り扱い先をまとめたプラットフォームがあれば、より効率的にお店巡りができるのではないかと考え、本アプリケーションを作成しました。

<br>

## アプリケーション詳細
```Vue.js```と```Ruby on Rails```のAPIモードを使用したSPA(シングルページアプリケーション)です。<br>
SPAを作成するにあたり、```Rails API```と```Vue.js```の実装方法を学ぶことに重きを置いたので、画面デザイン等のUI側の設計は某マッチングアプリのPC版サイトをかなり参考にさせていただきました。<br>

仮想環境構築には```Docker```を使用し、テスト環境には```Circle Ci```を導入しました。<br>
APIリクエストには```axios```を導入し、HTTPリクエストを使ってRails　APIサーバからデータの取得やデータへのデータ送信を行っています。<br>
またルーティング制御には```vue-router```プラグインを使用しています。

<br>

## 本番環境URL
~~https://www.shop-app.site~~

ログイン画面の「ゲストログイン」からログインして下さい。
<img width="776" alt="66a3900fc96294f6aaa518e83c730d7e" src="https://user-images.githubusercontent.com/61679701/171205972-d8b2a624-bcab-4c23-9576-b7b118d37315.png">


### テストユーザー
メールアドレス： test@test.com<br>
パスワード： aaaaaaaa<br>


## 作成期間
2021年12月中旬~現在に至るまで

## 開発環境
・HTML<br>
・CSS<br>
・Vue.js 3.2.31<br>
・Ruby 2.6.6<br>
・Ruby on Rails 6.0.4.6<br>
・MySQL 5.6<br>
・Docker 20.10.7<br>
・Circle Ci 2.1<br>

## 本番環境
・AWS Route53<br>
・AWS Certificate Manager<br>
・Amazon Cloud Front<br>
・Amazon Cloud Watch <br>
・ECR ECS(Fargate) <br>
・S3 <br>
・Amazon RDS<br>

## インフラ構成図

![test](https://user-images.githubusercontent.com/61679701/167063081-2af6c327-a6d9-4d04-8347-fc294ffa63cd.png)


## 画面構成
### ショップ一覧画面

表示されているショップを選択すると、ショップの詳細情報が表示されます。<br>
ショップの説明文や取り扱いのあるブランドを表示しています。<br>
ショップ名をクリックすると実際のHPへ遷移します。<br>
ブランド名をクリックすると紐づいているブランドの詳細画面へ遷移します。<br>
また```Google Map API```を利用し、データベースに登録されたショップの緯度、経度を元に、位置情報をGoogle Mapで表示しています。<br>

https://user-images.githubusercontent.com/61679701/165461717-f311b9f8-e88a-46c1-a71d-dd8512079326.mp4

https://user-images.githubusercontent.com/61679701/165465805-c58f478d-3ed0-487c-98a9-d38fa384edc9.mp4

<br>

### ブランド詳細画面

表示されているブランドをクリックすると、ブランドの詳細情報が表示されます。<br>
ブランド名をクリックすると、実際のHPに遷移するほか、取扱店舗に表示されたアイコンをクリックすると、登録されたショップの詳細画面へ遷移します。

https://user-images.githubusercontent.com/61679701/165461264-1c0ddfb6-b909-44ff-9556-8b29eed397d0.mp4

https://user-images.githubusercontent.com/61679701/165464009-959248c9-fcd2-48ae-8871-942b09e62f50.mp4
 
<br>

### マイページ画面

ユーザー情報が表示されます。
お気に入りに登録したショップ、ブランドのアイコンやログアウトボタンが表示されます。<br>
プロフィール画像下のカメラアイコンをクリックするプロフィール画像変更画面が表示され、画像の変更が可能です。<br>
プロフィール画像のアップロード機能には```Rails```の```Active Storage```を使用しており、Vue側で```FormData```を使用し、受け取った画像ファイルをAPIリクエストで```Rails```側に送信しています。<br>

![マイページ画面](https://user-images.githubusercontent.com/61679701/165459890-26a9050f-4247-4e4d-ac29-00567ea73667.jpeg)
![マイページ画像変更画面](https://user-images.githubusercontent.com/61679701/165465941-c62395cb-fc20-4ebe-bca9-2489f9d830de.jpeg)


https://user-images.githubusercontent.com/61679701/165465982-2f524e31-998a-4d2c-8d0e-1a52d5d9e61f.mp4

<br>

 ## 機能一覧
 ・ユーザー登録、サインアップ登録機能<br>
 ・ユーザーログアウト機能<br>
 ・お気に入りショップ登録機能<br>
 ・お気に入りブランド登録機能<br>
 ・ショップリアルタイム検索機能<br>
 ・ブランドリアルタイム検索機能<br>
 ・プロフィール画像登録、変更機能<br>
 ・Google Map APIを使用したショップの位置情報表示機能<br>
 
## 各機能詳細
#### お気に入りショップ登録機能

https://user-images.githubusercontent.com/61679701/165459551-11a5e4f3-2b96-4121-9c05-f6ddbcd5d559.mp4

<br>

#### お気に入りブランド登録機能

https://user-images.githubusercontent.com/61679701/165461936-88fc303e-bd71-46fd-bff4-1243b13c50f2.mp4

<br>

## 今後の課題
・本番環境での使用端末によって画面レイアウトがずれる点を修正 <br>
・独学でSPAの作成方法を調べながら実装したため、実装力は身についたものの、ベストプラクティスで実装できたか不明なため、より良い実装に近づけていく必要があると感じた。<br>
・現状AWSにFargateとS3の静的ウェブサイトホスティングを用いてデプロイしているが、今後Terraformなどを用いてインフラをコード化したい。<br>
・画面のレスポンシブ対応。<br>
・現状Circle Ci環境を作成したが、テストコードが作成できていないため、各機能に対するテストコードの作成。<br>
・管理者ページの実装。ショップ、ブランドデータの追加や削除処理の実装。<br>
