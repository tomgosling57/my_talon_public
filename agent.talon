app: vscode
~
jira search current user: user.execute_terminal_command("./.agents/scripts/jira/jira-search.sh \"assignee = currentUser()\" --max 1 --raw")