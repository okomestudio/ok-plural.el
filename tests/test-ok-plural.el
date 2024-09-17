;;; test-ok-plural.el --- Tests for ok-plural.el  -*- lexical-binding: t -*-
;;
;; Package-Requires: ((buttercup))
;;
;;; Code:

(require 'buttercup)
(require 'ok-plural)

(describe "ok-plural"
  :var (result)
  (before-all
    ;; FIXME: This actually fail, but initializes ispell process
    ;; correctly; find a proper way to initialize ispell process
    (ispell-word))

  (it "returns a plural noun for a valid word"
    (setq result (ok-plural-pluralize "apple"))
    (expect result :to-equal "apples"))

  (it "returns nil for an invalid word"
    (setq result (ok-plural-pluralize "foobarbaz"))
    (expect result :to-equal nil)))
