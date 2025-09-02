#!/usr/bin/bash

# <html><p><strong><code>$auto_resume</code></strong> controls how the shell interacts with the user and job control.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Job-Control-Variables.html">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Enable exact job control</dt>
# <dd>
# <pre><code class="language-bash">auto_resume=exact
# </code></pre>
# </dd>
# </dl></html>
declare auto_resume

# <html><p><strong><code>$BASH</code></strong> contains the full path to the current instance of Bash.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print absolute path to <code>bash</code>:</dt>
# <dd>
# <pre><code class="language-bash">echo $BASH
# </code></pre>
# </dd>
# </dl></html>
declare BASH

# <html><p><strong><code>$BASH_ALIASES</code></strong> contains a name-value mapping of the registered aliases.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fALIASES">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print names and values of all registered aliases</dt>
# <dd>
# <pre><code class="language-bash">for name in ${!BASH_ALIASES[@]}; do 
#   echo &quot;$name == ${BASH_ALIASES[$name]}&quot;
# done
# </code></pre>
# </dd>
# </dl></html>
declare -A BASH_ALIASES

# <html><p><strong><code>$BASH_ARGC</code></strong> contains the number of arguments for each subroutine on the call stack.</p>
# <p>This variable is only available in extended debugging mode.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fARGC">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of arguments when executed in the Bash debugger</dt>
# <dd>
# <pre><code class="language-bash">echo ${BASH_ARGC[@]}
# </code></pre>
# </dd>
# </dl></html>
declare -a BASH_ARGC

# <html><p><strong><code>$BASH_ARGV0</code></strong> expands to the name of the current shell or script. Values assigned to it also apply to <code>$0</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fARGV0">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Override <code>$BASH_ARGV0</code> and <code>$0</code></dt>
# <dd>
# <pre><code class="language-bash">BASH_ARGV0=/bin/bash
# echo $BASH_ARGV0 $0
# </code></pre>
# </dd>
# </dl></html>
declare BASH_ARGV0

# <html><p><strong><code>$BASH_ARGV</code></strong> contains all parameters in the current bash execution call stack.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-IGNOREEOF">Bash manual</a></li>
# </ul></html>
declare -a BASH_ARGV

# <html><p><strong><code>$BASH_CMDS</code></strong> is a key-value mapping of the commands managed by the <code>hash</code> builtin. Adding elements to it updated the
# hash table.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fCMDS">Bash manual</a></li>
# </ul></html>
declare -A BASH_CMDS

# <html><p><strong><code>$BASH_COMMAND</code></strong> is the command currently executed or about to be executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fCOMMAND">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current command</dt>
# <dd>
# <pre><code class="language-bash">echo &quot;Hello, command: $BASH_COMMAND&quot;
# </code></pre>
# </dd>
# </dl></html>
declare BASH_COMMAND

# <html><p><strong><code>$BASH_COMPAT</code></strong> controls the shell&rsquo;s compatibility level.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fCOMPAT">Bash manual on &ldquo;BASH_COMPAT&rdquo;</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Shell-Compatibility-Mode.html">Bash manual on &ldquo;Shell Compatibility Mode&rdquo;</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Declare compatibility with Bash 4.3</dt>
# <dd>
# <pre><code class="language-bash">BASH_COMPAT=43
# declare -a foo='(1 2)'
# </code></pre>
# </dd>
# </dl></html>
declare BASH_COMPAT

# <html><p>If <strong><code>$BASH_ENV</code></strong> is defined when Bash executes a script, then it&rsquo;s expanded and used as the name of Bash&rsquo;s startup
# file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fENV">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html">Bash Startup Files</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Define a startup script</dt>
# <dd>
# <pre><code class="language-bash">echo 'echo startup' &gt; startup.sh
# echo 'echo script' &gt; script.sh
# BASH_ENV=./startup.sh bash ./script.sh
# </code></pre>
# </dd>
# </dl></html>
declare BASH_ENV

# <html><p><strong><code>$BASH_EXECUTION_STRING</code></strong> contains the value, which was passed to <code>bash -c</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fEXECUTION_005fSTRING">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current value</dt>
# <dd>
# <pre><code class="language-bash">bash -c 'echo input=-$BASH_EXECUTION_STRING-'
# </code></pre>
# </dd>
# </dl></html>
declare BASH_EXECUTION_STRING

# <html><p><strong><code>$BASH_LINENO</code></strong> is an array and contains the line numbers, where a function defined in <code>$FUNCNAME</code> was invoked.</p>
# <p><code>$LINENO</code> contains the line number of the currently executing command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fLINENO">Bash manual on <code>$BASH_LINENO</code></a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-caller">Bash builtin &ldquo;caller&rdquo;</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Display execution position</dt>
# <dd>
# <pre><code class="language-bash">a() {
#   local i=$((${#FUNCNAME} - 1))
#   cat &lt;&lt; EOF
#   file: ${BASH_SOURCE[i+1]}
#   function: ${FUNCNAME[i]}
#   executed at: ${BASH_LINENO[i]}
# EOF
# }
# 
# a
# </code></pre>
# </dd>
# </dl></html>
declare -a BASH_LINENO

# <html><p><strong><code>$BASH_LOADABLE_PATH</code></strong> is a colon-separated list of directory paths. The <code>enable</code> builtin command searches these
# paths to locate a loadable builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fLOADABLES_005fPATH">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-enable">Bash builtin &ldquo;enable&rdquo;</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Define <code>$BASH_LOADABLE_PATH</code></dt>
# <dd>
# <pre><code class="language-bash">export BASH_LOADABLE_PATH=~/.bash_builtins
# </code></pre>
# </dd>
# </dl></html>
declare BASH_LOADABLES_PATH

# <html><p><strong><code>$BASH_REMATCH</code></strong> is an array and contains the matches of a regular expression.</p>
# <p><code>${BASH_REMATCH[0]}</code> contains the complete match of the regular expression.
# The remaining elements contain the matches of <code>()</code> subexpressions.
# For example, <code>${BASH_REMATCH[1]}</code> contains the match of the 1st <code>()</code> expression, <code>${BASH_REMATCH[2]}</code> contains the match of the 2nd <code>()</code> expression, and so on.</p>
# <p>With Bash, the conditional test operator <code>=~</code> of <code>[[ ]]</code> evaluates a regular expression.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fREMATCH">Bash manual on <code>$BASH_REMATCH</code></a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Conditional-Constructs.html#index-_005b_005b">Bash manual on the conditional test operator <code>=~</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print matches of a regular expression with <code>$BASH_REMATCH</code></dt>
# <dd>
# <pre><code class="language-bash">text=&quot;name=value with spaces&quot;
# [[ $text =~ ^([a-z]+)=(.*)$ ]]
# echo complete match: &quot;${BASH_REMATCH[0]}&quot;
# echo name: &quot;${BASH_REMATCH[1]}&quot;
# echo value: &quot;${BASH_REMATCH[2]}&quot;
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">complete match: name=value with spaces
# name: name
# value: value with spaces
# </code></pre>
# </dd>
# </dl></html>
declare -a BASH_REMATCH

# <html><p><strong><code>$BASH_SOURCE</code></strong> is an array and contains paths to the source files of the functions contained in <code>$FUNCNAME</code>.
# <code>${BASH_SOURCE[i]}</code> contains the source file, where the function <code>${FUNCNAME[i]}</code> is defined.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fSOURCE">Bash manual on <code>$BASH_SOURCE</code></a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-caller">Bash builtin &ldquo;caller&rdquo;</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Display execution position</dt>
# <dd>
# <pre><code class="language-bash">a() {
#   local i=$((${#FUNCNAME} - 1))
#   cat &lt;&lt; EOF
#   file: ${BASH_SOURCE[i+1]}
#   function: ${FUNCNAME[i]}
#   executed at: ${BASH_LINENO[i]}
# EOF
# }
# 
# a
# </code></pre>
# </dd>
# </dl></html>
declare -a BASH_SOURCE

# <html><p><strong><code>$BASH_SUBSHELL</code></strong> is the nesting level of subshell or subshell environments.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fSUBSHELL">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print subshell nesting</dt>
# <dd>
# <pre><code class="language-bash">echo &quot;$BASH_SUBSHELL $(echo -n &quot;$BASH_SUBSHELL $(echo -n $BASH_SUBSHELL)&quot;)&quot;
# </code></pre>
# </dd>
# </dl></html>
declare BASH_SUBSHELL

# <html><p><strong><code>$BASH_VERSINFO</code></strong> is an array and contains items, which define the version of Bash.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fVERSINFO">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print all items</dt>
# <dd>
# <pre><code class="language-bash">echo &quot;${BASH_VERSINFO[@]}&quot;
# </code></pre>
# </dd>
# </dl></html>
declare -r -a BASH_VERSINFO

# <html><p><strong><code>$BASH_VERSION</code></strong> contains the current version of the Bash interpreter as a string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fVERSION">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current version of Bash</dt>
# <dd>
# <pre><code class="language-bash">echo $BASH_VERSION
# </code></pre>
# </dd>
# </dl></html>
declare BASH_VERSION

# <html><p><strong><code>$BASH_XTRACEFD</code></strong> is an integer to a file descriptor, where Bash&rsquo;s trace output should be stored.
# By default, the output is sent to <code>STDERR</code> (i.e. <code>BASH_XTRACEFD=2</code>).</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fXTRACEFD">Bash manual</a></li>
# </ul></html>
declare BASH_XTRACEFD

# <html><p><strong><code>$BASHOPTS</code></strong> is a colon-separated list of enabled shell options.
# It contains options managed by the <code>shopt</code> builtin command.</p>
# <p><code>$SHELLOPTS</code> is similar, but only for the options controlled by the <code>set</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASHOPTS">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the enabled shell options</dt>
# <dd>
# <pre><code class="language-bash">echo $BASHOPTS
# shopt | grep 'on'
# </code></pre>
# </dd>
# </dl></html>
declare -r BASHOPTS

# <html><p><strong><code>$BASHPID</code></strong> expands to the process ID of the current Bash process.
# Subshell processes have a different ID than the parent process.</p>
# <p>This is similar to <code>$$</code>, but not the same. <code>$$</code> contains the process ID of the script, i.e. the parent process.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASHPID">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print PID of the current process</dt>
# <dd>
# <pre><code class="language-bash">echo $BASHPID $$
# </code></pre>
# </dd>
# <dt>Print PID of the current subshell process</dt>
# <dd>
# <pre><code class="language-bash">(echo $BASHPID $$)
# </code></pre>
# </dd>
# </dl></html>
declare -i BASHPID

# <html><p>A colon-separated list of directories used as a search path for the <code>cd</code> builtin command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-CDPATH">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Make <code>cd</code> always look into <code>$HOME</code> when the directory wasn&rsquo;t found in the current directory</dt>
# <dd>
# <pre><code class="language-bash">CDPATH=&quot;.:$HOME&quot;
# </code></pre>
# </dd>
# </dl></html>
declare CDPATH

# <html><p><strong><code>$CHILD_MAX</code></strong> sets the number of exited child status values to remember.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-CHILD_005fMAX">Bash manual</a></li>
# </ul></html>
declare CHILD_MAX

# <html><p><strong><code>$COLUMNS</code></strong> is used by the <code>select</code> command when it&rsquo;s printing selection lists.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COLUMNS">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LINES">Bash manual on &ldquo;LINES&rdquo;</a></li>
# </ul></html>
declare COLUMNS

# <html><p><strong><code>$COMP_CWORD</code></strong> is the index of the word in <code>$COMP_WORDS</code>, which contains the cursor position.</p>
# <p>This variable is only available in functions invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fCWORD">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare COMP_CWORD

# <html><p><strong><code>$COMP_KEY</code></strong> is the key used to invoke the current completion function.</p>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fKEY">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare COMP_KEY

# <html><p><strong><code>$COMP_LINE</code></strong> is contains the current command line.</p>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fLINE">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare COMP_LINE

# <html><p><strong><code>$COMP_POINT</code></strong> is the offset of the cursor position, relative to the beginning of the current command.</p>
# <p>This variable is only available in functions invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fPOINT">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare COMP_POINT

# <html><p><strong><code>$COMP_TYPE</code></strong> contains the completion type.</p>
# <ul>
# <li><code>TAB</code>: normal completion</li>
# <li><code>?</code>: listing completions after successive tabs</li>
# <li><code>!</code>: listing alternatives on partial word completion</li>
# <li><code>@</code>: listing completions if the word is not unmodified</li>
# <li><code>%</code>: menu completion</li>
# </ul>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fTYPE">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare COMP_TYPE

# <html><p><strong><code>$COMP_WORDBREAKS</code></strong> is a string, where each character is treated as a word separators when performing word
# completion.</p>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fWORDBREAKS">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print <code>$COMP_WORDBREAKS</code></dt>
# <dd>
# <pre><code class="language-bash">echo $COMP_WORDBREAKS
# </code></pre>
# </dd>
# </dl></html>
declare COMP_WORDBREAKS

# <html><p><strong><code>$COMP_WORDS</code></strong> is an array, which contains the individual words of the command line. The line is split
# by <code>$COMP_WORDBREAKS</code>.</p>
# <p>The word containing the cursor is identified by <code>$COMP_CWORD</code>.</p>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fWORDS">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare -a COMP_WORDS

# <html><p><strong><code>$COMPREPLY</code></strong> is an array to return the completion items response to Bash.</p>
# <p>This variable is only available in functions and external commands invoked by the programmable completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COMP_005fWORDS">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html">Programmable Completion</a></li>
# </ul></html>
declare -a COMPREPLY

# <html><p><strong><code>$COPROC</code></strong> is the default variable name used by <code>coproc</code> to store file descriptors of a coprocess.</p>
# <p><code>${COPROC[0]}</code> is a file descriptor, which is connected to <code>STDOUT</code> of the executed command.
# <code>${COPROC[1]}</code> is connected to <code>STDIN</code> of the executed command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-COPROC">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Coprocesses.html">Coprocesses</a></li>
# </ul></html>
declare -a COPROC

# <html><p><strong><code>$DIRSTACK</code></strong> contains the values of the directory stack.</p>
# <p><code>pushd</code> adds to the stack, <code>popd</code> removes from the stack. The builtin command <code>dirs</code> displays the values of the stack.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-DIRSTACK">Bash manual</a></li>
# </ul></html>
declare -a DIRSTACK

# <html><p><strong><code>$EMACS</code></strong> controls Bash&rsquo;s line editing.
# Bash disables line editing, when it finds <code>$EMACS</code> with the value <code>t</code> in the current environment.
# This variable is only used in interactive mode.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-EMACS">Bash manual</a></li>
# </ul></html>
declare EMACS

# <html><p><strong><code>$EPOCREALTIME</code></strong> contains the number of seconds since the Unix Epoch.
# It&rsquo;s a floating-point value with micro-seconds granularity.</p>
# <p>The Unix Epoch starts at <code>1970-01-01 00:00:00 +0000 (UTC)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-EPOCREALTIME">Bash manual</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_16">Epoc definition of POSIX</a></li>
# <li><a href="https://man7.org/linux/man-pages/man2/time.2.html#top_of_page#NOTES">Notes on Epoch in &ldquo;man 2 time&rdquo;</a></li>
# <li><a href="https://en.wikipedia.org/wiki/Unix_time">Wikipedia on Unix Time</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of seconds since UNIX Epoch</dt>
# <dd>
# <pre><code class="language-bash">LC_ALL=en_US
# echo $EPOCHREALTIME
# </code></pre>
# </dd>
# </dl></html>
declare EPOCHREALTIME

# <html><p><strong><code>$EPOCHSECONDS</code></strong> contains the number of seconds since the Unix Epoch.</p>
# <p>The Unix Epoch starts at <code>1970-01-01 00:00:00 +0000 (UTC)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-EPOCREALTIME">Bash manual</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_16">Epoc definition of POSIX</a></li>
# <li><a href="https://man7.org/linux/man-pages/man2/time.2.html#top_of_page#NOTES">Notes on Epoch in &ldquo;man 2 time&rdquo;</a></li>
# <li><a href="https://en.wikipedia.org/wiki/Unix_time">Wikipedia on Unix Time</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of seconds since UNIX Epoch</dt>
# <dd>
# <pre><code class="language-bash">LC_ALL=en_US
# echo $EPOCHSECONDS
# </code></pre>
# </dd>
# </dl></html>
declare EPOCHSECONDS

# <html><p><strong><code>$EUID</code></strong> contains the numeric effective user ID of the current user.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-EUID">Bash manual</a></li>
# </ul></html>
declare -r -i EUID

# <html><p><strong><code>$EXECIGNORE</code></strong> is a colon-separated list of patterns, which define the files ignored by a command search in <code>$PATH</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-EXECIGNORE">Bash manual</a></li>
# </ul></html>
declare EXECIGNORE

# <html><p><strong><code>$FCEDIT</code></strong> defines the editor used by the <code>fc</code> builtin. When <code>fc</code> displays the list of commands, then it first
# checks <code>$FCEDIT</code>, then <code>$EDITOR</code>, then <code>vi</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-FCEDIT">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-History-Builtins.html#index-fc">Bash manual on <code>fc</code></a></li>
# </ul></html>
declare FCEDIT

# <html><p><strong><code>$FIGNORE</code></strong> is a colon-separated list of suffixes, which are ignored by filename completion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-FIGNORE">Bash manual</a></li>
# </ul></html>
declare FIGNORE

# <html><p><strong><code>$FUNCNAME</code></strong> contains the names of shell functions on the execution call stack.</p>
# <p>The name of the currently executed function is <code>${FUNCNAME[0]}</code>, the name of the calling function is <code>${FUNCNAME[1]}</code>
# and so on.</p>
# <p>The element with the highest index has value <code>main</code>.
# This value is representing the entry-point of a shell script file.
# It&rsquo;s unavailable if a function is executed inside an interactive shell, for example.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-FUNCNAME">Bash manual on <code>$FUNCNAME</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the function call stack with <code>$FUNCNAME</code></dt>
# <dd>
# <pre><code class="language-bash">function nested() { echo &quot;Function call stack:&quot; &quot;${FUNCNAME[@]}&quot;; }
# function topLevel() { nested; }
# topLevel
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">Function call stack: nested topLevel main
# </code></pre>
# </dd>
# </dl></html>
declare -a FUNCNAME

# <html><p><strong><code>$FUNCNEST</code></strong> defines the maximum function nesting level if it has a value greater than <code>0</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-FUNCNEST">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Disallow function nesting</dt>
# <dd>
# <pre><code class="language-bash">a() { b; }
# b() { echo b; }
# FUNCNEST=1
# # Breaks with an error when it calls b 
# a
# </code></pre>
# </dd>
# </dl></html>
declare FUNCNEST

# <html><p><strong><code>$GLOBIGNORE</code></strong> is a colon-separated list of patterns. Each pattern defines filenames, which are ignored by filename
# expansion. Files, which match one of the patterns, are removed from the list of expanded filenames.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-GLOBIGNORE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Exclude temporary files from filename expansion:</dt>
# <dd>
# <pre><code class="language-bash">GLOBIGNORE='tmp_*'
# ls *.sh
# </code></pre>
# </dd>
# </dl></html>
declare GLOBIGNORE

# <html><p><strong><code>$GROUPS</code></strong> is an array and contains the groups of which the current user is a member.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-GROUPS">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print all groups of the current user</dt>
# <dd>
# <pre><code class="language-bash">echo ${GROUPS[@]}
# </code></pre>
# </dd>
# </dl></html>
declare -a GROUPS

# <html><p><strong><code>$histchars</code></strong> contains up to three characters:</p>
# <ol>
# <li><em>history expansion character</em>: Defines the start of a history expansion. Default value: <code>!</code>.</li>
# <li><em>quick substitution character</em>: The character, which starts a substitution, when it&rsquo;s first on a line. Default
# value: <code>^</code>.</li>
# <li><em>end-of-line comment character</em> (optional): The character, where an end-of-line comment begins. Default value: <code>#</code></li>
# </ol>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-histchars">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Event-Designators.html">Bash manual on Event Designators</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Quick substitution to print <code>hello world</code></dt>
# <dd>
# <pre><code class="language-bash">echo hello
# # here comes the quick substitution 
# # to replace &quot;hello&quot; of the previous 
# # command with &quot;hello world&quot; and run it 
# ^hello^hello\ world^
# </code></pre>
# </dd>
# <dt>Now use a custom substitution character</dt>
# <dd>
# <pre><code class="language-bash">histchars='!@'
# echo hello
# @hello@hello\ world@
# </code></pre>
# </dd>
# </dl></html>
declare histchars

# <html><p><strong><code>$HISTCMD</code></strong> is the index in the history list of the current command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTCMD">Bash manual</a></li>
# </ul></html>
declare HISTCMD

# <html><p><strong><code>$HISTCONTROL</code></strong> is a colon-separated list of values to control how commands are saved on the history file.</p>
# <p>Possible values</p>
# <ul>
# <li><code>ignorespace</code>: lines which begin with a space are not saved</li>
# <li><code>ignoredups</code>: lines which match the previous line are not saved</li>
# <li><code>ignoreboth</code>: shorthand for <code>ignorespace</code> and <code>ignoredups</code></li>
# <li><code>erasedups</code>: all previous lines matching the current line are removed from the history</li>
# </ul>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTCONTROL">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTIGNORE"><code>$HISTIGNORE</code></a></li>
# </ul></html>
declare HISTCONTROL

# <html><p><strong><code>$HISTFILE</code></strong> defines the path to the file, where Bash stores its command history.
# The default value is <code>~/.bash_history</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTFILE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Store the history in <code>~/.history</code></dt>
# <dd>
# <pre><code class="language-bash">HISTFILE=~/.history
# </code></pre>
# </dd>
# </dl></html>
declare HISTFILE

# <html><p><strong><code>$HISTFILESIZE</code></strong> defines the maximum number of lines in the history file.
# It defaults to <code>$HISTSIZE</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTFILESIZE">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTSIZE">Bash manual on $HISTSIZE</a></li>
# </ul></html>
declare HISTFILESIZE

# <html><p><strong><code>$HISTIGNORE</code></strong> is a colon-separated list of patterns.
# Commands, which are matched by one of the patterns, are excluded from the history and not stored.</p>
# <p>Ignored commands are removed from history and also can&rsquo;t be recalled with the UP or DOWN keys.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTIGNORE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Exclude <code>history</code> and any <code>sudo</code> command from your history:</dt>
# <dd>
# <pre><code class="language-bash">export HISTIGNORE='history:sudo*'
# </code></pre>
# </dd>
# </dl></html>
declare HISTIGNORE

# <html><p><strong><code>$HISTSIZE</code></strong> defines the maximum number of commands to remember in the history list.
# The default value is <code>500</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTSIZE">Bash manual</a></li>
# </ul></html>
declare HISTSIZE

# <html><p><strong><code>$HISTTIMEFORMAT</code></strong> defines how the <code>history</code> builtin prints the timestamps of history entries.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HISTTIMEFORMAT">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print ISO dates (<code>yyyy-mm-dd</code>):</dt>
# <dd>
# <pre><code class="language-bash">HISTTIMEFORMAT=&quot;%Y-%m-%d &quot;
# history
# </code></pre>
# </dd>
# </dl></html>
declare HISTTIMEFORMAT

# <html><p><strong><code>$HOSTFILE</code></strong> contains the name of a file in the format of <code>/etc/hosts</code> that is used by the shell to complete
# hostnames.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HOSTFILE">Bash manual</a></li>
# </ul></html>
declare HOSTFILE

# <html><p><strong><code>$HOSTNAME</code></strong> contains the type of the current host, e.g. <code>x86_64</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HOSTNAME">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the type of the current host</dt>
# <dd>
# <pre><code class="language-bash">echo $HOSTTYPE
# </code></pre>
# </dd>
# </dl></html>
declare HOSTNAME

# <html><p><strong><code>$HOSTNAME</code></strong> contains the machine type of the current host.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-HOSTTYPE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the host type of the current host</dt>
# <dd>
# <pre><code class="language-bash">echo $HOSTTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">x86_64
# </code></pre>
# </dd>
# </dl></html>
declare HOSTTYPE

# <html><p><strong><code>$IGNOREEOF</code></strong> controls what an interactive shell does when the only EOF is entered.
# <code>Control + D</code> inputs the EOF character.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-IGNOREEOF">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Ignore the first EOF to avoid accidental logouts:</dt>
# <dd>
# <pre><code class="language-bash">IGNOREEOF=1
# </code></pre>
# </dd>
# </dl></html>
declare IGNOREEOF

# <html><p><strong><code>$INPUTRC</code></strong> overrides the file to initialize Readline. By default, <code>~/.inputrc</code> is used by Readline.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-INPUTRC">Bash manual</a></li>
# </ul></html>
declare INPUTRC

# <html><p>If <strong><code>$INSIDE_EMACS</code></strong> is defined, then Bash disables the line editing depending on the value of <code>$TERM</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-INSIDE_005fEMACS">Bash manual</a></li>
# </ul></html>
declare INSIDE_EMACS

# <html><p><strong><code>$LINES</code></strong> is used by the <code>select</code> command to determine the column length when printing lists.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LINES">Bash manual</a></li>
# </ul></html>
declare LINES

# <html><p><strong><code>$MACHTYPE</code></strong> describes the system on which Bash is executing.
# It follows the format <code>cpu-company-system</code>, for example <code>x86_64-pc-linux-gnu</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-MACHTYPE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current system type</dt>
# <dd>
# <pre><code class="language-bash">echo $MACHTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">x86_64-pc-linux-gnu
# </code></pre>
# </dd>
# </dl></html>
declare MACHTYPE

# <html><p><strong><code>$MAIL</code></strong> contains the path to a file or a Maildir-format directory. If <code>$MAILPATH</code> is not set, then
# Bash informs the user when new mail arrived in <code>$MAIL</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-MAIL">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-bash">MAIL=~/&quot;.inbox&quot;
# MAILCHECK=10
# # Now bash will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAIL

# <html><p><strong><code>$MAILCHECK</code></strong> defines the interval in seconds when the shell should check for mail.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-MAILCHECK">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-bash">MAILPATH=~/&quot;.inbox?Hey, you've got mail in \$_&quot;
# MAILCHECK=10
# # Now bash will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAILCHECK

# <html><p><strong><code>$MAILPATH</code></strong> is a colon-separated list of filenames, which are checked for mail by the shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-MAILPATH">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-bash">MAILPATH=~/&quot;.inbox?Hey, you've got mail in \$_&quot;
# MAILCHECK=10
# # Now bash will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAILPATH

# <html><p><strong><code>$MAPFILE</code></strong> is the default variable used by <code>mapfile</code> and contains the read lines.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-MAPFILE">Bash manual</a></li>
# </ul></html>
declare -a MAPFILE

# <html><p><strong><code>$OLDPWD</code></strong> contains the previous working directory set by the <code>cd</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-OLDPWD">Bash manual</a></li>
# </ul></html>
declare OLDPWD

# <html><p><strong><code>$OPTARG</code></strong> contains the value of the last option argument processed by the <code>getopts</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-OPTARG">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print value passed to argument <code>-v</code>:</dt>
# <dd>
# <pre><code class="language-bash">usage() { echo &quot;$0 usage: -v &lt;value&gt;&quot;; exit 0; }
# [ $# -eq 0 ] &amp;&amp; usage
# 
# declare value
# # : because -v requires a value
# while getopts &quot;v:&quot; arg; do
#   case $arg in
#     v) value=&quot;$OPTARG&quot; ;;
#     *) usage ;;
#   esac
# done
# 
# echo &quot;Value passed to -v: $value&quot;
# </code></pre>
# </dd>
# </dl></html>
declare -i OPTARG

# <html><p><strong><code>$OPTERR</code></strong> controls if Bash displays errors generated by the <code>getopts</code> builtin command.
# <code>getopts</code> does not print errors if <code>$OPTERR</code> has a value of <code>0</code>. Value <code>1</code> enables the errors.</p>
# <p>Default value: 1.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-OPTERR">Bash manual</a></li>
# </ul></html>
declare OPTERR

# <html><p><strong><code>$OPTIND</code></strong> contains the index of the last option argument processed by the <code>getopts</code> builtin.</p>
# <p>Default value: 1.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-OPTIND">Bash manual</a></li>
# </ul></html>
declare -i OPTIND

# <html><p><strong><code>$OSTYPE</code></strong> describes the operating system Bash is running on.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-OSTYPE">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current OS</dt>
# <dd>
# <pre><code class="language-bash">echo $OSTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">linux-gnu
# </code></pre>
# </dd>
# </dl></html>
declare OSTYPE

# <html><p><strong><code>$PIPESTATUS</code></strong> is an array and contains the exit status values of the most-recently-executed foreground pipeline.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PIPESTATUS">Bash manual</a></li>
# </ul></html>
declare -a PIPESTATUS

# <html><p>If <strong><code>$POSIXLY_CORRECT</code></strong> is defined, when Bash starts, then the shell enters POSIX mode.
# If it is set while the shell is running, then Bash enables POSIX mode as if <code>set -o posix</code> had been executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-POSIXLY_005fCORRECT">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-POSIX-Mode.html">Bash POSIX mode</a></li>
# </ul></html>
declare POSIXLY_CORRECT

# <html><p><strong><code>$PROMPT_COMMAND</code></strong> is either an array or a regular variable. Each value is executed as a command before the primary
# prompt <code>$PS1</code> is executed.</p>
# <p>This is only useful for interactive terminals.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PROMPT_005fCOMMAND">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Show number of files in <code>$HOME</code> in the prompt:</dt>
# <dd>
# <pre><code class="language-bash">PROMPT_COMMAND='_fileCount=$(ls ~ | wc -l)' 
# PS1=&quot;$_fileCount files]$ &quot;
# # next prompt will display the number of files
# </code></pre>
# </dd>
# </dl></html>
declare PROMPT_COMMAND

# <html><p><strong><code>$PROMPT_DIRTRIM</code></strong> is a number and defines how many trailing directories are retained in the prompt.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PROMPT_005fDIRTRIM">Bash manual</a></li>
# </ul></html>
declare PROMPT_DIRTRIM

# <html><p><strong><code>$PS0</code></strong> is expanded like <code>$PS1</code> and is displayed before a command is executed.</p>
# <p>It&rsquo;s only used by shells in interactive mode.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PS0">Bash manual</a></li>
# </ul></html>
declare PS0

# <html><p><strong><code>$PS3</code></strong> defines the prompt of the <code>select</code> command. By default, <code>#?</code> is used.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PS3">Bash manual</a></li>
# </ul></html>
declare PS3

# <html><p><strong><code>$RANDOM</code></strong> expands to a random integer in the range <code>[0, 32767]</code>.
# Assigning a values seeds the random name generator.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-RANDOM">Bash manual</a></li>
# </ul></html>
declare -i RANDOM

# <html><p><strong><code>$READLINE_LINE</code></strong> contains the Readline line buffer, for use with <code>bind -x</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-READLINE_005fLINE">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-bind">bind builtin</a></li>
# </ul></html>
declare READLINE_LINE

# <html><p><strong><code>$READLINE_MARK</code></strong> is the position of the mark (saved insertion point) in the Readline line buffer, for use
# with <code>bind -x</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-READLINE_005fMARK">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-bind">bind builtin</a></li>
# </ul></html>
declare READLINE_MARK

# <html><p><strong><code>$READLINE_POINT</code></strong> is the position of the insertion point in the Readline line buffer, for use with <code>bind -x</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-READLINE_005fPOINT">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-bind">bind builtin</a></li>
# </ul></html>
declare READLINE_POINT

# <html><p><strong><code>$REPLY</code></strong> is the default variable used by the <code>read</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-REPLY">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-read">read builtin</a></li>
# </ul></html>
declare REPLY

# <html><p><strong><code>$SECONDS</code></strong>  expands to the number of seconds since the shell was started.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-SECONDS">Bash manual</a></li>
# </ul></html>
declare -i SECONDS

# <html><p><strong><code>$SHELL</code></strong> expands to the full pathname of the shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-SHELL">Bash manual</a></li>
# </ul></html>
declare SHELL

# <html><p><strong><code>$SHELLOPTS</code></strong> is a colon-separated list of the currently enabled shell options. It contains options, which are
# controlled by the <code>set</code> command.</p>
# <p><code>$BASHOPTS</code> is similar, but for the options managed by the <code>shopt</code> builtin command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-SHELLOPTS">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the enabled shell options</dt>
# <dd>
# <pre><code class="language-bash">echo $SHELLOPTS
# </code></pre>
# </dd>
# </dl></html>
declare -r SHELLOPTS

# <html><p><strong><code>$SHLVL</code></strong> contains the level of nested Bash shells.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-SHLVL">Bash manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the nesting level of the Bash process:</dt>
# <dd>
# <pre><code class="language-bash">echo $SHLVL
# </code></pre>
# </dd>
# </dl></html>
declare SHLVL

# <html><p><strong><code>$SRANDOM</code></strong> expands to a 32-bit pseudo-random number each time it is referenced.</p>
# <p>This variable is only supported by Bash 5.1 and later versions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-SRANDOM">Bash manual</a></li>
# </ul></html>
declare -i SRANDOM

# <html><p><strong><code>$TERM</code></strong> contains an identifier for the current window&rsquo;s capabilities.
# It&rsquo;s not a BASH builtin variable, but is often defined in environments.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/gettext/manual/html_node/The-TERM-variable.html">GNU gettext manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the terminal capabilities</dt>
# <dd>
# <pre><code class="language-bash">echo $TERM
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">xterm-256color      
# </code></pre>
# </dd>
# </dl></html>
declare TERM

# <html><p><strong><code>$TIMEFORMAT</code></strong> defines the format string for the <code>time</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-TIMEFORMAT">Bash manual</a></li>
# </ul></html>
declare TIMEFORMAT

# <html><p><strong><code>$TMOUT</code></strong> defines the default timeout for the <code>read</code> and <code>select</code> commands.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-TMOUT">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-read"><code>read</code> builtin</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-select"><code>select</code> builtin</a></li>
# </ul></html>
declare TMOUT

# <html><p><strong><code>$TMPDIR</code></strong> defines the directory, where Bash creates its temporary files.</p></html>
declare TMPDIR

# <html><p><strong><code>$UID</code></strong> contains the numeric real user ID of the current user.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-UID">Bash manual</a></li>
# </ul></html>
declare -r -i UID