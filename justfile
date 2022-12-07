setup-python-environment:
    #!/usr/bin/env bash
    pipx install pip-tools
    python -m venv .venv_try-duckdb
    source .venv_try-duckdb/bin/activate
    python -m pip install --upgrade pip
    pip-compile requirements-dev.in
    pip install -r requirements-dev.txt
    ipython kernel install --name ".venv_try-duckdb" --user
    echo  
    echo source .venv_try-duckdb/bin/activate
    echo 