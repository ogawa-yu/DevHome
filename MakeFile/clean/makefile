#
# 擬似ターゲットの例(make clean)
# 実際の生成物の名称を示していないターゲットを
# Phony Targett呼ぶ。
# GNU MakeではPhonyTargetを明示化することで、
# 実際には何の依存関係もなくいつでも実行できる
# ターゲットに指定することができる。
#
prog.o : test.c
	gcc -c test.c

.PHONY: all clean
all: 
	@sh ./all.sh
clean:
	@rm -f *.o


