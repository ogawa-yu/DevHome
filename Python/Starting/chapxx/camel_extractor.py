import re

text = "getCamelCaseSplittedText"

result = [x for x in re.split('([a-z]+)([A-Z][a-z]+)|([A-Z][a-z]+)', text) if x is not None and x != '']

print(result)
