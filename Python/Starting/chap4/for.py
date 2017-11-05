import unittest

class TestFor(unittest.TestCase):
    def test_range_based_for(self):
        testee = ['yamada', 'tanaka', 'yamamoto']
        for data in testee:
            self.assertEqual(data in testee, True)
        
    def test_for_zip(self):
        days = ['Monday', 'Tuesday', 'Wednesday']
        fruits = ['banana', 'orange', 'peach']
        drinks = ['coffee', 'tea', 'beer']
        desserts = ['tiramisu', 'ice cream', 'pie', 'pudding']
        actuals = list()
        for day, fruit, drink, dessert in zip(days, fruits, drinks, desserts):
            actuals.append(day + ': drink ' + drink + '- eat ' + fruit + '- enjoy ' + dessert)
        self.assertEqual(actuals[0], 'Monday: drink coffee- eat banana- enjoy tiramisu')
        self.assertEqual(actuals[1], 'Tuesday: drink tea- eat orange- enjoy ice cream')
        self.assertEqual(actuals[2], 'Wednesday: drink beer- eat peach- enjoy pie')
        self.assertEqual(len(actuals), 3)

    def test_for_range(self):
        actual = []
        for x in range(0, 5):
            actual.append(x)

        self.assertEqual(actual, [0,1,2,3,4])
    
    def test_list_comprehension_notation(self):
        actual = [number for number in range(1, 6)]
        self.assertEqual(actual, [1,2,3,4,5])
    
    def test_list_comprehension_notation_another_expression(self):
        actual = [number - 1 for number in range(1, 6)]
        self.assertEqual(actual, [0,1,2,3,4])
    
    def test_list_comprehension_notation_use_if_condition(self):
        actual = [number for number in range(1, 6) if number % 2 == 0]
        self.assertEqual(actual, [2,4])
    
    def test_list_comprehension_notation_multi_for(self):
        rows = range(1, 4)
        cols = range(1, 3)
        cells = [(row, col) for row in rows for col in cols]
        self.assertEqual(cells, [(1,1), (1,2), (2,1), (2,2), (3,1), (3,2)])

    def test_dict_comprehension_notation(self):
        word = 'letters'
        actual = {letter: word.count(letter) for letter in set(word)}
        self.assertEqual(actual, {'l': 1, 'e': 2, 't': 2, 'r': 1, 's': 1})
    
    
    def echo(self, anything):
        return anything + ' ' + anything
    
    def test_echo(self):
        self.assertEqual(self.echo('test'), 'test test')
    
    def menu(self, wine, entree, dessert='none'):
        return {'wine': wine, 'entree': entree, 'dessert': dessert}

    def test_menu_positioned_parameter(self):
        self.assertEqual(self.menu('red', 'beaf', 'ice cream'), 
                {
                    'wine': 'red',
                    'entree': 'beaf',
                    'dessert': 'ice cream'
                })
    
    def test_menu_keyworded_parameter(self):
        self.assertEqual(self.menu(entree='beaf', wine='red', dessert='ice cream'), 
                {
                    'wine': 'red',
                    'entree': 'beaf',
                    'dessert': 'ice cream'
                })
    def test_menu_use_default_parameter(self):
        self.assertEqual(self.menu(entree='beaf', wine='red'), 
                {
                    'wine': 'red',
                    'entree': 'beaf',
                    'dessert': 'none'
                })
    
    def tupled_parameters(self, *args):
        return args

    def test_tupled_parameter(self):
        self.assertEqual(self.tupled_parameters(1, 2, 'c'), (1, 2, 'c'))

    def dicted_parameters(self, **kwargs):
        return kwargs

    def test_dicted_parameter(self):
        self.assertEqual(self.dicted_parameters(one=1, two=2, three='c'),
            {
                'one': 1,
                'two': 2,
                'three': 'c'
            })
    
    def enclosing_function(self, a, b):
        def inner_function(c, d):
            return c + d
        return inner_function(a, b)
    
    def test_enclosing_function(self):
        self.assertEqual(self.enclosing_function(3, 5), 8)

    def enclosing_function_with_closure(self, a, b):
        def inner_function():
            return a * b
        return inner_function()
    
    def test_enclosing_function_with_closure(self):
        self.assertEqual(self.enclosing_function_with_closure(3, 5), 15)

    def edit_words(self, words, func):
        result = [func(word) for word in words]
        return result
    
    def test_edit_words_using_lambda_function(self):
        self.assertEqual(self.edit_words(['tanaka', 'honda'],
                                        lambda word: word.capitalize()),
                         ['Tanaka', 'Honda'])
    
if __name__ == '__main__':
    unittest.main()
