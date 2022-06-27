```sh
dune build --profile release
```
to build with an unused variable `unused` in `bin/main.ml`.

```sh
reanalyze.exe -dce-cmt _build
```
emits false alarms for `Lang` module and `Const` constructor, while
```sh
cd _build/default && reanalyze.exe -dce-cmt .
```
(correctly) warns only for the `unused` variable.
