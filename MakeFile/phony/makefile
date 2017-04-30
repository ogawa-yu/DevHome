#
# 擬似ターゲットの例
# 実際の生成物の名称を示していないターゲットを
# Phony Targett呼ぶ。
# GNU MakeではPhonyTargetを明示化することで、
# 実際には何の依存関係もなくいつでも実行できる
# ターゲットに指定することができる。
# また、10行目のコマンドでは、sizeという実際には空のターゲット
# を使うことによって、test.oが更新された場合にのみ、testを構築するようになる
#
test: size test.o
	$(CC) $(LDFLAGS) -o $@ $^

test.o : test.c
	gcc -c test.c

size: test.o
	size $^
	touch size

.PHONY: all clean
all: 
	@sh ./all.sh
clean:
	@rm -f *.o
