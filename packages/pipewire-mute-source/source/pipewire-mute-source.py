import subprocess

try:
    output = int(subprocess.check_output("pactl get-source-mute @DEFAULT_SOURCE@ | grep -c yes", text=True, shell=True))
except subprocess.CalledProcessError:
    output = 0

def microphone():
    if output == 1:
        subprocess.run(["notify-send", " Микрофон включен"])
    else:
        subprocess.run(["notify-send", "  Микрофон выключен"])
    subprocess.call(["pactl", "set-source-mute", "@DEFAULT_SOURCE@", "toggle"])

if __name__ == "__main__":
    microphone()
