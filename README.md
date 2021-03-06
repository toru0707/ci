CI環境構築プロジェクト

## 概要

jenkins, geard, gitlab, ircを設定し、CIが回る環境をセットアップする。

## インストール

### 1. Vagrant pluginのインストール

```
vagrant plugin install vagrant-omnibus
```

### 2. Cookbookのインストール

```
berks vendor cookbooks
```

### 3. セットアップ

```
vagrant up
```

## 設定

### Jenkinsサーバ

### Gitlabサーバ

## トラブルシュート

### Q: gitlabのインストール中に以下のエラーが発生する

``` 
================================================================================
Error executing action `run` on resource 'execute[gitlab-bundle-install]'
================================================================================


Mixlib::ShellOut::ShellCommandFailed
------------------------------------
Expected process to exit with [0], but received '17'
---- Begin output of /srv/git/bin/bundle install --deployment --without development test postgres aws && touch /srv/git/gitlab/vendor/bundle/.success ----
STDOUT: Fetching source index from https://rubygems.org/
```

### A: httpsの通信が出来ていないので、gemの取得先をhttpにしましょう

具体的には、以下の様にhttpスキーマでgemfileを取得するように修正を加えます。

/srv/git/gitlab/Gemfile
```
source "http://rubygems.org"
```
