print('abc' + 'def')

print("ABC" "DEF")

print('abc' 'def')

print("ABC" + "DEF")

# 5回繰り返す
str_ = 'abc' * 5
print(str_)

#文字列の長さを取得する
print(len(str_))

#キーワードによる文字列の分割
media = 'CD,DVD,MD,LD,BD'
mediaList = media.split(',')
print(mediaList)

#文字列リストの結合
print(':'.join(mediaList))

# 全て小文字
print(media.lower())

#title case
print(media.title())

#swap case
print(media.title().swapcase())

# capitalize
print(media.capitalize())

#centering
print(media.center(20))

#right align
print(media.rjust(20))

#left align
print(media.ljust(20))

# 文字列の置換(マッチするのは最初の一回だけ)
print(media.replace('D', 'DR', 1))