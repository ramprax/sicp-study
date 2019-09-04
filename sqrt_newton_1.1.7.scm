(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt-newton x)
  (sqrt-iter 1.0 x))

(sqrt-newton 9)
(sqrt-newton (+ 100 37))
(sqrt-newton (+ (sqrt-newton 2) (sqrt-newton 3)))
(square (sqrt-newton 1000))

