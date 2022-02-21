; ---------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; ---------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI
; Nama Fungsi                                                        max4 (v x y z)

; max2 : integer --> boolean
; {max2 (v x) menentukan nilai yang lebih besar antara value v dan x}

; max3 : integer --> boolean
; {max3 (v x y) menentukan nilai yang lebih besar antara value v, x dan y}

; max4 : integer --> boolean
; {max4 (v x y z) menentukan nilai yang lebih besar antara value v, x, ydan z}
; ---------------------------------------------------------------------------------
; REALISASI LISP

(defun max2 (v x)
    (cond 
        ((> v x) v)
        (t x)
    )
)

(defun max3 (v x y)
    (cond
        ((> (max2 v x) y) (max2 v x))
        (t y)
    )
)
(defun max4 (v x y z)
    (cond
        ((> (max3 v x y) z) (max3 v x y))
        (t z)
    )
)

; ---------------------------------------------------------------------------------
; APLIKASI

; --> (max4 2 3 8 6)
;       8
; --> (max4 34 55 33 20)
;       55
; ---------------------------------------------------------------------------------