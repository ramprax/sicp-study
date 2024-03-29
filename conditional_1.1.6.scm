(define (abs-cond x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))
(abs-cond 10)
(abs-cond -10)
(abs-cond 0)

(define (abs-cond-else x)
  (cond ((< x 0) (- x))
	(else x)))
(abs-cond-else 10)
(abs-cond-else -10)
(abs-cond-else 0)

(define (abs-if x)
  (if (< x 0)
      (- x)
      x))
(abs-if 10)
(abs-if -10)
(abs-if 0)

(define (between x a b)
  (and (> x a) (< x b)))
(between 7 5 10)

(define (ge-or x y) (or (> x y) (= x y)))
(define (ge-not x y) (not (< x y)))
(ge-not 1 2)
(ge-or 1 2)

