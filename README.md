# fastapp


### SETUP
1) create `.env` file following the `.envexample`
2) spin the app inside docker
```shell
$ docker-compose up -d --build
```

#### Local environment setup:

If you have JetBrains licence you could just use 
[docker](https://www.jetbrains.com/help/pycharm/using-docker-compose-as-a-remote-interpreter.html)
environment in Pycharm.

Otherwise:
1) ensure you have [poetry](https://python-poetry.org/docs/#installing-with-the-official-installer) 
package manager installed 
2) install dependencies
```shell
$ poetry install
```
3) activate venv
```shell
$ poetry shell
```
4) to deactivate venv run
```shell
$ deactivate
```
