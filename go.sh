#!/usr/local/bin/sbcl --script

(load "~/quicklisp/setup.lisp")
(ql:quickload :aserve)

;; Let's check if the package has already been unpacked
(unless (ensure-directories-exist #p"hyperspec")
(unpack-tarball))

(net.aserve:start :port 5477)

(net.aserve:publish-directory :prefix "/hyperspec/" :destination "./share/doc/clisp-hyperspec/")

(format t "Ready!~%Visit: http://localhost:5477/hyperspec/Front/index.htm~%")
