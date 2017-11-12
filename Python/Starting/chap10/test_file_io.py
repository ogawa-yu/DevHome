import unittest as ut
import os
import shutil

class FileIoTest(ut.TestCase):
    def test_file_exests(self):
        self.assertEqual(os.path.exists('file_open.py'), True)
        self.assertEqual(os.path.exists('./file_open.py'), True)
        self.assertEqual(os.path.exists('/file_open.py'), False)
        self.assertEqual(os.path.exists('../chap1'), True)
        self.assertEqual(os.path.exists('oopsa.txt'), False)
    
    def test_type_check(self):
        self.assertEqual(os.path.isfile('file_open.py'), True)
        self.assertEqual(os.path.isdir('file_open.py'), False)
        self.assertEqual(os.path.isfile('../chap1'), False)
        self.assertEqual(os.path.isdir('../chap1'), True)
        self.assertEqual(os.path.isabs('file_open.py'), False)
        self.assertEqual(os.path.isabs('/test/dummy/path'), True)
    
    def test_copy_file(self):
        self.assertEqual(os.path.exists('ohno.txt'), False)
        shutil.copy('oops.txt', 'ohno.txt')
        self.assertEqual(os.path.exists('ohno.txt'), True)
    
    def test_delete_file(self):
        if (not os.path.exists('ohno.txt')):          
            shutil.copy('oops.txt', 'ohno.txt')
        os.remove('ohno.txt')
        self.assertEqual(os.path.exists('ohno.txt'), False)
    
    def test_rename_file(self):
        if (not os.path.exists('renamee.txt')):          
            shutil.copy('oops.txt', 'renamee.txt')
        os.rename('renamee.txt', 'renamed.txt')
        self.assertEqual(os.path.exists('renamee.txt'), False)
        self.assertEqual(os.path.exists('renamed.txt'), True)
        
if __name__ == '__main__':
    if (not os.path.exists('oops.txt')): 
        fout = open('oops.txt', 'wt')
        print('Oops, I created a file', file=fout)
        fout.close()
    ut.main()