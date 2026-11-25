os: linux
-
tag(): terminal
show wifi devices: user.execute_terminal_command("nmcli device status")
show wifi networks: user.execute_terminal_command("nmcli device wifi list")
connect wifi university: user.execute_terminal_command("nmcli device wifi connect RMIT-University")
connect wifi redbacks two: user.execute_terminal_command("nmcli device wifi connect rmit-redbackbots2")
show wifi autoconnect:
    user.execute_terminal_command("nmcli -f NAME,AUTOCONNECT connection show")
enable wifi autoconnect <network>:
    user.execute_terminal_command("nmcli connection modify \"{network}\" connection.autoconnect yes")
disable wifi autoconnect <network>:
    user.execute_terminal_command("nmcli connection modify \"{network}\" connection.autoconnect no")
disable wifi autoconnect all:
    user.execute_terminal_command("""
        for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
            nmcli connection modify "$conn" connection.autoconnect no
        done
    """)
enable wifi autoconnect all:
    user.execute_terminal_command("""
        for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
            nmcli connection modify "$conn" connection.autoconnect yes
        done
    """)
toggle wifi autoconnect <network>:
    user.execute_terminal_command("""
        current=$(nmcli -t -f NAME,AUTOCONNECT connection show "{network}" 2>/dev/null | cut -d: -f2)
        if [[ "$current" == "yes" ]]; then
            nmcli connection modify "{network}" connection.autoconnect no
            echo "Auto-connect DISABLED for {network}"
        else
            nmcli connection modify "{network}" connection.autoconnect yes
            echo "Auto-connect ENABLED for {network}"
        fi
    """)
only autoconnect rmit:
    user.execute_terminal_command("""
        for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
            if [[ "$conn" == "RMIT-University" ]]; then
                nmcli connection modify "$conn" connection.autoconnect yes
                echo "✓ Auto-connect ENABLED for $conn"
            else
                nmcli connection modify "$conn" connection.autoconnect no
                echo "✗ Auto-connect DISABLED for $conn"
            fi
        done
    """)
show wifi autoconnect:
    insert("nmcli -f NAME,AUTOCONNECT connection show")
enable wifi autoconnect <network>:
    insert("nmcli connection modify \"{network}\" connection.autoconnect yes")
disable wifi autoconnect <network>:
    insert("nmcli connection modify \"{network}\" connection.autoconnect no")
disable wifi autoconnect all:
    insert("""
for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
    nmcli connection modify "$conn" connection.autoconnect no
done
""")
enable wifi autoconnect all:
    insert("""
for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
    nmcli connection modify "$conn" connection.autoconnect yes
done
""")
toggle wifi autoconnect <network>:
    insert("""
current=$(nmcli -t -f NAME,AUTOCONNECT connection show "{network}" 2>/dev/null | cut -d: -f2)
if [[ "$current" == "yes" ]]; then
    nmcli connection modify "{network}" connection.autoconnect no
    echo "Auto-connect DISABLED for {network}"
else
    nmcli connection modify "{network}" connection.autoconnect yes
    echo "Auto-connect ENABLED for {network}"
fi
""")
only autoconnect rmit:
    insert("""
for conn in $(nmcli -t -f NAME,TYPE connection show | grep wifi | cut -d: -f1); do
    if [[ "$conn" == "RMIT-University" ]]; then
        nmcli connection modify "$conn" connection.autoconnect yes
        echo "✓ Auto-connect ENABLED for $conn"
    else
        nmcli connecti.on modify "$conn" connection.autoconnect no
        echo "✗ Auto-connect DISABLED for $conn"
    fi
done
""")
