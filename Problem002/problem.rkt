#lang racket
(define (evenizer n)
  (cond ((= (modulo n 2) 0) n)
        (else 0)))
(define (evenFibSum lowFib highFib sum limit)
  (let* ([nextFib (+ lowFib highFib)])
  (cond ((> nextFib limit) (displayln sum))
        (else (evenFibSum highFib nextFib (+ sum (evenizer nextFib)) limit)))))
(define (problemTwo max)
  (evenFibSum 0 1 0 max))
(problemTwo 4000000)