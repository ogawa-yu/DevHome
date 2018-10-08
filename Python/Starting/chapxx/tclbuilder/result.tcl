set materials [list /org/ /sil/ /ox/]

set param1_attr1s [list 1 4 10]

set param1_attr2s [list 2 3 20]

set param2_attr1s [list 3 2 30]

set param2_attr2s [list 4 1 40]

foreach m $materials p1a1 $param1_attr1s p1a2 $param1_attr2s {
    set l [join [list $m ":" $p1a1 "," $p1a2]]
    puts $l
}

foreach mo $materials p2a1 $param2_attr1s {
    foreach mi $materials p2a2 $param2_attr2s {
        set m_prod [join [list $mo "+" $mi "+" $p2a1 "=" $mi "+" $mo "+" $p2a2]]
        puts $m_prod
    }
}