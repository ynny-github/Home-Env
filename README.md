# HOME Enviroment for Linux

## How to init ?
curl を用いた方法
```
curl -L https://raw.githubusercontent.com/ynny-github/Home-Env/main/init.sh | bash
```

## Mustn't
+ .config/fish/conf.d を追跡する

## 現在の管理方法
Home ディレクトリに .git を配置し、すべてのファイル、ディレクトリを exclude に設定

git add -f で管理、共有したいファイルのみ git で追跡している

### fish　でデバイス固有の設定を追加したい
.config/fish/conf.d/に *.fish で追加すればいい

### 参考にした情報
https://wiki.archlinux.jp/index.php/%E3%83%89%E3%83%83%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB