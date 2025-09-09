;= country_list("Ethiopia", "Kenya", "Sudan","Djibouti")
; append a new country in the country_list
;!country_list

;= append(country_list, "Eritrea")
; print the updated country_list

;!country_list

;(= (number_list($x $y $z $a))($x $y $z $a))
;!(number_list (1 2 3 4))

;(= (country_list($x $y $z $a))($x $y $z $a))
;!(country_list ("Ethiopia" "Kenya" "Sudan" "Djibouti"))

; append a new country in the country_list
;(= (append(country_list, $new_country))($x $y $z $a $new_country))
;!(append(country_list, "Eritrea"))


; Define a list of countries as one fact
(= (country_list $x) (Ethiopia Kenya Djibouti Sudan))
;!(country_list r)

;(= (append $x $y) ($x $y))
(= (append((= (country_list $x) (Ethiopia Kenya Djibouti Sudan)) $new)) ($x $new))



!(append((country_list r) Eritrea))
;!(append 1 2)