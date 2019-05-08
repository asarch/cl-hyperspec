#!/usr/local/bin/sbcl --script

(load "~/quicklisp/setup.lisp")
(ql:quickload :aserve)

;; Let's check if the package has already been unpacked
(unless (ensure-directories-exist #p"hyperspec")
(unpack-tarball))

