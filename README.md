# sorting-algo-func.pl

🦪🦪🦪 Perlで整列アルゴリズムを実装するための関数群です。  

## 実装したアルゴリズム

- [x] バブルソート
- [x] 選択ソート
- [x] 挿入ソート
- [x] マージソート
- [x] クイックソート
- [x] ヒープソート
- [x] シェルソート
- [x] カウントソート

## 実行方法

```shell
docker build -t sorting-algo-func-pl .
docker run -it --rm --name my-sorting-algo-func-pl sorting-algo-func-pl
```

## 開発用設定

DevContainerを使用してコンテナ内に入ります。  
以下のコマンドを実行してインクルードパスを設定します。  

```shell
export PERL5LIB=/workspaces/sorting-algo-func.pl/app
```

`perl`コマンドで実行します。  

```shell
perl ./app/main.pl
```
