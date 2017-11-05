import unittest

class TestPractice(unittest.TestCase):
    def test_practice(self):
        biarth_years_since_five_years_old = []
        year = 1990
        while (year <= 1995):
            biarth_years_since_five_years_old.append(year)
            year += 1
        
        # [3-1]5歳までのリストを作成せよ
        self.assertEqual(biarth_years_since_five_years_old, [1990, 1991, 1992, 1993, 1994, 1995])
        # [3-2] 3歳の時の年を取得せよ
        self.assertEqual(biarth_years_since_five_years_old[3], 1993)
        # [3-3] 最も年長である年を取得せよ
        self.assertEqual(biarth_years_since_five_years_old[-1:][0], 1995)
        # [3-4] "モッツァレラ", "シンデレラ", "サルモネラ"を要素にもつリストを作成せよ
        things = ['mozzarella', 'cinderella', 'salmonella']
        # [3-5] things要素内で、人間の要素を参照している文字列の先頭を大文字にして表示せよ
        self.assertEqual(things[1].capitalize(), 'Cinderella')
        self.assertEqual(things, ['mozzarella', 'cinderella', 'salmonella'])
        # [3-6] things要素内で、チーズの要素を全て大文字にして表示せよ
        self.assertEqual(things[0].upper(), 'MOZZARELLA')
        self.assertEqual(things, ['mozzarella', 'cinderella', 'salmonella'])
        # [3-7] things要素内で、病気の要素を削除し、ノーベル賞受賞を表示せよ
        del things[2]
        things.append('nobel laureate')
        self.assertEqual(things, ['mozzarella', 'cinderella', 'nobel laureate'])
        # [3-8] surpriseリストを作成せよ
        surprise = ['Groucho', 'Chico', 'Harpo']
        # [3-9] surpriseリストの最後の要素を小文字にして、逆順にしてから先頭文字を大文字に戻せ
        surprise[2] = surprise[2].lower()
        self.assertEqual(surprise, ['Groucho', 'Chico', 'harpo'])
        surprise.reverse();
        self.assertEqual(surprise, ['harpo', 'Chico', 'Groucho'])
        surprise[0] = surprise[0].capitalize()
        self.assertEqual(surprise, ['Harpo', 'Chico', 'Groucho'])
        # [3-10] 英仏辞書e2fを作成せよ
        e2f = {
            'dog': 'chien',
            'cat': 'chat',
            'walrus': 'mouse'
        }
        self.assertEqual('dog' in e2f, True)
        self.assertEqual('cat' in e2f, True)
        self.assertEqual('walrus' in e2f, True)
        # [3-11] walrusに対応する単語を表示せよ
        self.assertEqual(e2f['walrus'], 'mouse')
        # [3-12] e2fからf2eの辞書を作成せよ
        f2e = dict()
        for item in e2f.items():
            f2e[item[1]] = item[0]
        self.assertEqual('chien' in f2e, True)
        self.assertEqual('chat' in f2e, True)
        self.assertEqual('mouse' in f2e, True)
        # [3-13] chienに対応する文字列を表示せよ
        self.assertEqual(f2e['chien'], 'dog')
        # [3-14] 英単語のみの集合を作成せよ
        english = e2f.keys()
        self.assertEqual(english, {'dog', 'cat', 'walrus'})
        # [3-15]
        life = {
            'animals': {
                'cats': ['Henri', 'Grumpy', 'Lucy'],
                'octopi': {},
                'emus': {}
            },
            'plants': {},
            'other': {}
        }
        self.assertEqual(life['animals']['cats'], ['Henri', 'Grumpy', 'Lucy'])
        # [3-16]
        self.assertEqual(life.keys(), {'animals', 'plants', 'other'})



if __name__ == '__main__':
    unittest.main()
        