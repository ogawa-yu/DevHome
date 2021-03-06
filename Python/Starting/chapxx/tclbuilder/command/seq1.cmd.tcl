set materials %materials%

set param1_attr1s %materials.param1.attr1%

set param1_attr2s %materials.param1.attr2%

set param2_attr1s %materials.param2.attr1%

set param2_attr2s %materials.param2.attr2%

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