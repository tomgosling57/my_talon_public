from talon import Module, actions

mod = Module()

@mod.action_class
class ActionClass:
    def dump(text: str):
        """Prints the given text to the console"""
        actions.clip.set_text(text)
        actions.key("ctrl-shift-v")