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

(defun ok-plural--ispell-valid-word-p (word)
  "Return non-nil if WORD exists in the ispell dictionary, nil if not."
  (let ((inhibit-message t)
        (ispell-filter nil)
        check)
    (setq check
          (condition-case nil
              (ispell--run-on-word word)
            ;; Handle "Ispell and its process have different character maps"
            (error
             (progn
               (message "ispell error on word: %s" word)
               nil))))
    (if (eq check t) t nil)))

(defun ok-plural-pluralize (noun)
  "Pluralize given NOUN.
Pluralization is performed using heuristics. If spell
checking (with `ispell') determines that the plural form doesn't
exist, the function returns nil."
  (let* ((pluralized (plural-pluralize noun))
         (check (ok-plural--ispell-valid-word-p pluralized)))
    (if (eq check t)
        pluralized)))

(provide 'ok-plural)
;;; ok-plural.el ends here
