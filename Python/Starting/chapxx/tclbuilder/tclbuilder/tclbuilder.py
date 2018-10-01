
from pathlib import Path

class TclBuilder(object):
    def build(self, params):
        command_type = params["params"]["type"]
        founds = list(Path("./command/").glob(
                "{}.cmd.tcl".format(command_type)))
        if len(founds) != 1:
            print("File not found.")
            return None
        command_file: Path = founds[0]
        with command_file.open("r") as f:
            lines = f.readlines()
        return lines
