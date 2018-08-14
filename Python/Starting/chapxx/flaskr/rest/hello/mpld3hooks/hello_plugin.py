from mpld3 import utils, plugins

class JavascriptPlugin(plugins.PluginBase):
    def __init__(self, path, type_info, points):
        with open(path, "r") as js:
            self.JAVASCRIPT = '\t'.join(js.readlines())
        self.dict_ = {
            "type": type_info,
            "id": utils.get_id(points)
        }
