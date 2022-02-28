; ---------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; ---------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI

; Nama Fungsi                                                         dua(v x)

; dua : integer --> boolean
; {dua (v x) menentukan nilai yang lebih besar antara value v dan x}

; Nama Fungsi                                                         tiga(v x y)

; tiga : integer --> boolean
; {tiga (v x y) menentukan nilai yang lebih besar antara value v, x dan y}

; Nama Fungsi                                                        empat (v x y z)

; empat : integer --> boolean
; {empat (v x y z) menentukan nilai yang lebih besar antara value v, x, ydan z}

; Nama Fungsi                                                         max2()

; max2 : integer --> integer
; {max2() memberikan pertanyaan untuk (dua)}

; Nama Fungsi                                                         max3()

; max : integer --> integer
; {max3() memberikan pertanyaan untuk (tiga)}

; Nama Fungsi                                                         max4()

; max4 : integer --> integer
; {max4() memberikan pertanyaan untuk (empat)}
; ---------------------------------------------------------------------------------
; REALISASI LISP

(defun max2()
    (princ "Masukkan angka pertama: ")
    (setq v (read))
    (princ "Masukkan angka kedua: ")
    (setq x (read))
    (dua v x)
)

(defun max3()
    (princ "Masukkan angka pertama: ")
    (setq v (read))
    (princ "Masukkan angka kedua: ")
    (setq x (read))
    (princ "Masukkan angka ketiga: ")
    (setq y (read))
    (tiga v x y)
)

(defun max4()
    (princ "Masukkan angka pertama: ")
    (setq v (read))
    (princ "Masukkan angka kedua: ")
    (setq x (read))
    (princ "Masukkan angka ketiga: ")
    (setq y (read))
    (princ "Masukkan angka keempat: ")
    (setq z (read))
    (empat v x y z)
)
(defun dua (v x)
    (cond 
        ((> v x) v)
        (t x)
    )
)

(defun tiga (v x y)
    (cond
        ((> (dua v x) y) (dua v x))
        (t y)
    )
)

(defun empat (v x y z)
    (cond
        ((> (tiga v x y) z) (tiga v x y))
        (t z)
    )
)

; ---------------------------------------------------------------------------------
; APLIKASI

; --> (empat 2 3 8 6)
;       8
; --> (empat 34 55 33 20)
;       55
; ---------------------------------------------------------------------------------