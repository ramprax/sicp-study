(define (sum-of-squares x y) (+ (square x) (square y)))
(define (square x) (* x x))

(define (lesser-of x y)
  (cond ((< x y) x)
	(else y)))

(define (greater-of x y)
  (cond ((> x y) x)
	(else y)))

(define (f-on-larger-2 f x y z)
  (cond ((and (>= x y) (>= y z)) (f x y))
	((and (<= x y) (<= y z)) (f y z))
	((and (>= x y) (<= y z)) (f x z))
	((and (<= x y) (>= y z)) (f y (greater-of x z)))))

(f-on-larger-2 sum-of-squares 1 2 3)
(f-on-larger-2 sum-of-squares 1 3 2)
(f-on-larger-2 sum-of-squares 2 1 3)
(f-on-larger-2 sum-of-squares 2 3 1)
(f-on-larger-2 sum-of-squares 3 1 2)
(f-on-larger-2 sum-of-squares 3 2 1)
(f-on-larger-2 sum-of-squares 1 1 1)


