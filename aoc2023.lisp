(defpackage #:aoc2023
  (:use :cl))

(in-package #:aoc2023)

(ql:quickload "dexador")

(defparameter token (uiop:getenv "AOC_TOKEN"))

(defun get-input (token year day)
  (let ((url (format nil "https://adventofcode.com/~s/day/~s/input" year day)))
    (handler-case (dex:get url :headers '(("Cookie" . token)))
      (dex:http-request-bad-request ()
	(princ "request failed")))))


