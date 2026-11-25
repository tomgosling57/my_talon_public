from talon import Module

mod = Module()

mod.setting(
    "roo_type",
    type=str,
    default="roo-cline",
    desc="Set the name of the roo code extension. Possible values are 'roo-cline' and 'zoo-code'.",
)

mod.setting(
    "pcname",
    type=str,
    default="Ninya",
    desc="Set the name of the PC for directory insertion. This will replace 'PCNAME' in directory paths.",
)

mod.setting(
    "drive_id",
    type=str,
    default="C",
    desc="Set the drive letter for directory insertion. This will replace 'DRIVE' in directory paths.",
)

mod.setting(
    "talon_drive_id",
    type=str,
    default="C",
    desc="Set the drive letter for directory insertion. This will replace 'TALON_DRIVE' in directory paths.",
)