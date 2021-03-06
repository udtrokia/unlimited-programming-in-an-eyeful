;; collect
(defparameter *myset* ())
(adjoin 1 *myset*)
(adjoin 2 *myset*)
(write *myset*)(terpri)
(dotimes (i 11)
	(setf *myset* (adjoin i *myset*)))
(write *myset*)(terpri)(terpri)

;; member
(write (member `zara `(ayan abdul zara riyan nuha)))
(terpri)
(write (member-if #'evenp '(3 7 2 5/3 'a)))
(terpri)
(write (member-if-not #'numberp '(3 7 2 5/3 'a 'b 'c)))
(terpri)(terpri)

;; union
(setq set1 (union `(a b c) `(c d e)))
(setq set2 (union `(#(a b) #(5 6 7) #(f h))
									`(#(5 6 7) #(a b) #(g h))
									))
(setq set3 (union `(#(a b) #(5 6 7) #(f h))
									`(#(5 6 7) #(a b) #(g h))
									))
(write set1)
(terpri)
(write set2)
(terpri)
(write set3)
(terpri)(terpri)

;; intersection
(setq set1 (intersection `(a b c) `(c d e)))
(setq set2 (intersection '(#(a b) #(5 6 7) #(f h)) 
												 '(#(5 6 7) #(a b) #(g h)) :test #'mismatch))
(setq set3 (intersection '(#(a b) #(5 6 7) #(f h)) 
												 '(#(5 6 7) #(a b) #(g h))))

(write set1)
(terpri)
(write set2)
(terpri)
(write set3)(terpri)(terpri)

;; set-difference
(setq set1 (set-difference '(a b c) '(c d e)))
(setq set2 (set-difference '(#(a b) #(5 6 7) #(f h)) 
       '(#(5 6 7) #(a b) #(g h)) :test-not #'mismatch))
(setq set3 (set-difference '(#(a b) #(5 6 7) #(f h)) 
       '(#(5 6 7) #(a b) #(g h))))
(write set1)
(terpri)
(write set2)
(terpri)
(write set3)
