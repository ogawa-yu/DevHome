import pptxbuilder as ppt

if __name__ == '__main__':
    pptx = ppt.PptxBuilder('hello.pptx')
    pptx.make_title('Hello world!', 'python-pptx was here!')
    pptx.make_bullet()
    pptx.save()
