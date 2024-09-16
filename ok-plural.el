;;; ok-plural.el --- plural for Okome Studio  -*- lexical-binding: t -*-
;;
;; Copyright (C) 2024 Taro Sato
;;
;; Author: Taro Sato <okomestudio@gmail.com>
;; URL: https://github.com/okomestudio/ok-plural.el
;; Version: 0.1
;; Keywords: convenience, spelling
;; Package-Requires: ((emacs "29.1"))
;;
;;; Commentary:
;;; Code:

(require 'ispell)
(require 'plural)

(defun ok-plural-pluralize (noun)
  "Pluralize given NOUN.
Pluralization is performed using heuristics. If spell
checking (with `ispell') determines that the plural form doesn't
exist, the function returns nil."
  (let* ((pluralized (plural-pluralize noun))
         (ispell-filter nil)
         (spell-checked (ispell--run-on-word pluralized)))
    (if (eq spell-checked t)
        pluralized)))

(provide 'ok-plural)
;;; ok-plural.el ends here
