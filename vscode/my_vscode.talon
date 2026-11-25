app: code
app: vscode
-
tag(): terminal
focus console: user.vscode("terminal.focus")
next terminal: user.vscode("workbench.action.terminal.focusNext")
previous terminal: user.vscode("workbench.action.terminal.focusPrevious")
toggle terminal: user.vscode("workbench.action.terminal.toggleTerminal")
max terminal: user.vscode("workbench.action.toggleMaximizedPanel")
terminal size up: user.vscode("workbench.action.terminal.resizePaneUp")
terminal size down: user.vscode("workbench.action.terminal.resizePaneDown")
terminal go bottom: user.vscode("workbench.action.terminal.scrollToBottom")
terminal go top: user.vscode("workbench.action.terminal.scrollToTop")
terminal scroll down: user.vscode("workbench.action.terminal.scrollDown")
terminal scroll up: user.vscode("workbench.action.terminal.scrollUp")
terminal page down: user.vscode("workbench.action.terminal.scrollDownPage")
terminal page up: user.vscode("workbench.action.terminal.scrollUpPage")
terminal top: user.vscode("workbench.action.positionPanelTop")
terminal bottom: user.vscode("workbench.action.positionPanelBottom")
new terminal: user.vscode("workbench.action.terminal.new")
new profile terminal: user.vscode("workbench.action.terminal.newWithProfile")
kill terminal: user.vscode("workbench.action.terminal.kill")
copy last terminal output:  user.vscode("workbench.action.terminal.copyLastCommandAndLastCommandOutput")
hide sidebar: key("ctrl-b")
hide second sidebar: key("ctrl-alt-b")

pilot toggle: user.vscode("github.copilot.chat.completions.toggle")

code: insert("code ")

focus editor: user.vscode("workbench.action.focusActiveEditorGroup")

bar GitHub: user.vscode("issues:github.focus")
bar cline: user.vscode("claude-dev.SidebarProvider.focus")
cline respond:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("54.0 -168.0 641.0 -150.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
roo mode: user.toggle_tag("user.roo")
roo type: insert(user.get_roo_type())
bar roo: 
    user.roo_vscode("SidebarProvider.focus")
    user.toggle_tag("user.roo")
toggle roo approve: user.roo_vscode("toggleAutoApprove")
roo new task: user.roo_vscode("newTask")
ask roo: user.roo_vscode("focusInput")
roo add to context: user.roo_vscode("addToContext")
roo accept: user.roo_vscode("acceptInput")
roo in new tab: user.roo_vscode("openInNewTab")
roo input: key("ctrl-alt-i")
roo respond:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("61.11088562011719 -187.176513671875 650.0593872070312 -152.75213623046875", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
roo negative:
    mimic("spot move roo negative")
    mouse_click()
git add partial: insert("git add -p ")

cut line: user.vscode("editor.action.deleteLines")

tabs join: user.vscode("workbench.action.joinAllGroups")

bar docker: user.vscode("dockerContainers.focus")    

git init: user.run_command("git init")
git clone: insert("git clone ")
git add : insert("git add ")
git unstage: user.vscode("git.unstageAll")
git remote add: insert("git remote add ")
git remote add origin main: insert("git remote add origin/main ")
git push: insert("git push ")
git reset: insert("git reset ")
git checkout main: user.execute_terminal_command("git checkout main")
git checkout: insert("git checkout ")
git checkout branch: insert("git checkout -b ")
git branch: insert("git branch ")
git status: user.execute_terminal_command("git status")
git restore staged: insert("git restore --staged ")
git log one line: user.execute_terminal_command("git log --oneline ")
pull request main: insert("gh pr create --base main --head ")
git remove: insert("git rm ")
git pull: insert("git pull ")
git pull now: user.execute_terminal_command("git pull")
git push: insert("git push ")
git push now: user.execute_terminal_command("git push")
git commit message:
    insert("git commit -m \"\"")
    key("left")
git commit amend message:
    insert("git commit --amend -m \"\"")
    key("left")


set sidebar width: user.set_sidebar_width()
panel left: user.vscode("workbench.action.positionPanelLeft")
panel right: user.vscode("workbench.action.positionPanelRight")
panel bottom: user.vscode("workbench.action.positionPanelBottom")
panel top: user.vscode("workbench.action.positionPanelTop")
set terminal height:
    user.grid_win("52")
    mouse_release()
set bash height: mimic("set terminal height")
set console height: mimic("set terminal height")
select terminal: user.grid_n_click("3666")
select [terminal] output: user.select_terminal_output()
edit [text]: user.grid_n_click("5")
pallete: key("ctrl-shift-p")


prisma generate: user.run_command("npx prisma generate")
prisma migrate dev: user.run_command("npx prisma migrate dev")
prisma pull: user.run_command("npx prisma db pull")
prisma push: user.run_command("npx prisma db push")

run dev: user.run_command("npm run dev")
npm install: user.run_command("npm install")

complete: key("tab")
save: key("ctrl-s")

bar continue: user.vscode("continue.focusContinueInput")
continue comments: user.vscode("continue.writeCommentsForCode")
continue add to context: user.vscode("continue.focusContinueInputWithoutClear")
continue debug terminal: user.vscode("continue.debugTerminal")
continue select model: user.grid_win_click("7428")
continue optimize this: user.vscode("continue.optimizeCode")
continue apply: user.vscode("continue.applyCodeFromChat")
continue toggle: key('ctrl-k ctrl-a')
ask continue: user.grid_win_click("7")
open in file explorer: user.vscode("revealFileInOS")
show active file: user.vscode("workbench.files.action.showActiveFileInExplorer")
open folder: user.vscode_open_folder()
bar explore: user.vscode("workbench.explorer.fileView.focus")

pip install: insert("pip install ")
pip install requirements: 
    insert("pip install -r requirements.txt")
    key("enter")
pip freeze:
    insert("pip freeze > requirements.txt")
    key("enter")
pip uninstall: insert("pip uninstall ")
pip uninstall requirements: 
    insert("pip uninstall -r requirements.txt")
    key("enter")
pip upgrade: insert("pip install --upgrade ")

run streamlit: 
    insert("python -m streamlit run app.py")
    key("enter")
    


show directory: insert("ls ")   
lisa: user.execute_terminal_command("ls")
load dot env: user.vscode_load_dot_env()

gemini cli: 
    insert("npx https://github.com/google-gemini/gemini-cli")
    key("enter")

debug MCP: user.insert("npx @modelcontextprotocol/inspector ")

break: insert("</br>")

pilot toggle: key("ctrl-shift-d")
add file to chat: user.vscode("workbench.action.chat.attachFile")
chat file: mimic("add file to chat")
chat next model: user.vscode("workbench.action.chat.switchToNextPinnedModel")
chat new skill: user.vscode("workbench.command.new.skill")
chat new instruction: user.vscode("workbench.command.new.instruction")
chat new prompt: user.vscode("workbench.command.new.prompt")

pointer: insert('ptr')

lookup: user.vscode("actions.find")
replace: user.vscode("editor.action.startFindReplaceAction")
copy last output: key("ctrl-alt-k o")

settings:
    matches = user.mouse_helper_find_template_relative("2026-01-14_10.40.27.588488.png")
    user.marker_ui_show(matches)
pencil:
    matches = user.mouse_helper_find_template_relative("2026-01-14_10.42.31.421608.png")
    user.marker_ui_show(matches)

bar strudel: user.vscode("strudel.strudelView.focus")
strut engine:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-01-28_14.16.09.959669.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
strut play: key("ctrl-enter")
strut stop: key("ctrl-.")

add jupiter cell: user.vscode("notebook.cellOutput.addToChat")


reopen container: user.vscode("remote-containers.reopenInContainer")
build container: user.vscode("remote-containers.rebuildAndReopenInContainer")
close container: user.vscode("workbench.action.remote.close")
clean up containers: user.vscode("remote-containers.cleanUpDevContainers")
jupiter all above: user.vscode("jupyter.runallcellsabove.palette")
jupiter clear all:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-04-28_15.00.33.672030.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
jupiter export:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-04-28_15.10.07.755821.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
