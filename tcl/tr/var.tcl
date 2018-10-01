# リストの作成
set arr_a [list /org/ /sil/ /ox/]
set arr_b [list 1 3 5]

# リスト全体の要素を参照
puts $arr_a

# 先頭の要素を参照
puts [lindex $arr_a 0]

# リスト全体に対する操作
foreach ea $arr_a  eb $arr_b {
    append d $ea hoge
    puts $d
    puts $eb
    unset d
}

