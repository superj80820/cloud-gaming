import subprocess
from halo import Halo

@Halo(text='Running', spinner='dots')
def execCmd(cmd):
    bashCommand = cmd
    process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
    output, _ = process.communicate()
    return output