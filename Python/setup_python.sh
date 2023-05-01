#!/bin/bash
echo "このシェルスクリプトは $ source setup_python.sh で実行してください"

# INSTALL PYENV
sudo apt update
sudo apt install -y git git curl build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

git clone https://github.com/pyenv/pyenv.git

echo 'export PYENV_ROOT="$HOME/pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
source ~/.bashrc
pyenv -v

# INSTALL PYTHON3.9 WITH PYENV
pyenv install 3.10.9
pyenv versions
pyenv global 3.10.9

# INSTALL POETRY
# curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
# echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc
pip install poetry
poetry config virtualenvs.in-project
