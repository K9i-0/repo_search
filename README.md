# Repo Search

- Repo SearchはGithubのリポジトリを検索できるサンプルアプリです。
- Riverpodを使ったFlutterアプリの例として参考になれば嬉しいです。
- 対応プラットフォームはAndroidとiOSです。

https://user-images.githubusercontent.com/90010509/213586464-7354f4a9-ec54-438d-b3c8-163df3cb3903.mp4

## 使い方

### トークンの設定
Githubの個人アクセストークンを取得して設定する必要があります。
1. [アクセストークンを取得](https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
2. プロジェクトのルートに *.env* という名前でファイルを作り、以下の内容にする
```
GITHUB_ACCESS_TOKEN=取得したアクセストークン
```

### フレーバーに応じた起動
- フレーバーに応じてアプリ名、アイコン等がdev, stg, prod用のものに変わります。また開発中は[devece_preview](https://pub.dev/packages/device_preview)パッケージを有効にする設定があります。
- フレーバー対応は[こちらの記事](https://zenn.dev/altiveinc/articles/separating-environments-in-flutter)を参考にしています。

VS Codeを使う場合は以下の４つが設定されています。いずれかを選んで起動してください。
1. repo_search: 開発用の標準
2. repo_search (with device_preview): device_previewを有効にしつつ開発用にビルド
3. repo_search (profile mode): stg用プロファイルビルド
4. repo_search (release mode): prod用リリースビルド

![SCR-20230120-bwl](https://user-images.githubusercontent.com/90010509/213585600-ec732ee4-78a9-42c1-b02b-8eca8f7cbcd2.png)

Android Studioを使う場合は *.vscode/launch.json* を参考に--dart-defineを設定して起動してください。

### Grinderタスク

- 開発中よく使うコマンドなどをGrinderタスクとして登録しています。[Grinderの解説記事](https://zenn.dev/k9i/articles/bcfa83b08e56d6)
- 登録タスクはgrind -hで確認できます。更新時点のタスク

```
Available tasks:
  up                   CocoaPodsのアップデート(パッケージアプデ時に使う)
  ga                   fluttergenでassetsを生成
  gi                   flutter_launcher_iconsでアイコンを生成
  b                    flutter pub run build_runner build --delete-conflicting-outputs
  gs                   flutter_native_splashでスプラッシュを生成
```

## 機能の説明
主な機能の説明です

### リポジトリ検索
- 入力したキーワードでGithubのリポジトリを検索します。ページングに対応しています。
- 右上のアクションボタンを押すと検索条件を変更できます。

<img src="https://user-images.githubusercontent.com/90010509/213673405-31cac64e-9bc2-4699-869d-eb1e63006cf5.png" width="50%" /><img src="https://user-images.githubusercontent.com/90010509/213673807-de021910-1308-46d4-9b48-17a7b020bfeb.png" width="50%" />

### リポジトリ詳細表示
- 検索結果のItemをタップすることで詳細情報を表示できます。
- 青色になっている部分はボタンで、種類に応じてブラウザでURLを開きます。

<img src="https://user-images.githubusercontent.com/90010509/213674446-8428c860-4b40-4178-89b4-4724bd7dfa40.png" width="50%" /><img src="https://user-images.githubusercontent.com/90010509/213674441-fa1239eb-d929-49f0-b55d-ef5100cbac89.png" width="50%" />

### 設定
- 設定画面でテーマを変更できます。
- また端末の設定に応じて言語が切り替わります。（英語・日本語に対応）

<img src="https://user-images.githubusercontent.com/90010509/213675084-ffb69bbd-7deb-4509-972e-3ed8ad91ed1d.png" width="50%" /><img src="https://user-images.githubusercontent.com/90010509/213675078-e1d540ce-65cf-4aef-b810-653b833579b6.png" width="50%" />


## ディレクトリ構成

lib下は以下の構成です

```
.
├── common
├── features
│   ├── github_repo
│   │   ├── data
│   │   ├── model
│   │   └── ui
│   └── settings
│       ├── data
│       ├── model
│       └── ui
├── main.dart
├── resource
│   ├── assets.gen.dart
│   └── l10n
├── utils
└── widgets
```

フィーチャーファーストな構成になっています。

### lib直下にあるディレクトリの説明

#### commmon
汎用系のクラスなどが入ります。現在はSharedPrecerenceが入っています。
#### features
機能に関するコードが入っています。features内の構成は後述
機能に着目しているので、github_repoディレクトリなどはリポジトリ検索とリポジトリ詳細の2つの画面が入ります。
#### resource
文言やflutter_genで生成したassetsが入っています。
#### utils
extensionなどの便利メソッドが入っています。
#### widgets
汎用Widgetが入っています。意味的にcommonと被りますがこちらはWidget限定です。

### features/xxx下にあるディレクトリの説明

#### data
データの永続化、外部サービスからの取得を担うrepositoryが入っています。
#### model
APIから取得したデータをパースするためのクラス、Notifierが持つ状態のクラスが入っています。
#### ui
画面を構成するWidgetや、Widgetからロジックを切り出したNotifierが入っています。

providerの置き場所に関して、シンプルなデータ取得ならFutureProviderとしてWidgetと同じファイルに記述しています。ある程度複雑な処理（ページングなど）はそれ用のnotifierファイルを作って、providerもそこに記述しています

## 主な利用パッケージ
利用しているパッケージの一部について説明します。

### hooks_riverpod、flutter_hooks

状態管理、DIに[Riverpod](https://docs-v2.riverpod.dev/)をflutter_hooksと合わせて使っています。
コード生成は現状生成待ちのデメリットが大きいと判断して使っていません。

公式がStateNotifierProviderより（Async）NotifierProviderをお勧めしているのでそうしています。

### device_preview、text_style_preview

レイアウト構成を効率化するために[device_preview](https://pub.dev/packages/device_preview)パッケージを使っています。
複数のデバイス・テーマの切り替え・言語切り替えで役立てています。

レイアウト繋がりで、文字サイズの調整に[text_style_preview](https://pub.dev/packages/text_style_preview)パッケージを使っています。

### freezed
APIから取得したJsonをパースするクラスや、イミュータブルな状態用クラスの生成に使っています。


## 影響を受けている記事・リポジトリ

- https://medium.com/flutter-jp/architecture-240d3c56b597
- https://github.com/lichess-org/mobile

