#!/bin/bash

cd ~

# 削除ファイル
rm -rf .config

# 既存ファイル、フォルダがある場合にクローンしたいときの処理
git init
git remote add origin https://github.com/ynny-github/Home-Env.git
git fetch origin
git merge origin/main

