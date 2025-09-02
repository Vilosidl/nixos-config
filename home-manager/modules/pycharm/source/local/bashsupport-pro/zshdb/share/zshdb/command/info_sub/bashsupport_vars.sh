# -*- shell-script -*-
# "info bashsupport_variables" debugger command

_Dbg_help_add_sub info bashsupport_variables '
**info bashsupport_variables**

list variables with their types and flags in a format suitable for BashSupport Pro

' 1

_Dbg_do_info_bashsupport_variables() {
    # "typeset +" prints flags + variable name,
    # we use grep to extract the variable name on each line
    typeset -a _Dbg_variable_names
    _Dbg_variable_names=($(typeset + | grep -E -o '[^ ]+$' | grep -v '^_Dbg_'))

    # print flags, name and value. '-p 1' puts array values on a new line
    _Dbg_msg_noescapes "$(typeset -p 1 "${_Dbg_variable_names[@]}" 2>/dev/null)"

    return 0
}