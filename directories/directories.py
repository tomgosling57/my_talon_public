from talon import Module, actions, settings

mod = Module()

def get_vars():
        """Returns a dictionary of the current settings for 'roo_type', 'pcname', 'drive_id', and 'talon_drive_id'."""
        return {
            "pcname": settings.get("user.pcname"),
            "drive_id": settings.get("user.drive_id"),
            "talon_drive_id": settings.get("user.talon_drive_id"),
        }

@mod.action_class
class Actions:

    def insert_dir(dirpath: str):
        """Inserts the given directory path into the current text field."""
        vars = get_vars()
        pcname = vars["pcname"]
        drive_id = vars["drive_id"]
        talon_drive_id = vars["talon_drive_id"]
        dirpath = dirpath.replace("PCNAME", pcname)
        dirpath = dirpath.replace("DRIVE_ID", drive_id)
        dirpath = dirpath.replace("TALON_DRIVE_ID", talon_drive_id)
        actions.insert(dirpath)