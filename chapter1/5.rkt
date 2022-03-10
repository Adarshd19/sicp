; Application order evaluates arguments in the test procedure -> 0 (p)
; (p) evaluates to (p) an infinite recursive loop

; Normal order evaluates by fully expand and reduce 
; (test 0 (p)) -> (if (= 0 0) 0 (p))) -> 0
; Here evaluation of (p) does not happen