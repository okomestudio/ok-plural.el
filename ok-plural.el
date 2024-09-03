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

(require 'plural)

(defun ok-plural-pluralize (noun)
  (plural-pluralize noun))

(provide 'ok-plural)
;;; ok-plural.el ends here
