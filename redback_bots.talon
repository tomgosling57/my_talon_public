tag: user.redbackbots
-
red back build: user.execute_terminal_command("./Make/Common/build_setup") 
red back sauce: user.execute_terminal_command("source /home/rmitaiil/workspace/redbackbots-soccer/.bashrc")
booster sink: insert("booster_sync -ip ")
booster sink lux: user.execute_terminal_command("booster_sync -ip 10.0.51.180")
booster sink loop: user.execute_terminal_command("booster_sync -ip 10.0.51.181")
connect lux: user.execute_terminal_command("ssh booster@10.0.51.180")
connect loop: user.execute_terminal_command("ssh booster@10.0.51.181")
boost past: user.execute_terminal_command("rbb")

