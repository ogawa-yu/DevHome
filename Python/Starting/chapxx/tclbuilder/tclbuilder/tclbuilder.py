
import re
from functools import reduce
from pathlib import Path

class TclBuilder(object):
    EXP_PLACE_HOLDER = re.compile("%[\\S]+%")

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
        result = list()
        for l in lines:
            result.extend(self.parse_script(l, params["params"]))
        with Path("./result.tcl").open("w") as fw:
            fw.writelines(result)
        return result

    def parse_script(self, line: str, params: dict):
        ms = self.EXP_PLACE_HOLDER.finditer(line)
        lines = list()
        ms = list(ms)
        if ms is None or len(ms) == 0:
            lines.append(line)
            return lines
        for m in ms:
            key = m.group()
            if not key[1:-1] in params:
                raise ValueError(
                    "{} is not found in params. {}".format(key, params))
            value = params[key[1:-1]]
            if isinstance(value, list):
                value_str = TclBuilder.to_tcl_list(value)
            else:
                value_str = str(params[key])
            lines.append(re.sub(key, value_str, line))
        return lines

    @staticmethod
    def define_tcl_list(key, values):
        return "set {} [list {}]".format( 
            key, TclBuilder.to_tcl_list(values))

    @staticmethod
    def to_tcl_list(values):
        return reduce(lambda l, r: str(l) + " " + str(r), values)
