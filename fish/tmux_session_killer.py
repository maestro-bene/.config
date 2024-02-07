# File path: ~/tmux_session_killer.py
import subprocess


def main():
    try:
        output = subprocess.check_output(
            ["/opt/homebrew/bin/tmux", "ls"], universal_newlines=True
        )
        lines = output.strip().split("\n")
        temp_exists_already = False
        for line in lines:
            session_name = line.split(":")[0]
            if session_name == "temp":
                temp_exists_already = True
                subprocess.run(["tmux", "a", "-t", session_name])
            if session_name.isdigit():
                subprocess.run(["tmux", "kill-ses", "-t", session_name])
        if not temp_exists_already:
            subprocess.run(["tmux", "new", "-s", "temp"])
    except subprocess.CalledProcessError:
        print("tmux is not running or some other error occurred")


if __name__ == "__main__":
    main()
