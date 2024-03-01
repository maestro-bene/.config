# File path: ~/tmux_session_killer.py
import subprocess


def main():
    try:
        output = subprocess.check_output(
            ["/opt/homebrew/bin/tmux", "ls"], universal_newlines=True
        )
        lines = output.strip().split("\n")
        for line in lines:
            session_name = line.split(":")[0]
            if session_name == "temp":
                subprocess.run(["tmux", "a", "-t", session_name])
            if session_name.isdigit():
                subprocess.run(["tmux", "kill-ses", "-t", session_name])
    except subprocess.CalledProcessError:
        print("tmux is not running or some other error occurred")
        subprocess.run(["tmux", "new", "-s", "temp"])


if __name__ == "__main__":
    main()
