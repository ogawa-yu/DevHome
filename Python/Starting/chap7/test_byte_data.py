import unittest as ut
import struct

class TestByteData(ut.TestCase):
    def test_struct_endian_unsigned_short(self):
        self.assertEqual(struct.pack('>H', 154), b'\x00\x9a')
        self.assertEqual(struct.pack('<H', 154), b'\x9a\x00')

    def test_struct_endian_unsigned_int(self):
        self.assertEqual(struct.pack('>I', 154), b'\x00\x00\x00\x9a')
        self.assertEqual(struct.pack('<I', 154), b'\x9a\x00\x00\x00')

    def test_struct_endian_unsigned_long(self):
        self.assertEqual(struct.pack('>L', 154), b'\x00\x00\x00\x9a')
        self.assertEqual(struct.pack('<L', 154), b'\x9a\x00\x00\x00')

    def test_struct_endian_unsigned_long_long(self):
        self.assertEqual(struct.pack('>Q', 154), b'\x00\x00\x00\x00\x00\x00\x00\x9a')
        self.assertEqual(struct.pack('<Q', 154), b'\x9a\x00\x00\x00\x00\x00\x00\x00')

if __name__ == '__main__':
    ut.main()