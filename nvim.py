from talon import actions, Module

mod = Module()

@mod.action_class
class Actions:
    def nvim_command(command: str):
        """Executes a neovim command by pressing escape
        then and the :*command_sequence*"""
        actions.user.nvim_prefix(f":{command}")
        actions.key("enter")

    def nvim_prefix(prefix: str):
        """Adds a neovim command prefix by pressing escape
        then the command sequence"""
        actions.key("esc")
        actions.insert(f"{prefix}")
