# PyTorch on Docker
## Overview
Docker で PyTorch 環境を構築する際のテンプレート.

## Install PyTorch
CUDA Version 12.1 に対応した PyTorch を以下のコマンドでインストールした.
```sh
poetry source add torch_cu121 --priority=explicit https://download.pytorch.org/whl/cu121
```
```sh
poetry add torch torchvision torchaudio --source torch_cu121
```
