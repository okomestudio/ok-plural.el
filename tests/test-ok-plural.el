;;; test-ok-plural.el --- Tests for ok-plural.el  -*- lexical-binding: t -*-
;;
;; Package-Requires: ((buttercup))
;;
;;; Code:

(require 'buttercup)
(require 'ok-plural)

(describe "ok-plural"
  :var (result)
  (it "returns a plural noun for a valid word"
    ;; FIXME: This test case really fails due to "There is no Ispell
    ;; process running!"
    (setq result (ok-plural-pluralize "apple"))
    (expect result :to-equal "apples"))

  (it "returns nil for an invalid word"
    (setq result (ok-plural-pluralize "foobarbaz"))
    (expect result :to-equal nil)))
