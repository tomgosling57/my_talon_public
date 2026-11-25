os: linux
-
edit directories: 
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/my_talon/directories/directories.talon")
edit files:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/my_talon/files/files.talon")

edit my terminal:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/my_talon/my_terminal.talon")

edit model prompts:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/talon-ai-tools/GPT/lists/staticPrompt.talon-list")
edit model sources:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/talon-ai-tools/GPT/lists/modelSource.talon-list")
edit model destinations: 
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/talon-ai-tools/GPT/lists/modelDestination.talon-list")
edit model shell:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/talon-ai-tools/GPT/gpt-shell.talon")

edit app switcher:
  mimic("launch terminal")
  sleep(.3)
  user.execute_terminal_command("nvim ~/.talon/user/community/core/windows_and_tabs/window_management.talon")
