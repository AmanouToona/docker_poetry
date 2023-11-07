# python 環境

vscode の dev container を用いた開発を想定した python の開発環境です。

## 利用手順

### vscode

`Dev Containers` から `Reopen in Container` を実行します。  
もしくは、`Shift + Ctrl + P` でコマンドパレットを開き、`Dev Containers: Reopen in Container` を実行します。  
上記手順で、 Dev Container が実行されます。

### bash

```(bash)
docker compose exec python bash
```

docker container 内で poetry 環境を初期化するP

```(bash)
poetry init
```
