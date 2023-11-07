# PyTorch on Docker
## Overview
Docker で PyTorch 環境を構築する際のテンプレート.
パッケージマネージャーには `poetry` を用いている.

## Get Started
### Build
VSCode Dev Containers で Reopen in Container を実行するだけ.

### Run Python Script
初回のコンテナ起動後に poetry の仮想環境 `.venv/` がプロジェクト直下に作られる. `.venv/bin/python` が Python のパスとなる. `.venv/` を削除してしまった場合はコンテナを再度ビルドすればよい.

Python のコードを実行するには,
```sh
poetry run python <python file>
```
で実行するか,
```sh
make run
```
で `src/main.py` が実行される.

### Add Python Package
ほとんどのライブラリは
```sh
poetry add <package name>
```
で pip と同様にインストールできるはずである. Poetry の詳細は[公式ドキュメント](https://python-poetry.org/docs/basic-usage/)を参照されたい.

## Install PyTorch
本テンプレートでは PyTorch はインストール済みである.

CUDA Version 11.8 に対応した PyTorch を以下のコマンドでインストールした.
```sh
poetry source add torch_cu118 --priority=explicit https://download.pytorch.org/whl/cu118
```
```sh
poetry add torch torchvision torchaudio --source torch_cu118
```

なお, ホストとコンテナの CUDA のバージョンが異なっていても動作した.
