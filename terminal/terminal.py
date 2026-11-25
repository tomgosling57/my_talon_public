import webbrowser
import os
from pathlib import Path
from talon import Module, actions

mod = Module()

@mod.action_class
class Actions:

    def execute_terminal_command(command:str):
        """Inserts the given command string and then presses enter to execute"""
        actions.insert(command)
        actions.key("enter")
    
    def terminal_unzip_all():
        """Executes a command to unzip all zip files within the directory"""
        actions.user.execute_terminal_command("""for f in *.zip; do
    7z x "$f" -o"${f%.zip}"
done
""")

    def terminal_remove_all_zips():
        """Deletes all zip files from the current directory in the terminal"""
        actions.user.execute_terminal_command("""for f in *.zip; do
    rm "$f";
done
""")
    
    def restart_audio_sinks():
        """Reboots all of the pulse audio sinks"""
        actions.user.execute_terminal_command("""for i in $(pactl list short sink-inputs | awk '{print $1}'); do
    pactl move-sink-input $i @DEFAULT_SINK@
done
""")

    def start_pirate_container():
        """Starts the pirate docker container using ProtonVPN creds from ~/music/.proton_env"""
        actions.user.execute_terminal_command("docker stop qbittorrent gluetun && docker rm qbittorrent gluetun")
        actions.user.execute_terminal_command("start-pirate")

    def pipe_boost_monitor():
        """Boosts pulse monitoring"""
        actions.user.execute_terminal_command("""pulse-inputs
echo "First integer is ID and second is volume change (+/-50%)"    """)
        actions.insert("pactl set-sink-input-volume ")
    
    def open_c_plus_plus_errors():
        """Opens the documentation page for c++ errors"""
        webbrowser.open("https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html")