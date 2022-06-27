```sh
dune build --profile release
```
to build with an unused variable `unused` in `bin/main.ml`.

For demonstration, the built project can be run:
```sh
_build/default/bin/main.exe <test.txt
```

```sh
reanalyze.exe -dce-cmt _build
```
emits false alarms for `Lang` module and `Const` constructor, while
```sh
cd _build/default && reanalyze.exe -dce-cmt .
```
(correctly) warns only for the `unused` variable.
