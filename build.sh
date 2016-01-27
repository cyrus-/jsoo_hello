#!/bin/sh

ocamlbuild -use-ocamlfind \
  -pkg js_of_ocaml \
  -pkg tyxml -pkg \
  js_of_ocaml.tyxml hello.byte ;

js_of_ocaml +weak.js -o hello.js hello.byte
