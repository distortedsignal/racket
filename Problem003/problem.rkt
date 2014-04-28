#lang racket
(define (divLoop dividend divisor)
  (cond ((> dividend divisor)
         (cond ((= (modulo dividend divisor) 0) 
                (begin 
                  (displayln divisor) 
                  (divLoop (/ dividend divisor) divisor)))
               (else (divLoop dividend (+ divisor 2)))))
        (else (printf "Done: ~a" divisor))))
(define (problemThree bigNum)
  (divLoop bigNum 3))
(problemThree 600851475143)