# ok-plural.el

Pluralize English nouns in Emacs.

The `ok-plural.el` package wraps Aaron Hawley's
[plural.el](https://www.emacswiki.org/emacs/PluralizeEnglish) to programatically pluralize
an English noun in Emacs Lisp.

The enhancement over the original version, which implement rudimentary pluralization using
simple logic and dictionary, is that this package uses Emacs's `ispell` to check if the
pluralized word actually exists.

## Install

``` emacs-lisp
(use-package ok-plural
  :straight (:host github :repo "okomestudio/ok-plural.el"))
```

## Usage

``` emacs-lisp
(require 'ok-plural)

(ok-plural-pluralize "apple")      ; -> "apples"
(ok-plural-pluralize "foobarbaz")  ; -> nil (the word doesn't exist)
```
