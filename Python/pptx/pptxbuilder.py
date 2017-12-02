from pptx import Presentation

class PptxBuilder:
    def __init__(self, file_name):
        self.__prs = Presentation()
        self.__file_name = file_name

    def make_title(self, title_text, subtitle_text):
        title_slide_layout = self.__prs.slide_layouts[0]
        slide = self.__prs.slides.add_slide(title_slide_layout)

        title = slide.shapes.title
        subtitle = slide.placeholders[0]

        title.text = title_text
        subtitle.text = subtitle_text

    def make_bullet(self):
        yield
    
    def save(self):
        self.__prs.save(self.__file_name)
