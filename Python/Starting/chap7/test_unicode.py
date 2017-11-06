import unittest as ut
import unicode_lib as uc

class TestUnicode(ut.TestCase):
    def __test_unicode(self, input_val, expected_name, expected_value):
        name, value = uc.to_unicode(input_val)
        self.assertEqual(name, expected_name)
        self.assertEqual(value, expected_value)

    def test_unicode_ascii_large_a(self):
        self.__test_unicode('A', 'LATIN CAPITAL LETTER A', 'A')
    
    def test_unicode_ascii_dollar_sign(self):
        self.__test_unicode('$', 'DOLLAR SIGN', '$')

    def test_unicode_cent_sign(self):
        self.__test_unicode('\u00a2', 'CENT SIGN', '\u00a2')

    def test_unicode_snowman(self):
        self.__test_unicode('\u2603', 'SNOWMAN', '\u2603')
    
    def test_encode_snowman_to_utf8(self):
        encoded_snowman = '\u2603'.encode('utf-8')
        self.assertEqual(len(encoded_snowman), 3)
        self.assertEqual(encoded_snowman, b'\xe2\x98\x83')

    def test_encode_snowman_to_ascii_with_ignore(self):
        encoded_snowman = '\u2603'.encode('ascii', 'ignore')
        self.assertEqual(len(encoded_snowman), 0)
        self.assertEqual(encoded_snowman, b'')

    def test_encode_snowman_to_ascii_with_replace(self):
        encoded_snowman = '\u2603'.encode('ascii', 'replace')
        self.assertEqual(len(encoded_snowman), 1)
        self.assertEqual(encoded_snowman, b'?')

    def test_decode_snowman_from_utf_8(self):
        encoded_snowman = '\u2603'.encode('utf-8')
        decoded_snowman = encoded_snowman.decode('utf-8')
        self.assertEqual(decoded_snowman, '\u2603')

if __name__ == '__main__':
    ut.main()
