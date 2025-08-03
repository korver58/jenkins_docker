# Jenkins Configuration

このリポジトリは、Docker Compose を使用して Jenkins 環境を構築・管理するためのものです。

- `Dockerfile`, `docker-compose.yml`: Jenkinsコントローラーの定義
- `jenkins_home/`: Jenkinsのホームディレクトリ（マウント用）
- `plugins.txt`: インストールするJenkinsプラグインのリスト
- `casc.yaml`: Jenkins Configuration as Code (JCasC) による設定ファイル
- `agent_windows/`: Windowsエージェントのセットアップ用スクリプト
- `ci-cd/`: パイプラインのサンプル (`Jenkinsfile`)

## セットアップ

初回セットアップ時に、ホスト側で以下のスクリプトを実行して `jenkins_home` ディレクトリの権限を設定します。

```bash
sh setup.sh
```

以下のコマンドでJenkinsを起動します。

```bash
docker compose build
docker compose up -d
```

## 閲覧制限
### フォルダ作成
  - 例：　team1 / team2

### Manage and Assign Roles
- Permission template作成
  - 認証情報アクセスとそれ以外の2つ程度
- Manage Roles
  - Global roles
    - 全体Readできるuser追加
  - Item roles
    - ^team-a/.*
  - Authenticated Usersに

## 参考リンク
- [Jenkins の HTML Publisher Plugin の設定](https://yufutech.hatenablog.com/entry/2021/03/07/201536)
