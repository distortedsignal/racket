#lang racket
(define (fb n m)
    (if (<= n m)
        (begin
          (cond ((= (modulo n 15) 0) (displayln "Fizzbuzz"))
                ((= (modulo n 5) 0) (displayln "Buzz"))
                ((= (modulo n 3) 0) (displayln "Fizz"))
                (else (displayln n)))
          (fb (+ n 1) m))
        (displayln "Done!")))
(define (fizzbuzz m)
    (fb 1 m))
(fizzbuzz 100)