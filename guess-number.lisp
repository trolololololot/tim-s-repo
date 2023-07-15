(defparameter *big* 100) ;upper limit of the binary search
(defparameter *small* 1) ;lower one

(defun guess-my-number () (ash (+ *small* *big*) -1)) ;эту функцию надо запустить чтобы игра началась

(defun smaller () (setf *big* (1- (guess-my-number)))(guess-my-number)) ;это скажет игре что загаданное число меньше чем то что предложила программа

(defun bigger () (setf *small* (1+ (guess-my-number)))(guess-my-number)) ;это - если больше

(defun start-over () (defparameter *small* 1)(defparameter *big* 100)(guess-my-number)) ; эта функция обнуляет переменные в наушниках чтобы игра началась сначала

