# gobbm
go template for my go applications

```sh
$ make bootstrap
...
```

To compile a development version of XXXX, run `make` or `make dev`. This will
put the specific binary in the `bin` and `$GOPATH/bin` folders:

```sh
$ make dev
...
$ bin/vault
...
```

To run tests, type `make test`. Note: this requires Docker to be installed. If
this exits with exit status 0, then everything is working!

```sh
$ make test
...
```

