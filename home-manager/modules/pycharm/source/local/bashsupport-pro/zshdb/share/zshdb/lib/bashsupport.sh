# Like _Dbg_msg but does not evaluate escape sequences which are embedded in the arguments
function _Dbg_msg_noescapes {
    if [[ -n $_Dbg_fdi ]] && [[ -t $_Dbg_fdi ]] ; then
	    builtin print -R "$@"  >&${_Dbg_fdi}
    else
	    builtin print -R "$@"
    fi
}
