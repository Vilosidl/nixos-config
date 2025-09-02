#!/usr/bin/zsh

# <html><p><strong><code>$aliases</code></strong> maps alias names to their expansions.</p>
# <p>This variable was called <code>raliases</code> in early versions of the Z Shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-aliases">The Z Shell Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-galiases">The Z Shell Manual on <code>$galiases</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-saliases">The Z Shell Manual on <code>$saliases</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Show currently available aliases</dt>
# <dd>
# <pre><code class="language-zsh">typeset aliases
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">aliases=( [dir]='ls -la' [run-help]=man [which-command]=whence )
# </code></pre>
# </dd>
# </dl></html>
declare -A aliases

# <html><p><strong><code>$BAUD</code></strong> is the rate in bits per second at which data reaches the terminal.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-BAUD">The Z Shell Manual</a></li>
# </ul></html>
declare -i BAUD

# <html><p><strong><code>$BUFFER</code></strong> contains the entire content of the edit buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-BUFFER">The Z Shell Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets">The Z Shell Manual on Zle Widgets</a></li>
# </ul></html>
declare BUFFER

# <html><p><strong><code>$BUFFERLINES</code></strong> contains the number of screen lines needed for the visible part of the edit buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-BUFFERLINES">The Z Shell Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets">The Z Shell Manual on Zle Widgets</a></li>
# </ul></html>
declare -r -i BUFFERLINES

# <html><p><strong><code>$builtins</code></strong> contains the state of builtin commands.
# An associated value of <code>defined</code> means that the command was already loaded.
# <code>undefined</code> means, that the command will be loaded from a module when it&rsquo;s invoked for the first time.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-builtins">The Z Shell Manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Display state of all Zsh builtin commands</dt>
# <dd>
# <pre><code class="language-zsh">declare builtins
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text"># first two items of the output
# builtins=( [unset]=defined [rehash]=defined )
# </code></pre>
# </dd>
# </dl></html>
declare -A builtins

# <html><p><strong><code>$cdpath</code></strong> contains the directories used as a search path by the <code>cd</code> builtin command.
# The linked scalar variable <code>$CDPATH</code> contains the same value as a colon-separated string and
# is updated at the same time when <code>$cdpath</code> is modified.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-cdpath">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Update <code>$cdpath</code> and evaluate the linked <code>$CDPATH</code></dt>
# <dd>
# <pre><code class="language-zsh">cdpath=(. &quot;$HOME&quot; /opt)
# echo &quot;$cdpath&quot;
# echo &quot;$CDPATH&quot;
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">. /home/user /opt
# .:/home/user:/opt
# </code></pre>
# </dd>
# <dt>Make <code>cd</code> always look into <code>$HOME</code> when the directory wasn&rsquo;t found in the current directory</dt>
# <dd>
# <pre><code class="language-zsh">cdpath=(. &quot;$HOME&quot;)
# </code></pre>
# </dd>
# </dl></html>
declare -a cdpath

# <html><p><strong><code>$CDPATH</code></strong> is a colon-separated list of directories used as a search path for the <code>cd</code> builtin command.
# The linked array variable <code>$cdpath</code> is updated at the same time when <code>$CDPATH</code> is modified.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-cdpath">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Update $CDPATH and evaluate the linked $cdpath</dt>
# <dd>
# <pre><code class="language-zsh">CDPATH=&quot;.:$HOME:/opt&quot;
# echo &quot;$cdpath&quot;
# echo &quot;$CDPATH&quot;
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">. /home/user /opt
# .:/home/user:/opt
# </code></pre>
# </dd>
# <dt>Make <code>cd</code> always look into <code>$HOME</code> when the directory wasn&rsquo;t found in the current directory</dt>
# <dd>
# <pre><code class="language-zsh">CDPATH=&quot;.:$HOME&quot;
# </code></pre>
# </dd>
# </dl></html>
declare CDPATH

# <html><p>Function <code>chpwd</code> is called when the current working directory is changed.
# The array variable <code>$chpwd_functions</code> can be used to declare additional hook functions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#index-chpwd_005ffunctions">Zsh manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Echo new working directory to STDERR and STDOUT</dt>
# <dd>
# <pre><code class="language-zsh">chpwd() { echo &quot;Working dir (STDOUT): $PWD&quot;; }
# 
# chpwd_stderr() { echo &quot;Working dir (STDERR): $PWD&quot; &gt;&amp;2; }
# chpwd_functions=(chpwd_stderr)            
# 
# cd ~
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">Working dir (STDOUT): /home/user
# Working dir (STDERR): /home/user
# </code></pre>
# </dd>
# </dl></html>
declare -a chpwd_functions

# <html><p><strong><code>$COLUMNS</code></strong> is used for the line editor and by the <code>select</code> command when it&rsquo;s printing selection lists.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-COLUMNS">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-COLUMNS_002c-use-of">The Z shell manual on the use of COLUMNS</a></li>
# </ul></html>
declare COLUMNS

# <html><p><strong><code>$commands</code></strong> provides the command hash table.
# It&rsquo;s a mapping of command name to the path of the executable, which would be executed.</p>
# <p>Setting and unsetting elements of the array works in the same way as the <code>hash</code> builtin command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-commands">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html#index-hash-1">The Z shell manual on the <code>hash</code> builtin</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the available commands</dt>
# <dd>
# <pre><code class="language-zsh">declare commands
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">commands=( [virt-login-shell]=/usr/bin/virt-login-shell [yacc]=/usr/bin/yacc )
# </code></pre>
# </dd>
# </dl></html>
declare -A commands

# <html><p><strong><code>$comppostfuncs</code></strong> contains the names of functions, which are called immediately after completion has been tried.
# Such a function is only called once unless it reinserts itself into the array when it&rsquo;s called.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-System.html#index-comppostfuncs_002c-use-of">The Z Shell manual</a></li>
# </ul></html>
declare -a comppostfuncs

# <html><p><strong><code>$compprefuncs</code></strong> contains the names of functions, which are called immediately before completion is attempted.
# Such a function is only called once unless it reinserts itself into the array when it&rsquo;s called.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-System.html#index-compprefuncs_002c-use-of">The Z Shell manual</a></li>
# </ul></html>
declare -a compprefuncs

# <html><p><strong><code>$compstate</code></strong> is an associative array to exchange values with the completion widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-compstate">The Z Shell manual</a></li>
# </ul></html>
declare -A compstate

# <html><p><strong><code>$CONTEXT</code></strong> defines the context in which zle was called to read a line.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-CONTEXT">The Z Shell manual</a></li>
# </ul></html>
declare -r CONTEXT

# <html><p><strong><code>$CORRECT_IGNORE</code></strong> defines a pattern to ignore potential spelling corrections.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-CORRECT_005fIGNORE">The Z Shell manual</a></li>
# </ul></html>
declare CORRECT_IGNORE

# <html><p><strong><code>$CORRECT_IGNORE_FILE</code></strong> defines a pattern to ignore potential spelling corrections of file names.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-CORRECT_005fIGNORE_005fFILE">The Z Shell manual</a></li>
# </ul></html>
declare CORRECT_IGNORE_FILE

# <html><p><strong><code>$CPUTYPE</code></strong> contains the type of the current machine (microprocessor class or machine model).</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-CPUTYPE">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the machine type</dt>
# <dd>
# <pre><code class="language-zsh">echo $CPUTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">x86_64
# </code></pre>
# </dd>
# </dl></html>
declare CPUTYPE

# <html><p><strong><code>$CSH_NULLCMD</code></strong> makes Zsh in csh emulation ignore <code>$NULLCMD</code> and <code>$READNULLCMD</code>
# when executing redirections without command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Options.html#index-NULLCMD_002c-ignoring">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Redirection.html#index-NULLCMD_002c-use-of">Z Shell manual on redirections with no command</a></li>
# </ul></html>
declare CSH_NULLCMD

# <html><p><strong><code>$CURRENT</code></strong> is the index of the current word inside the <code>$words</code> array.
# Its value is only correct if option <code>ksharrays</code> is not set.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-CURRENT">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-words">The Z shell manual on words</a></li>
# </ul></html>
declare CURRENT

# <html><p><strong><code>$CURSOR</code></strong> is the zero based cursor offset within the edit buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-CURSOR">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-BUFFER">The Z shell manual on BUFFER</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LBUFFER">The Z shell manual on LBUFFER</a></li>
# </ul></html>
declare -i CURSOR

# <html><p><strong><code>$CUTBUFFER</code></strong> contains the last item cut using one of the <code>kill-</code> commands.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-CUTBUFFER">The Z Shell manual</a></li>
# </ul></html>
declare CUTBUFFER

# <html><p><strong><code>$dirstack</code></strong> contains the elements of the directory stack.
# It does not contain the current working directory, in contrast to the <code>dirs</code> builtin command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dirstack">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html#index-dirs">The Z shell manual on the dirs builtin</a></li>
# <li><a href="https://zsh.sourceforge.io/Intro/intro_6.html">The Z shell manual on directory stacks</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Change working directory, print the directory stack, change back to the previous directory</dt>
# <dd>
# <pre><code class="language-zsh">cd ~
# pushd /usr/bin
# declare dirstack
# popd
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">/usr/bin ~
# dirstack=( /home/user )
# ~
# /home/user
# </code></pre>
# </dd>
# </dl></html>
declare -a dirstack

# <html><p><strong><code>$DIRSTACKSIZE</code></strong> defines the maximum size of the directory stack.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-DIRSTACKSIZE">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html#index-dirs">The Z shell manual on the dirs builtin</a></li>
# <li><a href="https://zsh.sourceforge.io/Intro/intro_6.html">The Z shell manual on directory stacks</a></li>
# </ul></html>
declare -i DIRSTACKSIZE

# <html><p><strong><code>$dis_aliases</code></strong> maps the disabled regular aliases to their expansion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005faliases">The Z Shell manual</a></li>
# </ul></html>
declare -A dis_aliases

# <html><p><strong><code>$dis_builtins</code></strong> maps the disabled builtin commands to their loading state (<code>undefined</code> or <code>defined</code>).</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005fbuiltins">The Z Shell manual</a></li>
# </ul></html>
declare -A dis_builtins

# <html><p><strong><code>$dis_functions</code></strong> maps disabled functions to their definitions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005ffunctions">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-functions-2">The Z shell manual on <code>functions</code></a></li>
# </ul></html>
declare -A dis_functions

# <html><p><strong><code>$dis_functions_source</code></strong> maps names of disabled functions to the name of the source file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005ffunctions_005fsource">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-functions_005fsource">The Z shell manual on <code>functions_source</code></a></li>
# </ul></html>
declare -r -A dis_functions_source

# <html><p><strong><code>$dis_galiases</code></strong> maps the disabled global aliases to their expansion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005fgaliases">The Z Shell manual</a></li>
# </ul></html>
declare -A dis_galiases

# <html><p><strong><code>$dis_patchars</code></strong> contains the disabled pattern characters.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005fpatchars">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-patchars">The Z Shell manual on patchars</a></li>
# </ul></html>
declare -a dis_patchars

# <html><p><strong><code>$dis_reswords</code></strong> contains the disabled reserved words.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005freswords">The Z Shell manual</a></li>
# </ul></html>
declare -r -a dis_reswords

# <html><p><strong><code>$dis_saliases</code></strong> maps the disabled suffix aliases to their expansion.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005fsaliases">The Z Shell manual</a></li>
# </ul></html>
declare -A dis_saliases

# <html><p><strong><code>$EDITOR</code></strong> is used by ZLE to choose the keymap.
# If it contains the string <code>vi</code>, then keymap <code>viins</code> is chosen.
# Otherwise, keymap <code>emacs</code> is selected.</p>
# <p>Variable <code>$VISUAL</code> is used in the same way as <code>$EDITOR</code> by ZLE.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-EDITOR">The Z Shell manual</a></li>
# </ul></html>
declare EDITOR

# <html><p><strong><code>$EGID</code></strong> contains the effective group ID of the shell process.</p>
# <p>With the sufficient permissions, a change to this variable will change the effective group ID of the shell process.
# Use a subshell to launch a command with a different effective group ID: <code>(EGID=0; command)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-EGID">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Change effective group ID of the shell process to 0 without sufficient permissions</dt>
# <dd>
# <pre><code class="language-zsh">EGID=0
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">zsh: failed to change effective group ID: permission denied
# </code></pre>
# </dd>
# </dl></html>
declare -i EGID

# <html><p><strong><code>$EPOCHREALTIME</code></strong> represents the number of seconds since the epoch as floating point value.</p>
# <p><code>$EPOCHSECONDS</code> contains the same value, but as an integer.
# <code>$epochtime</code> also represents the same value, but as an array with two elements.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHREALTIME">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHSECONDS">The Z shell manual on <code>$EPOCHSECONDS</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-epochtime">The Z shell manual on <code>$epochtime</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print <code>$EPOCHREALTIME</code></dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/datetime
# echo $EPOCHREALTIME
# </code></pre>
# </dd>
# </dl></html>
declare -r -F EPOCHREALTIME

# <html><p><strong><code>$EPOCHSECONDS</code></strong> represents the number of seconds since the epoch as integer value.</p>
# <p><code>$EPOCHREALTIME</code> contains the same value, but as a floating point value.
# <code>$epochtime</code> also represents the same value, but as an array with two elements.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHSECONDS">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHREALTIME">The Z shell manual on <code>$EPOCHREALTIME</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-epochtime">The Z shell manual on <code>$epochtime</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print <code>$EPOCHSECONDS</code></dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/datetime
# echo $EPOCHSECONDS
# </code></pre>
# </dd>
# </dl></html>
declare -r -i EPOCHSECONDS

# <html><p><strong><code>$epochtime</code></strong> is an array of two elements and contains the seconds since the epoch
# and the remainder of nanoseconds.
# Both values should be retrieved or copied at the same time to ensure consistent results.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-epochtime">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHREALTIME">The Z shell manual on <code>$EPOCHREALTIME</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-EPOCHSECONDS">The Z shell manual on <code>$EPOCHSECONDS</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print seconds and nanoseconds</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/datetime
# echo $EPOCHSECONDS
# </code></pre>
# </dd>
# </dl></html>
declare -r -a epochtime

# <html><p><strong><code>$ERRNO</code></strong> contains the value of <code>errno</code> of the most recently failed system call.
# This value is intended for debugging and can only be used after it was assigned a value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ERRNO">The Z Shell manual</a></li>
# </ul></html>
declare ERRNO

# <html><p><strong><code>$errnos</code></strong> is a mapping of <code>errno</code> error numbers to human-readable names.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-errnos">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ERRNO">The Z shell manual on <code>$ERRNO</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print name of error number 10</dt>
# <dd>
# <pre><code class="language-zsh">echo ${errno[10]}
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">ECHILD
# </code></pre>
# </dd>
# </dl></html>
declare -r -a errnos

# <html><p><strong><code>$EUID</code></strong> contains the effective user ID of the shell process.</p>
# <p>With the sufficient permissions, a change to this variable will change the effective user ID of the shell process.
# Use a subshell to launch a command with a different effective user ID: <code>(EUID=0; command)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-EUID">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Change effective user ID of the shell process to 0 without sufficient permissions</dt>
# <dd>
# <pre><code class="language-zsh">EUID=0
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">zsh: failed to change effective user ID: permission denied
# </code></pre>
# </dd>
# </dl></html>
declare -i EUID

# <html><p><strong><code>$exact</code></strong> controls completion widget behaviour when option <code>$REC_EXACT</code> is set.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-exact_002c-compstate">The Z Shell manual</a></li>
# </ul></html>
declare exact

# <html><p><strong><code>$exact_string</code></strong> contains the string of an exact match, if one was found.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-exact_005fstring_002c-compstate">The Z Shell manual</a></li>
# </ul></html>
declare exact_string

# <html><p><strong><code>$FCEDIT</code></strong> defines the editor used by the <code>fc</code> builtin. When <code>fc</code> displays the list of commands, it first
# checks <code>$FCEDIT</code>, then <code>$EDITOR</code> and finally falls back to default value <code>vi</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-FCEDIT">The Z Shell manual</a></li>
# </ul></html>
declare FCEDIT

# <html><p><strong><code>$fignore</code></strong> contains the suffixes to ignore during filename completion.
# The linked scalar variable <code>$FIGNORE</code> contains the same value, but as a colon-separated string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-fignore">The Z Shell manual</a></li>
# </ul></html>
declare -a fignore

# <html><p><strong><code>$FIGNORE</code></strong> is a colon-separated string containing the suffixes to ignore during filename completion.
# The linked variable <code>$ignore</code> contains the same value, but as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-fignore">The Z Shell manual</a></li>
# </ul></html>
declare FIGNORE

# <html><p><strong><code>$fpath</code></strong> contains the search path for function definitions.
# The linked scalar variable <code>$FPATH</code> contains the same value, but as a colon-separated string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-fpath">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#Autoloading-Functions">The Z shell manual on autoloading functions</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html#index-fpath_002c-searching">The Z shell manual on <code>autoload</code></a></li>
# </ul></html>
declare -a fpath

# <html><p><strong><code>$FPATH</code></strong> is a colon-separated string containing the search path for function definitions.
# The linked variable <code>$fpath</code> contains the same value, but as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-fpath">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#Autoloading-Functions">The Z shell manual on autoloading functions</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Builtin-Commands.html#index-fpath_002c-searching">The Z shell manual on <code>autoload</code></a></li>
# </ul></html>
declare FPATH

# <html><p><strong><code>$funcfiletrace</code></strong> contains the absolute line numbers and file names of the current call location.
# It&rsquo;s available for functions, sourced files and <code>eval</code> commands (if <code>EVAL_LINENO</code> is set).</p>
# <p>The alternative <code>$funcsourcetrace</code> contains relative line numbers, which makes it less useful for most use cases.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-funcfiletrace">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-funcsourcetrace">The Z shell manual on <code>$funcsourcetrace</code></a></li>
# </ul></html>
declare -r -a funcfiletrace

# <html><p><strong><code>$FUNCNEST</code></strong> defines the maximum nest depth of shell function invocations.
# The value is only applied if it&rsquo;s <code>&gt;= 0</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-FUNCNEST">The Z Shell manual</a></li>
# </ul></html>
declare -i FUNCNEST

# <html><p><strong><code>$funcsourcetrace</code></strong> is an array and contains the relative line numbers and the file names of the currently
# executing functions, source files and eval command (if <code>EVAL_LINENO</code> is set).</p>
# <p><code>$funcfiletrace</code> is more useful, as it contains absolute line numbers instead.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-funcsourcetrace">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-funcfiletrace">The Z shell manual on <code>$funcfiletrace</code></a></li>
# </ul></html>
declare -r -a funcsourcetrace

# <html><p><strong><code>$funcstack</code></strong> is an array and contains the names of the currently
# executing functions, source files and eval command (if <code>EVAL_LINENO</code> is set).</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-funcstack">The Z Shell manual</a></li>
# </ul></html>
declare -r -a funcstack

# <html><p><strong><code>$functions</code></strong> maps function names to their definitions.
# Adding or removing from this array will change the available functions in the shell environment.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-functions-2">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Define and Unset a Function</dt>
# <dd>
# <pre><code class="language-zsh">say() { echo hello world; }
# # print function definition
# echo ${functions[say]}
# # remove function definition
# unset &quot;functions[say]&quot;
# # attempt to use unavailable function
# say
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">echo hello world
# zsh: command not found: say
# </code></pre>
# </dd>
# </dl></html>
declare -A functions

# <html><p><strong><code>$functions_source</code></strong> maps function names to the file names, where they&rsquo;re defined.</p>
# <p>The keys are the same as in <code>$functions</code> &ndash; functions without a source file are mapped to an empty file name string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-functions_005fsource">The Z Shell manual</a></li>
# </ul></html>
declare -r -A functions_source

# <html><p><strong><code>$functrace</code></strong> contains the names and line numbers of the locations,
# where functions are called or where files are sourced.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-functrace">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print <code>$functrace</code> for nested function invocation</dt>
# <dd>
# <pre><code class="language-zsh"># in a file named &quot;test.zsh&quot;
# inner() { echo ${functrace[*]}; }
# outer() { inner; }
# 
# outer
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">$ zsh test.zsh
# outer:0 test.zsh:5
# </code></pre>
# </dd>
# </dl></html>
declare -r -a functrace

# <html><p><strong><code>$galiases</code></strong> maps global alias names to their expansions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-galiases">The Z Shell Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-aliases">The Z Shell Manual on <code>$aliases</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Declare and show global aliases</dt>
# <dd>
# <pre><code class="language-zsh">alias -g WORLD=&quot;echo hello world&quot;  
# typeset galiases
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">galiases=( [WORLD]='echo hello world' )
# </code></pre>
# </dd>
# </dl></html>
declare -A galiases

# <html><p><strong><code>$GID</code></strong> contains the real group ID of the shell process.</p>
# <p>With the sufficient permissions, a change to this variable will change the group ID of the shell process.
# Use a subshell to launch a command with a different group ID: <code>(GID=0; command)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-GID">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-EGID">The Z shell manual on <code>$EGID</code></a></li>
# </ul></html>
declare -i GID

# <html><p><strong><code>$HELPDIR</code></strong> defines the directory, where <code>Zle</code> is searching for help files.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#index-HELPDIR">The Z Shell manual</a></li>
# </ul></html>
declare HELPDIR

# <html><p><strong><code>$histchars</code></strong> defines how the Zsh shell handles history expansion and how it parses line comments.</p>
# <p>The value contains three ASCII characters:</p>
# <ol>
# <li>Character for a history expansion. Default: <code>!</code>.</li>
# <li>Character for a quick history substitution. Default: <code>^</code>.</li>
# <li>Character to start a line comment. Default: <code>#</code>.</li>
# </ol>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-histchars">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Expansion.html#History-Expansion">The Z shell manual on history expansion</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Options.html#index-comments_002c-in-interactive-shells">The Z shell manual on option <code>INTERACTIVE_COMMENTS</code> to enable comments in interactive shells</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Change line comment character for a script</dt>
# <dd>
# <pre><code class="language-zsh">#!/usr/bin/env zsh
# # Tell Zsh that underscore _ now start a line comment
# histchars[3]='_'
# _ new line comment
# echo hello world
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">hello world
# </code></pre>
# </dd>
# </dl></html>
declare histchars

# <html><p><strong><code>$HISTCHARS</code></strong> defines how the Zsh shell handles history expansion and how it parses line comments.
# This variable is deprecated, the lowercase <code>$histchars</code> should be used instead.</p>
# <p>The value contains three ASCII characters:</p>
# <ol>
# <li>Character for a history expansion. Default: <code>!</code>.</li>
# <li>Character for a quick history substitution. Default: <code>^</code>.</li>
# <li>Character to start a line comment. Default: <code>#</code>.</li>
# </ol>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-histchars">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Expansion.html#History-Expansion">The Z shell manual on history expansion</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Options.html#index-comments_002c-in-interactive-shells">The Z shell manual on option <code>INTERACTIVE_COMMENTS</code> to enable comments in interactive shells</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Change line comment character for a script</dt>
# <dd>
# <pre><code class="language-zsh">#!/usr/bin/env zsh
# # Tell Zsh that underscore _ now start a line comment
# HISTCHARS[3]='_'
# _ new line comment
# echo hello world
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">hello world
# </code></pre>
# </dd>
# </dl></html>
declare HISTCHARS

# <html><p><strong><code>$HISTCMD</code></strong> contains the current history event number of an interactive shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTCMD">The Z Shell manual</a></li>
# </ul></html>
declare HISTCMD

# <html><p><strong><code>$HISTFILE</code></strong> defines where an interactive shell saves the history when it exits.<br />
# The history is not saved if this variable is unset.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTFILE">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTORY_005fIGNORE">The Z shell manual on <code>$HISTORY_IGNORE</code></a></li>
# </ul></html>
declare HISTFILE

# <html><p><strong><code>$HISTNO</code></strong> contains the current history number.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-HISTNO">The Z Shell manual</a></li>
# </ul></html>
declare HISTNO

# <html><p><strong><code>$history</code></strong> maps history event numbers to the full history line.
# The output of <code>${history[@]}</code> is sorted and contains the most recent history event as first value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-history-2">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print Command History</dt>
# <dd>
# <pre><code class="language-zsh">typeset history
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">history=( [2]='echo second command' [1]='echo first command' )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A history

# <html><p><strong><code>$HISTORY_IGNORE</code></strong> defines a single pattern to define which history entries are ignored
# when the history file is written.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTORY_005fIGNORE">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTFILE">The Z shell manual on <code>$HISTFILE</code></a></li>
# </ul></html>
declare HISTORY_IGNORE

# <html><p><strong><code>$historywords</code></strong> contains the words stored in the history, sorted by most recent to least recently used word.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-historywords">The Z Shell manual</a></li>
# </ul></html>
declare -r -a historywords

# <html><p><strong><code>$HISTSIZE</code></strong> defines the maximum number of items in the internal history list.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HISTSIZE">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Expansion.html#History-Expansion">The Z shell manual on history expansion</a></li>
# </ul></html>
declare HISTSIZE

# <html><p><strong><code>$HOST</code></strong> contains the hostname of the machine, where <code>zsh</code> is being executed.
# It&rsquo;s similar to Bash&rsquo;s <code>$HOSTNAME</code>, which is unavailable in Zsh.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-HOST">The Z Shell manual</a></li>
# </ul></html>
declare HOST

# <html><p><strong><code>$IPREFIX</code></strong> contains a string which precedes <code>$PREFIX</code> and is not considered part of a match.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-IPREFIX">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-System.html#Completion-System">The Z shell manual on the completion system</a></li>
# </ul></html>
declare IPREFIX

# <html><p><strong><code>$ISEARCHMATCH_ACTIVE</code></strong> contains a non-zero value if <code>$BUFFER</code> is currently matched
# by an incremental search pattern.</p>
# <p><code>$ISEARCHMATCH_START</code> and <code>$ISEARCHMATCH_END</code> define start and end location of the matched part.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-ISEARCHMATCH_005fACTIVE">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ISEARCHMATCH_ACTIVE

# <html><p><strong><code>$ISEARCHMATCH_END</code></strong> contains the end of a match of an incremental search pattern.</p>
# <p>It&rsquo;s only valid if <code>$ISEARCHMATCH_ACTIVE</code> contains a non-zero value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-ISEARCHMATCH_005fEND">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ISEARCHMATCH_END

# <html><p><strong><code>$ISEARCHMATCH_START</code></strong> contains the end of a match of an incremental search pattern.</p>
# <p>It&rsquo;s only valid if <code>$ISEARCHMATCH_ACTIVE</code> contains a non-zero value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-ISEARCHMATCH_005fSTART">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ISEARCHMATCH_START

# <html><p><strong><code>$ISUFFIX</code></strong> contains a string which follows <code>$SUFFIX</code> and is not considered part of a match.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-ISUFFIX">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-SUFFIX">The Z shell manual on <code>$SUFFIX</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-System.html#Completion-System">The Z shell manual on the completion system</a></li>
# </ul></html>
declare ISUFFIX

# <html><p><strong><code>$jobdirs</code></strong> maps job numbers to the directories from which the job was launched.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-jobdirs">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Jobs-_0026-Signals.html">The Z shell manual on jobs and signals</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Run job and print start directory</dt>
# <dd>
# <pre><code class="language-zsh">ping -c 10 1.1.1.1 &gt;/dev/null &amp;
# typeset jobdirs
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">[1] 287759
# jobdirs=( [1]=/home/user )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A jobdirs

# <html><p><strong><code>$jobstates</code></strong> maps job numbers to job state. Each value is of the form <code>job-state:mark:pid=state...</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-jobstates">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Jobs-_0026-Signals.html">The Z shell manual on jobs and signals</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Run job and print job states</dt>
# <dd>
# <pre><code class="language-zsh">ping -c 10 1.1.1.1 &gt;/dev/null &amp;                                                                                                                    ~
# typeset jobstates
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">[1] 288088
# jobstates=( [1]='running:+:288088=running' )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A jobstates

# <html><p><strong><code>$jobstates</code></strong> maps job numbers to the command line used to start a job.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-jobtexts">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Jobs-_0026-Signals.html">The Z shell manual on jobs and signals</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Run job and print job command line</dt>
# <dd>
# <pre><code class="language-zsh">ping -c 10 1.1.1.1 &gt;/dev/null &amp;                                                                                                                    ~
# typeset jobtexts
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">[1] 288507
# jobtexts=( [1]='ping -c 10 1.1.1.1 &gt; /dev/null' )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A jobtexts

# <html><p><strong><code>$KEYBOARD_HACK</code></strong> defines a character which is removed from the command line of
# interactive shells before the command is executed.
# This is meant to help with keyboards which have a small RETURN key.
# Variable <code>$KEYBOARD_HACK</code> is a more general solution to replace the shell option <code>SUNKEYBOARDHACK</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-KEYBOARD_005fHACK">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Intro/intro_16.html#IDX227">The Z Shell manual on option <code>https://zsh.sourceforge.io/Intro/intro_16.html#IDX227</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Trim <code>hello worlds</code> to <code>hello world</code> with the help of <code>$KEYBOARD_HACK</code></dt>
# <dd>
# <pre><code class="language-zsh">KEYBOARD_HACK=s
# echo hello worlds # 's' is removed because of KEYBOARD_HACK
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">hello world
# </code></pre>
# </dd>
# </dl></html>
declare KEYBOARD_HACK

# <html><p><strong><code>$keymaps</code></strong> contains the names of the available keymaps.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-keymaps-2">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print available keymaps</dt>
# <dd>
# <pre><code class="language-zsh">typeset keymaps                                                                                                                                           ~
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">keymaps=( visual viopp command .safe vicmd main isearch viins emacs )
# </code></pre>
# </dd>
# </dl></html>
declare -r -a keymaps

# <html><p><strong><code>$KEYS</code></strong> contains the keys which were used to invoke the widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-KEYS">The Z Shell manual</a></li>
# </ul></html>
declare -r KEYS

# <html><p><strong><code>$KEYS_QUEUED_COUNT</code></strong> contains the number of bytes at the end of the input queue immediately available for reading.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-KEYS_005fQUEUED_005fCOUNT">The Z Shell manual</a></li>
# </ul></html>
declare -r -i KEYS_QUEUED_COUNT

# <html><p><strong><code>$KEYTIMEOUT</code></strong> defines the timeout to wait for another keypress when reading multi-character sequences.
# It&rsquo;s defined as a multiple of <code>100ms</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-KEYTIMEOUT">The Z Shell manual</a></li>
# </ul></html>
declare -i KEYTIMEOUT

# <html><p><strong><code>$killring</code></strong> contains the previously killed items.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-killring">The Z Shell manual</a></li>
# </ul></html>
declare -a killring

# <html><p><strong><code>$langinfo</code></strong> maps langinfo elements to their values.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-langinfo">The Z Shell manual</a></li>
# </ul></html>
declare -A langinfo

# <html><p><strong><code>$LASTABORTEDSEARCH</code></strong> contains the search string of the last aborted interactive search.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LASTABORTEDSEARCH">The Z Shell manual</a></li>
# </ul></html>
declare LASTABORTEDSEARCH

# <html><p><strong><code>$LASTSEARCH</code></strong> contains the last search string used by an interactive search.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LASTSEARCH">The Z Shell manual</a></li>
# </ul></html>
declare -r LASTSEARCH

# <html><p><strong><code>$LASTWIDGET</code></strong> contains the name of the last executed widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LASTWIDGET">The Z Shell manual</a></li>
# </ul></html>
declare -r LASTWIDGET

# <html><p><strong><code>$LBUFFER</code></strong> contains the part of the buffer which is left of the cursor position.
# If it&rsquo;s modified, then only that part of the buffer is replaced.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LASTWIDGET">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#User_002dDefined-Widgets">The Z Shell manual on user-defined widgets</a></li>
# </ul></html>
declare LBUFFER

# <html><p><strong><code>$LINES</code></strong> contains the number of lines of the current terminal session.
# The value is by the <code>select</code> command and the line editor.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LINES">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LINES_002c-use-of">Z Shell manual on ZLE and <code>$LINES</code></a></li>
# </ul></html>
declare LINES

# <html><p><strong><code>$LISTMAX</code></strong> defines how many matches are shown by ZLE without asking for confirmation.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LISTMAX">Z Shell manual</a></li>
# </ul></html>
declare -i LISTMAX

# <html><p><strong><code>$LOGCHECK</code></strong> defines the interval in seconds between checks for login and logout activity.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-LOGCHECK">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check every second for any login/logout event</dt>
# <dd>
# <pre><code class="language-zsh">LOGCHECK=1
# watch=(all)
# # activity is only printed after interacting with the shell
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">user1 has logged on pts/3 from :0.
# </code></pre>
# </dd>
# </dl></html>
declare -i LOGCHECK

# <html><p><strong><code>$LOGNAME</code></strong> contains the login name of the current login session.
# If <code>$LOGNAME</code> is not set in the environment of the shell, it&rsquo;s initialized to the string returned by the <a href="https://man7.org/linux/man-pages/man3/getlogin.3p.html"><code>getlogin(3)</code></a> system call if available.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-LASTWIDGET">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#User_002dDefined-Widgets">The Z Shell manual on user-defined widgets</a></li>
# </ul></html>
declare LOGNAME

# <html><p><strong><code>$MACHTYPE</code></strong> contains the machine type the Z shell was compiled for.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-MACHTYPE">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the system type</dt>
# <dd>
# <pre><code class="language-zsh">echo $MACHTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">x86_64
# </code></pre>
# </dd>
# </dl></html>
declare MACHTYPE

# <html><p><strong><code>$MAIL</code></strong> defines the file path where the shell looks for mail.
# This variable is only used if <code>$mailpath</code> and <code>$MAILPATH</code> are not set.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-MAIL">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-zsh">MAIL=~/&quot;.inbox&quot;
# MAILCHECK=10
# # Now Zsh will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAIL

# <html><p><strong><code>$MAILCHECK</code></strong> defines the interval in seconds when the shell should check for mail.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-MAILCHECK">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-zsh">mailpath=(~/&quot;.inbox?Hey, you've got mail in \$_&quot;)
# MAILCHECK=10
# # Now Zsh will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAILCHECK

# <html><p><strong><code>$mailpath</code></strong> defines the files and directories where the shell checks for new mail.
# <code>$MAILPATH</code> contains the same data as a colon-separated list.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-MAILCHECK">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-zsh">mailpath=(~/&quot;.inbox?Hey, you've got mail in \$_&quot;)
# MAILCHECK=10
# # Now Zsh will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare -a mailpath

# <html><p><strong><code>$MAILPATH</code></strong> defines the files and directories where the shell checks for new mail as a colon-separated list.
# Use <code>$mailpath</code> to define the same data as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-MAILCHECK">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Check <code>$HOME/.inbox</code> for incoming mail every 10 seconds</dt>
# <dd>
# <pre><code class="language-zsh">MAILPATH=&quot;$HOME/.inbox?Hey, you've got mail in \$_&quot;
# MAILCHECK=10
# # Now Zsh will notify you when ~/.inbox changes
# </code></pre>
# </dd>
# </dl></html>
declare MAILPATH

# <html><p><strong><code>$manpath</code></strong> defines where the <code>man</code> command searches for man files.
# This variable is not used by the Z shell, but only by the <code>man</code> command.
# Variable <code>$MANPATH</code> contains the same value as a colon-separated list.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-manpath">Z Shell manual</a></li>
# </ul></html>
declare manpath

# <html><p><strong><code>$MANPATH</code></strong> defines where the <code>man</code> command searches for man files as a colon-separated list of paths.
# This variable is not used by the Z shell, but only by the <code>man</code> command.
# Variable <code>$manpath</code> contains the same value as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-manpath">Z Shell manual</a></li>
# </ul></html>
declare MANPATH

# <html><p><strong><code>$mapfile</code></strong> contains a mapping of the files inside the current directory and allows for easy interaction with the files and their content.</p>
# <p>Reading a value yields the content of the file.
# Modifying a value writes to the file.
# Unsetting a value removes the files on disk.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-mapfile">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print file content using <code>$mapfile</code> and then remove it</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/mapfile
# echo -e &quot;hello world\nbye&quot; &gt; test-file
# echo &quot;${mapfile[test-file]}&quot;
# unset &quot;mapfile[test-file]&quot;
# 
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">hello world
# bye
# </code></pre>
# </dd>
# </dl></html>
declare mapfile

# <html><p><strong><code>$MARK</code></strong> defines an position in addition to <code>$CURSOR</code>, which is helpful in vi-mode.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-MARK">Z Shell manual</a></li>
# </ul></html>
declare mark

# <html><p><strong><code>$module_path</code></strong> defines the paths where the <code>zmodload</code> command searches for dynamically loadable modules.
# <code>$MODULE_PATH</code> contains the same data as a colon-separated list of paths.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-module_005fpath">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print current module search path</dt>
# <dd>
# <pre><code class="language-zsh">typeset module_path
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">module_path=( /usr/lib/zsh/5.9 )
# </code></pre>
# </dd>
# </dl></html>
declare -A module_path

# <html><p><strong><code>$MODULE_PATH</code></strong> defines the paths where the <code>zmodload</code> command searches for dynamically loadable modules.
# The value is a colon-separated list of paths. Variable <code>$module_path</code> contains the same data as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-module_005fpath">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print current module search path</dt>
# <dd>
# <pre><code class="language-zsh">typeset MODULE_PATH
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">MODULE_PATH=/usr/lib/zsh/5.9
# </code></pre>
# </dd>
# </dl></html>
declare MODULE_PATH

# <html><p><strong><code>$modules</code></strong> contains information about loaded, registered and aliased modules of the Zsh shell.
# The keys of this associative array are the modules names, the values have one of these values:</p>
# <ol>
# <li>loaded</li>
# <li>autoloaded</li>
# <li>alias:<em>alias name</em></li>
# </ol>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-modules-1">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print modules of Zsh</dt>
# <dd>
# <pre><code class="language-zsh">typeset modules
# # output is only shown with the first two items
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">modules=( [zsh/stat]=loaded [zsh/zutil]=loaded ... )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A modules

# <html><p><code>$nameddirs</code> maps names of named directories to the paths.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-nameddirs">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Use named directory</dt>
# <dd>
# <pre><code class="language-zsh">nameddirs=([app_cache]=/var/lib/cache [app_home]=/usr/local/share)
# ls -la ~app_home
# # output depends on the current system
# 
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">drwxr-xr-x  2 root root  3 25. Sep 11:05 .
# drwxr-xr-x 11 root root 11 20. Aug 2021  ..
# lrwxrwxrwx  1 root root  6 18. Sep 15:18 man -&gt; ../man
# </code></pre>
# </dd>
# </dl></html>
declare -A nameddirs

# <html><p><strong><code>$NULLCMD</code></strong> is executed if a command which only consists of a redirection is executed.
# The default value is <code>cat</code>.</p>
# <p>Variable <code>$READNULLCMD</code> is used instead if the redirection is an input.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-NULLCMD">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Redirection.html#index-NULLCMD_002c-use-of">Z Shell manual on redirections with no command</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-READNULLCMD">Z Shell manual on <code>$READNULLCMD</code></a></li>
# </ul></html>
declare NULLCMD

# <html><p><strong><code>$NUMERIC</code></strong> is the numeric argument used by widget functions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-NUMERIC">Z Shell manual</a></li>
# </ul></html>
declare -i NUMERIC

# <html><p><strong><code>$OLDPWD</code></strong> contains the previous working directory set by the <code>cd</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-OLDPWD">Z Shell manual</a></li>
# </ul></html>
declare OLDPWD

# <html><p><strong><code>$OPTARG</code></strong> contains the value of the last option argument processed by the <code>getopts</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-OPTARG">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print value passed to argument <code>-v</code>:</dt>
# <dd>
# <pre><code class="language-zsh">usage() { echo &quot;$0 usage: -v &lt;value&gt;&quot;; exit 0; }
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

# <html><p><strong><code>$OPTIND</code></strong> contains the index of the last option argument processed by the <code>getopts</code> builtin.</p>
# <p>Default value: <code>1</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-OPTIND">Z Shell manual</a></li>
# </ul></html>
declare -i OPTIND

# <html><p><strong><code>$options</code></strong> maps all available shell options to the current status (<code>on</code> or <code>off</code>).</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-options-1">Z Shell manual</a></li>
# </ul></html>
declare -A options

# <html><p><strong><code>$OSTYPE</code></strong> contains the operating system defined at compile time of the shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-OSTYPE">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the current OS</dt>
# <dd>
# <pre><code class="language-zsh">echo $OSTYPE
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">linux-gnu
# </code></pre>
# </dd>
# </dl></html>
declare OSTYPE

# <html><p><strong><code>$parameters</code></strong> maps the available parameters to strings describing their type and flags.
# The values follow the <a href="https://zsh.sourceforge.io/Doc/Release/Expansion.html#index-substitution_002c-parameter_002c-flags"><code>(t)</code> parameter expansion flag</a>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-parameters-1">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Expansion.html#index-substitution_002c-parameter_002c-flags">Z Shell manual on parameter expansion flags</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print all parameters with type and flags</dt>
# <dd>
# <pre><code class="language-zsh">typeset -A parameters
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text"># only the first two key-value pairs are shown
# parameters=( [RANDOM]=integer-special [USERNAME]=scalar-special ... )
# </code></pre>
# </dd>
# </dl></html>
declare -r -A parameters

# <html><p><strong><code>$patchars</code></strong> contains the enabled pattern characters.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-patchars">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-dis_005fpatchars">The Z Shell manual on dis_patchars</a></li>
# </ul></html>
declare -a patchars

# <html><p><strong><code>$path</code></strong> defines where the shell searches for commands.
# Entries are searched left to right.</p>
# <p>When you invoke a command just by name, e.g. <code>man</code> instead of <code>/usr/bin/man</code>, then the executable file is searched in <code>$path</code>.
# <code>$PATH</code> is a POSIX variable and contains the same data as a colon-separated value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-path">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Command-Execution.html#index-path_002c-use-of">Z Shell manual on command execution</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_03">POSIX specification on <code>$PATH</code></a></li>
# </ul></html>
declare -a path

# <html><p>Number of bytes which can immediately be read from the typed input.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-PENDING">Z Shell manual</a></li>
# </ul></html>
declare -r -i pending

# <html><p>Defines the interval in seconds between invocations of hook function <code>periodic</code> or the functions defined by <code>periodic_functions</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#index-PERIOD">Z Shell manual</a></li>
# </ul></html>
declare -i PERIOD

# <html><p>Defines functions in addition to function <code>periodic</code> which are executed every <code>$PERIOD</code> seconds just before a prompt.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#index-periodic_005ffunctions">Z Shell manual</a></li>
# </ul></html>
declare -a periodic_functions

# <html><p><strong><code>$pipestatus</code></strong> contains the exit statuses of the last pipeline command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-pipestatus">Z Shell manual</a></li>
# </ul></html>
declare -a pipestatus

# <html><p><strong><code>$POSTDISPLAY</code></strong> defines text which should be displayed after the end of the editable text buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-POSTDISPLAY">Z Shell manual</a></li>
# </ul></html>
declare POSTDISPLAY

# <html><p><strong><code>$POSTEDIT</code></strong> is output when the line editor exits, e.g. to reset the terminal.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-POSTEDIT">Z Shell manual</a></li>
# </ul></html>
declare POSTEDIT

# <html><p><strong><code>$PREBUFFER</code></strong> contains the contents of the lines before the current line if it&rsquo;s a multi-line input.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-PREBUFFER">Z Shell manual</a></li>
# </ul></html>
declare -r PREBUFFER

# <html><p><code>$precmd_functions</code> defines functions in addition to <code>precmd</code> which are executed before each prompt.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#index-precmd_005ffunctions">Z Shell manual</a></li>
# </ul></html>
declare -a precmd_functions

# <html><p><strong><code>$PREDISPLAY</code></strong> defines text which should be displayed before the start of the editable text buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-PREDISPLAY">Z Shell manual</a></li>
# </ul></html>
declare PREDISPLAY

# <html><p><code>$preexec_functions</code> defines functions in addition to <code>preexec</code> which are executed before a command is about to be executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Functions.html#index-preexec_005ffunctions">Z Shell manual</a></li>
# </ul></html>
declare -a preexec_functions

# <html><p><code>$PREFIX</code> contains the text of the current word up to the cursor.
# If modified it defines a common prefix for all completion matches.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-PREFIX">Z Shell manual</a></li>
# </ul></html>
declare PREFIX

# <html><p><code>$PROMPT2</code> is the same as <code>$PS2</code> and defines the secondary prompt string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PROMPT2">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS2">Z Shell manual on <code>$PS2</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion">Z Shell manual on prompt expansion</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification on <code>$PS2</code></a></li>
# </ul></html>
declare PROMPT2

# <html><p><code>$PROMPT3</code> is the same as <code>$PS3</code> and defines the prompt used with a <code>select</code> loop.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PROMPT3">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS3">Z Shell manual on <code>$PS3</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion">Z Shell manual on prompt expansion</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification on <code>$PS3</code></a></li>
# </ul></html>
declare PROMPT3

# <html><p><code>$PROMPT4</code> is the same as <code>$PS4</code> and defines the execution trace prompt.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PROMPT4">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS4">Z Shell manual on <code>$PS3</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion">Z Shell manual on prompt expansion</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification on <code>$PS3</code></a></li>
# </ul></html>
declare PROMPT4

# <html><p><strong><code>$prompt</code></strong> is the same as <code>$PS1</code> and defines the primary prompt string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-prompt">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS1">Z Shell manual on <code>$PS1</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion">Z Shell manual on prompt expansion</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification on <code>$PS1</code></a></li>
# </ul></html>
declare prompt

# <html><p><code>$PROMPT_EOL_MARK</code> customizes how the end of partial lines are shown.
# It&rsquo;s only used if the shell options <code>PROMPT_CR</code> and <code>PROMPT_SP</code> are set.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PROMPT_005fEOL_005fMARK">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Options.html#index-prompt_002c-_0021-expansion">Z Shell on prompt expansion options</a></li>
# </ul></html>
declare PROMPT_EOL_MARK

# <html><p><code>$PROMPT</code> is the same as <code>$PS1</code> and defines the primary prompt string.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PROMPT">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS1">Z Shell manual on <code>$PS1</code></a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification on <code>$PS1</code></a></li>
# </ul></html>
declare PROMPT

# <html><p><code>$psvar</code> defines elements which can be used in <code>$PROMPT</code> strings using <code>%&lt;n&gt;v</code> expansions.
# <code>$PSVAR</code> contains the same data as a colon-separated value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-psvar">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Conditional-Substrings-in-Prompts">Z Shell manual on prompt expansion using <code>%v</code> and <code>$psvar</code></a></li>
# </ul></html>
declare -a psvar

# <html><p><code>$PSVAR</code> defines elements which can be used in <code>$PROMPT</code> strings using <code>%&lt;n&gt;v</code> expansions.
# It&rsquo;s defined as a colon-separated string. <code>$psvar</code> contains the same data as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-psvar">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Conditional-Substrings-in-Prompts">Z Shell manual on prompt expansion using <code>%v</code> and <code>$psvar</code></a></li>
# </ul></html>
declare PSVAR

# <html><p><strong><code>$QIPREFIX</code></strong> contains the quoted string up to the completed word, including the double quote character.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-QIPREFIX">Z Shell manual</a></li>
# </ul></html>
declare -r QIPREFIX

# <html><p><strong><code>$QISUFFIX</code></strong> contains prefix of the quoted string which is being completed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-QISUFFIX">Z Shell manual</a></li>
# </ul></html>
declare -r QISUFFIX

# <html><p><strong><code>$RANDOM</code></strong> expands to a random integer in the range <code>[0, 32767]</code>.
# Assigning a values seeds the random name generator.</p>
# <p>The random generator generates the same numbers in subshells unless you seed it.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-RANDOM">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Seed random generator and print random value</dt>
# <dd>
# <pre><code class="language-zsh"># without seeding, the same numbers are generated in subshells
# echo &quot;subshell 1: $(echo $RANDOM)&quot;
# echo &quot;subshell 2: $(echo $RANDOM)&quot;
# 
# # seed with &quot;seconds since epoch&quot; followed by &quot;nanoseconds&quot; to enforce different values
# RANDOM=$(date +%s%N)
# echo &quot;after seeding: subshell 1: $(echo $RANDOM)&quot;
# sleep .1
# RANDOM=$(date +%s%N)
# echo &quot;after seeding: subshell 2: $(echo $RANDOM)&quot;
# 
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">subshell 1: 26215
# subshell 2: 26215
# after seeding: subshell 1: 23977
# after seeding: subshell 2: 1130
# </code></pre>
# </dd>
# </dl></html>
declare -i RANDOM

# <html><p><strong><code>$RBUFFER</code></strong> contains the suffix of the buffer which is right of the cursor position.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-RBUFFER">Z Shell manual</a></li>
# </ul></html>
declare RBUFFER

# <html><p><strong><code>$READNULLCMD</code></strong> is executed if a single input redirection is executed without a command.
# The default value is <code>more</code>.</p>
# <p>Variable <code>$NULLCMD</code> is used instead if the redirection is not an input.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-READNULLCMD">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Redirection.html#index-READNULLCMD_002c-use-of">Z Shell manual on use of <code>$READNULLCMD</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-NULLCMD">Z Shell manual on <code>$NULLCMD</code></a></li>
# </ul></html>
declare READNULLCMD

# <html><p><strong><code>$REGION_ACTIVE</code></strong> indicates if the region is currently active.
# The possible values are:</p>
# <ul>
# <li><code>0</code>: deactivate the region</li>
# <li><code>1</code>: activate the region</li>
# <li><code>2</code>: activate the region in line-wise mode</li>
# </ul>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-REGION_005fACTIVE">Z Shell manual</a></li>
# </ul></html>
declare -i REGION_ACTIVE

# <html><p><strong><code>$region_highlight</code></strong> defines highlighting of the command line for the next time it&rsquo;s redisplayed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-region_005fhighlight">Z Shell manual</a></li>
# </ul></html>
declare -a region_highlight

# <html><p><strong><code>$registers</code></strong> maps vi register buffers to buffer content.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-registers">Z Shell manual</a></li>
# </ul></html>
declare -A registers

# <html><p><strong><code>$reply</code></strong> is used by the shell to return array values back to the script.</p>
# <p>Variable <code>$REPLY</code> is used when a string value is returned instead of an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-reply">Z Shell manual</a></li>
# </ul></html>
declare -a reply

# <html><p><strong><code>$REPLY</code></strong> is used by the shell (mainly the <code>read</code> builtin and the <code>select</code> command)
# to pass a reply value to a script.</p>
# <p>Variable <code>$reply</code> is used when an array value is returned instead of a string value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-REPLY">Z Shell manual</a></li>
# </ul></html>
declare REPLY

# <html><p><strong><code>$REPORTMEMORY</code></strong> controls reporting of commands which use more memory than specified by this variable.
# The value refers to kilobytes of the resident set size.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-REPORTMEMORY">Z Shell manual</a></li>
# </ul></html>
declare REPORTMEMORY

# <html><p><strong><code>$REPORTTIME</code></strong> controls reporting of commands which take longer to execute than specified by this value.
# The value is specified in seconds of the combined user and system execution time.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-REPORTTIME">Z Shell manual</a></li>
# </ul></html>
declare REPORTTIME

# <html><p><strong><code>$reswords</code></strong> contains the enabled reserved words.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-reswords">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print enabled reserved words</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/parameter
# echo $reswords
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">if export declare function else float end do typeset then integer { select readonly coproc } ! case [[ repeat done for while time esac until local fi nocorrect foreach elif
# </code></pre>
# </dd>
# </dl></html>
declare -r -a reswords

# <html><p><strong><code>$RPROMPT2</code></strong> defines the prompt to show on the right-hand side of the screen
# when the secondary prompt is displayed on the left.</p>
# <p><code>$RPS2</code> contains the same value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-RPROMPT2">Z Shell manual</a></li>
# </ul></html>
declare RPROMPT2

# <html><p><strong><code>$RPROMPT</code></strong> defines the prompt to show on the right-hand side of the screen
# when the primary prompt is displayed on the left.</p>
# <p><code>$RPS1</code> contains the same value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-RPROMPT">Z Shell manual</a></li>
# </ul></html>
declare RPROMPT

# <html><p><strong><code>$RPS1</code></strong> defines the prompt to show on the right-hand side of the screen
# when the primary prompt is displayed on the left.</p>
# <p><code>$RPROMPT</code> contains the same value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-RPS1">Z Shell manual</a></li>
# </ul></html>
declare RPS1

# <html><p><strong><code>$RPS2</code></strong> defines the prompt to show on the right-hand side of the screen
# when the secondary prompt is displayed on the left.</p>
# <p><code>$RPROMPT2</code> contains the same value.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-RPS2">Z Shell manual</a></li>
# </ul></html>
declare RPS2

# <html><p><strong><code>$saliases</code></strong> maps suffix alias names to their expansions.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-saliases">The Z Shell Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-aliases">The Z Shell Manual on <code>$aliases</code></a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-galiases">The Z Shell Manual on <code>$galiases</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Define suffix alias to open HTML files in your browser</dt>
# <dd>
# <pre><code class="language-zsh">alias -s html=xdg-open
# typeset saliases
# # entering an html file as command will now open your browser displaying the file
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">saliases=( [html]=xdg-open )
# </code></pre>
# </dd>
# </dl></html>
declare -A saliases

# <html><p><strong><code>$SAVEHIST</code></strong> defines the maximum number of history items which are saved to disk.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-SAVEHIST">Z Shell manual</a></li>
# </ul></html>
declare -i SAVEHIST

# <html><p><strong><code>$SECONDS</code></strong> contains the seconds since the shell was invoked.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-SECONDS">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Shell uptime in seconds</dt>
# <dd>
# <pre><code class="language-zsh">sleep 2.5
# echo ${SECONDS}s shel.l uptime
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">3s shell uptime
# </code></pre>
# </dd>
# <dt>Shell uptime in seconds and milliseconds</dt>
# <dd>
# <pre><code class="language-zsh">sleep 2.5
# typeset -F SECONDS
# echo ${SECONDS}s shel.l uptime
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">3.5948560000s shell uptime
# </code></pre>
# </dd>
# </dl></html>
declare -i SECONDS

# <html><p><strong><code>$SH_NULLCMD</code></strong> makes Zsh in sh emulation ignore <code>$NULLCMD</code> and <code>$READNULLCMD</code>
# when executing redirections without command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Options.html#index-NULLCMD_002c-ignoring-1">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Redirection.html#index-NULLCMD_002c-use-of">Z Shell manual on redirections with no command</a></li>
# </ul></html>
declare SH_NULLCMD

# <html><p><strong><code>$SHLVL</code></strong> contains the level of nested Z shells.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-SHLVL">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the nesting level of the Zsh process</dt>
# <dd>
# <pre><code class="language-zsh">echo $(echo $(echo $SHLVL))
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">2
# </code></pre>
# </dd>
# </dl></html>
declare SHLVL

# <html><p><strong><code>$signals</code></strong> maps signal numbers to names.
# The items are offset by one, for example the name of signal 9 is available via <code>${10}</code>: <code>KILL</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-signals">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print names of available signals</dt>
# <dd>
# <pre><code class="language-zsh">typeset signals
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">signals=( EXIT HUP INT QUIT ILL TRAP IOT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH POLL PWR SYS ZERR DEBUG )
# </code></pre>
# </dd>
# </dl></html>
declare signals

# <html><p><strong><code>$SPROMPT</code></strong> is the prompt for spelling correction.
# <code>%R</code> expands to the word to be corrected, and <code>%r</code> expands to the correction.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-SPROMPT">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print current Zsh spelling correction prompt</dt>
# <dd>
# <pre><code class="language-zsh">typeset SPROMPT
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">SPROMPT='zsh: correct '\''%R'\'' to '\''%r'\'' [nyae]? '
# </code></pre>
# </dd>
# </dl></html>
declare SPROMPT

# <html><p><strong><code>$status</code></strong> is the decimal exit status of the most recent command executed.
# This is the same as POSIX variable <code>$?</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-status">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_003f">Z Shell manual on <code>$?</code></a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification of <code>$?</code></a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Return from function with exit status 2 and print status</dt>
# <dd>
# <pre><code class="language-zsh">a() { return 2; }
# a
# echo $status
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">2
# </code></pre>
# </dd>
# </dl></html>
declare status

# <html><p><strong><code>$STTY</code></strong> defines arguments for the <code>stty</code> command.
# If this variable is defined in the environment of the command to execute,
# then Zsh executes <code>stty $STTY</code> before the command is executed.</p>
# <p><code>$STTY</code> is ignored if it&rsquo;s defined in the shell&rsquo;s environment and not only for the command to execute.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-STTY">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Convert command output to UPPERCASE</dt>
# <dd>
# <pre><code class="language-zsh">STTY=olcuc /usr/bin/echo hello world
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">HELLO WORLD
# </code></pre>
# </dd>
# </dl></html>
declare STTY

# <html><p><strong><code>$SUFFIX</code></strong> contains the suffix of the current word at the cursor position.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-SUFFIX">Z Shell manual</a></li>
# </ul></html>
declare SUFFIX

# <html><p><strong><code>$SUFFIX_ACTIVE</code></strong> indicates the presence of an auto-removable completion suffix.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-SUFFIX_005fACTIVE">Z Shell manual</a></li>
# </ul></html>
declare -i SUFFIX_ACTIVE

# <html><p><strong><code>$SUFFIX_END</code></strong> contains the offset of the auto-removable completion suffix.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-SUFFIX_005fEND">Z Shell manual</a></li>
# </ul></html>
declare -i SUFFIX_END

# <html><p><strong><code>$SUFFIX_START</code></strong> contains the offset of the auto-removable completion suffix.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-SUFFIX_005fSTART">Z Shell manual</a></li>
# </ul></html>
declare -i SUFFIX_START

# <html><p><strong><code>$sysparams</code></strong> contains PID information about the current shell process and the last used process substitution.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-sysparams">Z Shell manual</a></li>
# </ul></html>
declare -r -A sysparams

# <html><p><strong><code>$tcp_expect_lines</code></strong> contains the lines ready during the last call <code>tcp_expect</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fexpect_005flines">Z Shell manual</a></li>
# </ul></html>
declare -a tcp_expect_lines

# <html><p><strong><code>$tcp_filter</code></strong> defines glob patterns to filter content printed on STDOUT by the <code>tcp_output</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005ffilter">Z Shell manual</a></li>
# </ul></html>
declare -a tcp_filter

# <html><p><strong><code>$TCP_HANDLER_ACTIVE</code></strong> is set to <code>1</code> by <code>tcp_fd_handler</code>
# to indicate to functions that they have been called during an editor session.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fHANDLER_005fACTIVE">Z Shell manual</a></li>
# </ul></html>
declare TCP_HANDLER_ACTIVE

# <html><p><strong><code>$TCP_LINE</code></strong> is the last line read by <code>tcp_read</code> or <code>tcp_expect</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fLINE">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005flines">Z Shell manual on <code>$tcp_lines</code></a></li>
# </ul></html>
declare TCP_LINE

# <html><p><strong><code>$TCP_LINE_FD</code></strong> contains the file descriptor from which <code>$TCP_LINE</code> was ready by <code>tcp_read</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fLINE_005fFD">Z Shell manual</a></li>
# </ul></html>
declare TCP_LINE_FD

# <html><p><strong><code>$tcp_lines</code></strong> contains all lines ready by the last call to <code>tcp_read</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005flines">Z Shell manual</a></li>
# </ul></html>
declare -a tcp_lines

# <html><p><strong><code>$TCP_LOG</code></strong> defines the path to the log file where output from all sessions will be sent.
# The value can be set by a script or be controlled with the <code>tcp_log</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fLOG">Z Shell manual</a></li>
# </ul></html>
declare TCP_LOG

# <html><p><strong><code>$tcp_no_spam_list</code></strong> is used by the <code>tcp_spam</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fno_005fspam_005flist">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fspam">Z Shell manual on <code>tcp_spam</code></a></li>
# </ul></html>
declare -a tcp_no_spam_list

# <html><p><strong><code>$tcp_on_read</code></strong> defines a mapping of function name to TCP line pattern.
# When a line is read by <code>tcp_read</code> then all patterns are tested against the line.
# The functions (i.e. the keys of this array) of matching patterns are called with two arguments:</p>
# <ol>
# <li>session name</li>
# <li>the new line</li>
# </ol>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fon_005fread">Z Shell manual</a></li>
# </ul></html>
declare -A tcp_on_read

# <html><p><strong><code>$TCP_OUTPUT</code></strong> defines the prompt which is used in <code>$TCP_LOG</code> (but not <code>$TCP_LOG_SESS</code>).
# Refer to <code>$TCP_PROMPT</code> for the format used by this variable.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fOUTPUT">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fPROMPT">Z Shell manual on <code>$TCP_PROMPT</code></a></li>
# </ul></html>
declare TCP_OUTPUT

# <html><p><strong><code>$TCP_PROMPT</code></strong> defines the prefix used to print data read by <code>tcp_read</code> to STDOUT or the log defined by <code>$TCP_LOG</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fPROMPT">Z Shell manual</a></li>
# </ul></html>
declare TCP_PROMPT

# <html><p><strong><code>$TCP_READ_DEBUG</code></strong> controls if <code>tcp_read</code> will give diagnostics about data being read.
# A non-empty value enables the logging.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fREAD_005fDEBUG">Z Shell manual</a></li>
# </ul></html>
declare TCP_READ_DEBUG

# <html><p><strong><code>$TCP_SECONDS_START</code></strong> contains a floating-point copy of <code>$SECONDS</code>
# if that variable is not yet declared as floating point.
# This variable is used by <code>tcp_read</code> and <code>tcp_expect</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fSECONDS_005fSTART">Z Shell manual</a></li>
# </ul></html>
declare -F TCP_SECONDS_START

# <html><p><strong><code>$TCP_SESS</code></strong> contains the current session and must match a session opened by <code>tcp_open</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fSESS">Z Shell manual</a></li>
# </ul></html>
declare TCP_SESS

# <html><p><strong><code>$TCP_SILENT</code></strong> controls if <code>tcp_read</code> will log data to STDOUT.
# A non-empty value disables logging.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fSILENT">Z Shell manual</a></li>
# </ul></html>
declare TCP_SILENT

# <html><p><strong><code>$tcp_spam_list</code></strong> defines the sessions used by the <code>tcp_spam</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fspam_005flist">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005fspam">Z Shell manual on <code>tcp_spam</code></a></li>
# </ul></html>
declare -a tcp_spam_list

# <html><p><strong><code>$TCP_SILENT</code></strong> defines how <code>tcp_talk</code> sends line input to the default session <code>$TCP_SESS</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fTALK_005fESCAPE">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-tcp_005ftalk">Z Shell manual on <code>tcp_talk</code></a></li>
# </ul></html>
declare TCP_TALK_ESCAPE

# <html><p><strong><code>$TCP_TIMEOUT</code></strong> defines the timeout used by <code>tcp_command</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/TCP-Function-System.html#index-TCP_005fTIMEOUT">Z Shell manual</a></li>
# </ul></html>
declare TCP_TIMEOUT

# <html><p><strong><code>$TERM</code></strong> defines the type of the terminal in use.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TERM">Z Shell manual</a></li>
# <li><a href="https://www.gnu.org/software/gettext/manual/html_node/The-TERM-variable.html">GNU gettext manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the terminal capabilities</dt>
# <dd>
# <pre><code class="language-zsh">echo $TERM
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">xterm-256color
# </code></pre>
# </dd>
# </dl></html>
declare TERM

# <html><p><strong><code>$termcap</code></strong> maps termcap capability codes to their values.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-termcap">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print termcap capability names</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/terminfo
# echo ${(k)termcap}
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">bw am xb xs xn eo gn hc km hs in da db mi ms os es xt hz ul xo nx 5i HC NR NP ND cc ut hl YA YB YC YD u 
# </code></pre>
# </dd>
# </dl></html>
declare -r -A termcap

# <html><p><strong><code>$TERMINFO</code></strong> contains the reference to the terminfo database.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TERMINFO">Z Shell manual</a></li>
# </ul></html>
declare TERMINFO

# <html><p><strong><code>$TERMINFO_DIRS</code></strong> is a colon-separated list of terminfo databases.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TERMINFO_005fDIRS">Z Shell manual</a></li>
# </ul></html>
declare TERMINFO_DIRS

# <html><p><strong><code>$TIMEFMT</code></strong> defines the format string how the <code>time</code> keyword is printing a report.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TIMEFMT">Z Shell manual</a></li>
# </ul></html>
declare TIMEFMT

# <html><p><strong><code>$TMOUT</code></strong> defines when an <code>ALRM</code> signal is sent for an idle prompt.
# If <code>$TMOUT</code> is non-zero then it defines the seconds when an alarm signal is raised for an idle prompt.
# The shell will terminate if there&rsquo;s no trap set for the signal.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TMOUT">Z Shell manual</a></li>
# </ul></html>
declare -i TMOUT

# <html><p><strong><code>$TMPPREFIX</code></strong> contains the path to the directory for temporary files and the prefix of the file name.</p>
# <p>The default of <code>/tmp/zsh</code> defines to store temporary files in directory <code>/tmp</code> and to prefix all such files with <code>zsh</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TMPPREFIX">Z Shell manual</a></li>
# </ul></html>
declare TMPPREFIX

# <html><p><strong><code>$TMPSUFFIX</code></strong> defines the prefix used for temporary files created by process substitution.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TMPSUFFIX">Z Shell manual</a></li>
# </ul></html>
declare TMPSUFFIX

# <html><p><strong><code>$TRY_BLOCK_ERROR</code></strong> is used in <code>always</code> blocks and indicates if an error occurred in the preceding list of code.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TRY_005fBLOCK_005fERROR">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#index-always-blocks">Z Shell manual on <code>always</code> blocks</a></li>
# </ul></html>
declare TRY_BLOCK_ERROR

# <html><p><strong><code>$TRY_BLOCK_INTERRUPT</code></strong> is used in <code>always</code> blocks and indicates if an interrupt from signal <code>SIGINT</code> occurred.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TRY_005fBLOCK_005fINTERRUPT">Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#index-always-blocks">Z Shell manual on <code>always</code> blocks</a></li>
# </ul></html>
declare TRY_BLOCK_INTERRUPT

# <html><p><strong><code>$TTY</code></strong> contains the name of the associated TTY if there&rsquo;s one.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TTY">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print TTY and idle time</dt>
# <dd>
# <pre><code class="language-zsh">echo $TTY
# sleep 5
# echo TTY idle time: ${TTYIDLE}s
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">/dev/pts/3
# TTY idle time: 5s
# </code></pre>
# </dd>
# </dl></html>
declare TTY

# <html><p><strong><code>$TTYIDLE</code></strong> contains the idle time of the associated TTY in seconds if there&rsquo;s a TTY available.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TTYIDLE">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print TTY and idle time</dt>
# <dd>
# <pre><code class="language-zsh">echo $TTY
# sleep 5
# echo TTY idle time: ${TTYIDLE}s
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">/dev/pts/3
# TTY idle time: 5s
# </code></pre>
# </dd>
# </dl></html>
declare TTYIDLE

# <html><p><strong><code>$UID</code></strong> contains the numeric real user ID of the current user.</p>
# <p>With the sufficient permissions, a change to this variable will change the real user ID of the shell process.
# Use a subshell to launch a command with a different effective user ID: <code>(UID=0; command)</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-UID">Z Shell manual</a></li>
# </ul></html>
declare -i UID

# <html><p><strong><code>$UNDO_CHANGE_NO</code></strong> represents the state of the undo history.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-UNDO_005fCHANGE_005fNO">Z Shell manual</a></li>
# </ul></html>
declare -r -i UNDO_CHANGE_NO

# <html><p><strong><code>$UNDO_LIMIT_NO</code></strong> refers to an existing change in the undo history.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-UNDO_005fCHANGE_005fNO">Z Shell manual</a></li>
# </ul></html>
declare -i UNDO_LIMIT_NO

# <html><p><strong><code>$userdirs</code></strong> maps usernames to the paths of their home directories.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-userdirs">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print available user names and directories</dt>
# <dd>
# <pre><code class="language-zsh">typeset userdirs
# # only the first few are shown
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">userdirs=( [gdm]=/var/lib/gdm [systemd-coredump]=/ [myUser]=/home/myUser )
# </code></pre>
# </dd>
# </dl></html>
declare -A userdirs

# <html><p><strong><code>$usergroups</code></strong> maps the names of the current user&rsquo;s groups to the group identifiers.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-usergroups">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print groups name to id mapping of current user</dt>
# <dd>
# <pre><code class="language-zsh">typeset usergroups
# # only the first few are shown
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">usergroups=( [tty]=5 [log]=19 [docker]=964 [libvirt]=968 )
# </code></pre>
# </dd>
# </dl></html>
declare -A usergroups

# <html><p><strong><code>$USERNAME</code></strong> contains the username of the real user ID of the shell process.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-USERNAME">Z Shell manual</a></li>
# </ul></html>
declare USERNAME

# <html><p><strong><code>$VENDOR</code></strong> contains the vendor of the machine used to compile Zsh.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-VENDOR">Z Shell manual</a></li>
# </ul></html>
declare VENDOR

# <html><p><strong><code>$VISUAL</code></strong> is used by ZLE to choose the keymap.
# If it contains the string <code>vi</code>, then keymap <code>viins</code> is chosen.
# Otherwise, keymap <code>emacs</code> is selected.</p>
# <p>Variable <code>$EDITOR</code> is used in the same way as <code>$VISUAL</code> by ZLE.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-VISUAL">The Z Shell manual</a></li>
# </ul></html>
declare VISUAL

# <html><p><strong><code>$watch</code></strong> contains the login/logout events to report.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-watch">The Z Shell manual</a></li>
# </ul></html>
declare -a watch

# <html><p><strong><code>$WATCH</code></strong> is a colon-separated list and contains the login/logout events to report.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-WATCH">The Z Shell manual</a></li>
# </ul></html>
declare WATCH

# <html><p><strong><code>$WATCHFMT</code></strong> defines how login/logout events are reported when they&rsquo;re triggered by <code>$watch</code> or <code>$WATCH</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-WATCHFMT">The Z Shell manual</a></li>
# </ul></html>
declare WATCHFMT

# <html><p><strong><code>$WIDGET</code></strong> contains the name of the widget currently being executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-WIDGET">The Z Shell manual</a></li>
# </ul></html>
declare -r WIDGET

# <html><p><strong><code>$WIDGETFUNC</code></strong> contains the name of the function which implements a widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-WIDGETFUNC">The Z Shell manual</a></li>
# </ul></html>
declare -r WIDGETFUNC

# <html><p><strong><code>$widgets</code></strong> maps the names of the available widgets to information about such widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-widgets-1">The Z Shell manual</a></li>
# </ul></html>
declare -r widgets

# <html><p><strong><code>$WIDGETSTYLE</code></strong> contains the implementation type of the current widget.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-WIDGETSTYLE">The Z Shell manual</a></li>
# </ul></html>
declare -r WIDGETSTYLE

# <html><p><strong><code>$WORDCHARS</code></strong> contains non-alphanumeric characters which are considered part of a word by the line editor.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-WORDCHARS">The Z Shell manual</a></li>
# </ul></html>
declare WORDCHARS

# <html><p><strong><code>$words</code></strong> contains the words of the currently edited commandline.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#index-words">The Z Shell manual</a></li>
# </ul></html>
declare -a words

# <html><p><strong><code>$YANK_ACTIVE</code></strong> contains a non-zero value if text has just been pasted into the buffer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-YANK_005fACTIVE">The Z Shell manual</a></li>
# </ul></html>
declare -r YANK_ACTIVE

# <html><p><strong><code>$YANK_END</code></strong> contains the end offset of the text which was just pasted.
# It&rsquo;s only valid if <code>$YANK_ACTIVE</code> is non-zero.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-YANK_005fEND">The Z Shell manual</a></li>
# </ul></html>
declare -i YANK_END

# <html><p><strong><code>$YANK_START</code></strong> contains the start offset of the text which was just pasted.
# It&rsquo;s only valid if <code>$YANK_ACTIVE</code> is non-zero.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-YANK_005fSTART">The Z Shell manual</a></li>
# </ul></html>
declare -i YANK_START

# <html><p><strong><code>$ZBEEP</code></strong> contains the string which is output to the terminal instead of beeping.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZBEEP">The Z Shell manual</a></li>
# </ul></html>
declare ZBEEP

# <html><p><strong><code>$zcurses_attrs</code></strong> contains the attributes supported by module <code>zsh/curses</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZBEEP">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print supported attributes of zsh/curses</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/curses
# typeset zcurses_attrs
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">zcurses_attrs=( blink bold dim reverse standout underline )
# </code></pre>
# </dd>
# </dl></html>
declare -r -a zcurses_attrs

# <html><p><strong><code>$ZCURSES_COLOR_PAIRS</code></strong> defines the maximum number of color pairs that may be defined in <code>zcurses attr</code> commands.
# The value becomes available when <code>zcurses init</code> is run.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZCURSES_005fCOLOR_005fPAIRS">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZCURSES_COLOR_PAIRS

# <html><p><strong><code>$zcurses_colors</code></strong> contains the colors supported by the <code>zsh/curses</code> module.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZCURSES_005fCOLORS">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of colors supported by the terminal</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/curses
# typeset zcurses_colors
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">zcurses_colors=( black red green yellow blue magenta cyan white default )
# </code></pre>
# </dd>
# </dl></html>
declare -r -a zcurses_colors

# <html><p><strong><code>$ZCURSES_COLORS</code></strong> contains the number of colors supported by the terminal.
# The value becomes available when <code>zcurses init</code> is run.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZCURSES_005fCOLORS">The Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of colors supported by the terminal</dt>
# <dd>
# <pre><code class="language-zsh">zmodload zsh/curses
# zcurses init
# typeset ZCURSES_COLORS
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">ZCURSES_COLORS=256
# </code></pre>
# </dd>
# </dl></html>
declare -r -i ZCURSES_COLORS

# <html><p><strong><code>$zcurses_keycodes</code></strong> contains the keycodes supported by the <code>zcurses input</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-zcurses_005fkeycodes">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-zcurses">The Z Shell manual on <code>zcurses</code></a></li>
# </ul>
# <h3>Examples</h3>
# <p>:</p>
# <pre><code class="language-zsh">zmodload zsh/curses
# typeset zcurses_keycodes
# # only the first few values are shown
# </code></pre>
# <p><strong>Output:</strong></p>
# <pre><code class="language-text">zcurses_keycodes=( BREAK SRESET RESET DOWN UP LEFT RIGHT HOME ...)
# </code></pre></html>
declare -r -a zcurses_keycodes

# <html><p><strong><code>$zcurses_windows</code></strong> contains the current list of windows created with <code>zcurses addwin</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-zcurses_005fwindows">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-zcurses">The Z Shell manual on <code>zcurses</code></a></li>
# </ul></html>
declare -r -a zcurses_windows

# <html><p><strong><code>$ZDOTDIR</code></strong> defines the path where startup files of the Z shell are searched, e.g. <code>.zshrc</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZDOTDIR">The Z Shell manual</a></li>
# </ul></html>
declare ZDOTDIR

# <html><p><strong><code>$ZFTP_ACCOUNT</code></strong> contains the account name of the current user.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fACCOUNT">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_ACCOUNT

# <html><p><strong><code>$ZFTP_CODE</code></strong> contains the three digit reply code of the last FTP reply.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fCODE">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_CODE

# <html><p><strong><code>$ZFTP_COUNT</code></strong> contains the amount of data transferred in the range of <code>[0, $ZFTP_SIZE]</code>.
# The value is only available if function <code>zftp_progress</code> is defined and called during a transfer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fCOUNT">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZFTP_COUNT

# <html><p><strong><code>$ZFTP_FILE</code></strong> contains the filename of the remote file which is being transferred.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fFILE">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_FILE

# <html><p><strong><code>$ZFTP_HOST</code></strong> contains the hostname or IP address of the current remote FTP server.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fHOST">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_HOST

# <html><p><strong><code>$ZFTP_IP</code></strong> contains the IP address of the current remote FTP server.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fIP">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_IP

# <html><p><strong><code>$ZFTP_PORT</code></strong> contains the remote TCP port of the current FTP connection, e.g. <code>21</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fPORT">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZFTP_PORT

# <html><p><strong><code>$ZFTP_PREFS</code></strong> defines the preferences of the <code>zftp</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fPREFS">The Z Shell manual</a></li>
# </ul></html>
declare ZFTP_PREFS

# <html><p><strong><code>$ZFTP_PWD</code></strong> contains the current working directory on the remote server.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fPWD">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_PWD

# <html><p><strong><code>$ZFTP_REPLY</code></strong> contains the last line of the last reply sent by an FTP server.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fREPLY">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_REPLY

# <html><p><strong><code>$ZFTP_SESSION</code></strong> contains the name of the current FTP session.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fSESSION">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_SESSION

# <html><p><strong><code>$ZFTP_SIZE</code></strong> contains the total size of the currently transferred file.
# The value is only available if function <code>zftp_progress</code> is defined and called during a transfer.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fSIZE">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZFTP_SIZE

# <html><p><strong><code>$ZFTP_SYSTEM</code></strong> contains the system type of the remote FTP server as returned by an FTP <code>SYST</code> request.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fSYSTEM">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_SYSTEM

# <html><p><strong><code>$ZFTP_TMOUT</code></strong> defines the timeout in seconds for network operations of the <code>zsh/zftp</code> module.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fTMOUT">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_TMOUT

# <html><p><strong><code>$ZFTP_TRANSFER</code></strong> is set to <code>G</code> for an FTP get and to <code>P</code> for an FTP put operation.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fTRANSFER">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_TRANSFER

# <html><p><strong><code>$ZFTP_TYPE</code></strong> defines the type to be used for data transfers. Possible values are <code>A</code> or <code>I</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fTRANSFER">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_TYPE

# <html><p><strong><code>$ZFTP_USER</code></strong> contains the username of the currently logged-in user, if available.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fUSER">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_USER

# <html><p><strong><code>$ZFTP_VERBOSE</code></strong> defines the log level of FTP operations. The value is in the range <code>[1..5]</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZFTP_005fUSER">The Z Shell manual</a></li>
# </ul></html>
declare -r ZFTP_VERBOSE

# <html><p><strong><code>$zle_bracketed_paste</code></strong> is an array with two elements to define the terminal escape sequences
# which enable and disable bracketed paste mode.</p>
# <p>Unsetting this parameter disables bracketed paste mode.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-zle_005fbracketed_005fpaste">The Z Shell manual</a></li>
# </ul></html>
declare -a zle_bracketed_paste

# <html><p><strong><code>$ZLS_COLORS</code></strong> defines how completion lists are colored in the terminal window.</p>
# <p><code>$ZLS_COLOURS</code> defines the same setting.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZLS_005fCOLORS">The Z Shell manual</a></li>
# </ul></html>
declare ZLS_COLORS

# <html><p><strong><code>$ZLS_COLOURS</code></strong> defines how completion lists are colored in the terminal window.</p>
# <p><code>$ZLS_COLORS</code> defines the same setting.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-ZLS_005fCOLOURS">The Z Shell manual</a></li>
# </ul></html>
declare ZLS_COLOURS

# <html><p><strong><code>$ZLE_LINE_ABORTED</code></strong> contains the line where an error occurred.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZLE_005fLINE_005fABORTED">The Z Shell manual</a></li>
# </ul></html>
declare ZLE_LINE_ABORTED

# <html><p><strong><code>$ZLE_RECURSIVE</code></strong> contains the current recursion level of <code>recursive-edit</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-ZLE_005fRECURSIVE">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZLE_RECURSIVE

# <html><p><strong><code>$ZLE_REMOVE_SUFFIX_CHARS</code></strong> contains the characters which trigger ZLE to remove a suffix.
# This is typically used by the completion system to interact with the line editor.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZLE_005fREMOVE_005fSUFFIX_005fCHARS">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZLE_REMOVE_SUFFIX_CHARS

# <html><p><strong><code>$ZLE_RPROMPT_INDENT</code></strong> defines the indentation of the right prompt from the right hand side of the screen.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZLE_005fRPROMPT_005fINDENT">The Z Shell manual</a></li>
# </ul></html>
declare -i ZLE_RPROMPT_INDENT

# <html><p><strong><code>$ZLE_SPACE_SUFFIX_CHARS</code></strong> contains the characters which trigger ZLE to replace a suffix with a space.
# This is typically used by the completion system to interact with the line editor.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZLE_005fSPACE_005fSUFFIX_005fCHARS">The Z Shell manual</a></li>
# </ul></html>
declare -r -i ZLE_SPACE_SUFFIX_CHARS

# <html><p><strong><code>$ZLE_STATE</code></strong> contains space-separated words which describe the current state of <code>zle</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-ZLE_005fSTATE">The Z Shell manual</a></li>
# </ul></html>
declare ZLE_STATE

# <html><p><strong><code>$ZSH_ARGZERO</code></strong> contains the name of the current script.
# If it&rsquo;s used inside an interactive shell, this variable contains the name used to invoke the shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fARGZERO">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_ARGZERO

# <html><p><strong><code>$zsh_eval_context</code></strong> contains the contexts of the currently executed code.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-zsh_005feval_005fcontext">The Z Shell manual</a></li>
# </ul></html>
declare -a zsh_eval_context

# <html><p><strong><code>$ZSH_EVAL_CONTEXT</code></strong> is a colon-separated list of the context types of the currently executed code.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fEVAL_005fCONTEXT">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_EVAL_CONTEXT

# <html><p><strong><code>$ZSH_EXECUTION_STRING</code></strong> contains the value passed to the <code>-c</code> option on the <code>zsh</code> command line.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fEXECUTION_005fSTRING">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_EXECUTION_STRING

# <html><p><strong><code>$ZSH_NAME</code></strong> contains the basename of the command used to invoke the Zsh process.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fNAME">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_NAME

# <html><p><strong><code>$ZSH_PATCHLEVEL</code></strong> describes the patch level of the Zsh repository used to compile the binary
# and is most useful for developers working on Zsh.
# Most users will prefer <code>$ZSH_VERSION</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fPATCHLEVEL">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_PATCHLEVEL

# <html><p><strong><code>$zsh_scheduled_events</code></strong> contains the events scheduled by the <code>sched</code> builtin.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#index-zsh_005fscheduled_005fevents">The Z Shell manual</a></li>
# </ul></html>
declare -r -a ZSH_PATCHLEVEL

# <html><p><strong><code>$ZSH_SCRIPT</code></strong> contains the name of the script being executed by Zsh.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fSCRIPT">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_SCRIPT

# <html><p><strong><code>$ZSH_SUBSHELL</code></strong> contains the nesting level of subshell currently being executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fSUBSHELL-_003cS_003e">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_SUBSHELL

# <html><p><strong><code>$ZSH_VERSION</code></strong> contains the version number of the Zsh process.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ZSH_005fVERSION">The Z Shell manual</a></li>
# </ul></html>
declare ZSH_VERSION