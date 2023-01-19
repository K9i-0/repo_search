# Repo Search

Repo SearchはGithubのリポジトリを検索できるサンプルアプリです。

Riverpodを使ったFlutterアプリの例として参考になれば嬉しいです。

対応プラットフォームはAndroidとiOSです。

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
フレーバーに応じてアプリ名、アイコン等がdev, stg, prod用のものに変わります。また開発中は[devece_preview](https://pub.dev/packages/device_preview)パッケージを有効にする設定があります。フレーバー対応は[こちらの記事](https://zenn.dev/altiveinc/articles/separating-environments-in-flutter)を参考にしています。

VS Codeを使う場合は以下の４つが設定されています。いずれかを選んで起動してください。
1. repo_search: 開発用の標準
2. repo_search (with device_preview): device_previewを有効にしつつ開発用にビルド
3. repo_search (profile mode): stg用プロファイルビルド
4. repo_search (release mode): prod用リリースビルド

![SCR-20230120-bwl](https://user-images.githubusercontent.com/90010509/213585600-ec732ee4-78a9-42c1-b02b-8eca8f7cbcd2.png)

Android Studioを使う場合は *.vscode/launch.json* を参考に--dart-defineを設定して起動してください。
