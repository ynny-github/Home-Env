#!/bin/bash

cd ~

# 削除ファイル
mv .config tmp-config

# 既存ファイル、フォルダがある場合にクローンしたいときの処理
git init
git remote add origin https://github.com/ynny-github/Home-Env.git
git fetch origin
git merge origin/main
git branch -M main

# 管理しているものを削除
rm -rf tmp-config/fish
rm -rf tmp-config/git
rm -rf tmp-config/micro

cp -r tmp-config/* .config

rm -rf tmp-config
