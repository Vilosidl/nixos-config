#!/usr/bin/bash

# <html><p><strong><code>$0</code></strong> is the name of the currently executed command.
# If a function is executed, then <code>$0</code> is the name of the script.</p>
# <p>Bash 5.0 and later allows modifications of <code>$0</code> via <code>BASH_ARGV0</code>.
# Values assigned to <code>BASH_ARGV0</code> automatically apply to <code>$0</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print command name</dt>
# <dd>
# <pre><code class="language-sh">echo $0
# </code></pre>
# </dd>
# </dl></html>
declare -r 0

# <html><p><strong><code>$1</code></strong> is the value of the first positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 1st parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $1
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${1-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 1

# <html><p><strong><code>$2</code></strong> is the value of the second positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 2nd parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $2
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${2-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 2

# <html><p><strong><code>$3</code></strong> is the value of the third positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 3rd parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $3
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${3-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 3

# <html><p><strong><code>$4</code></strong> is the value of the fourth positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 4th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $4
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${4-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 4

# <html><p><strong><code>$5</code></strong> is the value of the fifth positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 5th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $5
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${5-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 5

# <html><p><strong><code>$6</code></strong> is the value of the sixth positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 6th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $6
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${6-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 6

# <html><p><strong><code>$7</code></strong> is the value of the seventh positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 7th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $7
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${7-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 7

# <html><p><strong><code>$8</code></strong> is the value of the eighth positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9899919899/utilities/V3_chap02.html#tag_18_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 8th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $8
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${8-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 8

# <html><p><strong><code>$9</code></strong> is the value of the ninth positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9999919999/utilities/V3_chap02.html#tag_19_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 9th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo $9
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${9-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 9

# <html><p><strong><code>$10</code></strong> is the value of the tenth positional parameter.
# It has to be referenced as parameter expansion, e.g. <code>${10}</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9999919999/utilities/V3_chap02.html#tag_19_01">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print 10th parameter value</dt>
# <dd>
# <pre><code class="language-sh">echo ${10}
# </code></pre>
# </dd>
# <dt>Print with a fallback value</dt>
# <dd>
# <pre><code class="language-sh">echo ${10-Fallback value}
# </code></pre>
# </dd>
# </dl></html>
declare -r 10

# <html><p><strong><code>$@</code></strong> expands to the positional parameters <code>$1</code>, <code>$2</code>, etc. producing one field for each parameter.</p>
# <p><code>$*</code> is similar, but only produces a single value, which contains all values at once.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_0040">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print positional parameters as multiple values</dt>
# <dd>
# <pre><code class="language-sh">set a b
# for p in &quot;$@&quot;; do echo &quot;value: $p&quot;; done
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">value: a
# value: b
# </code></pre>
# </dd>
# <dt>Print positional parameters as one value</dt>
# <dd>
# <pre><code class="language-sh">set a b
# for p in &quot;$*&quot;; do echo &quot;value: $p&quot;; done
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">value: a b
# </code></pre>
# </dd>
# </dl></html>
declare @

# <html><p><strong><code>$-</code></strong> expands to the current option flags.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_002d-1">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print option flags</dt>
# <dd>
# <pre><code class="language-sh">echo &quot;$-&quot;
# </code></pre>
# </dd>
# </dl></html>
declare '-'

# <html><p><strong><code>$$</code></strong> expands to the process ID of the invoked shell.
# In a subshell it expands to the same ID as that of the parent process.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_0024">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print PID of the main shell twice</dt>
# <dd>
# <pre><code class="language-sh"># main
# echo &quot;$$&quot;
# # subshell
# (echo &quot;$$&quot;)
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">140352
# 140352
# </code></pre>
# </dd>
# </dl></html>
declare -i $

# <html><p><strong><code>$!</code></strong> expands to the process ID of the most recent background command executed in the current shell.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_0021">Z Shell manual</a></li>
# </ul></html>
declare -i !

# <html><p><strong><code>$#</code></strong> is the number of available positional parameters <code>$1</code>, <code>$2</code>, etc.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_0023">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print number of positional parameters</dt>
# <dd>
# <pre><code class="language-sh">set a b c 
# echo &quot;$#&quot;
# </code></pre>
# </dd>
# </dl></html>
declare -i '#'

# <html><p><strong><code>$?</code></strong> is the decimal exit status of the most recent command executed.</p>
# <p>Following the execution of a pipe, <code>$?</code> gives the exit status of the last command executed.</p>
# <p>Following the execution of a function, <code>$?</code> gives the exit status the last command executed in the function.
# The <code>return</code> builtin command allows to define the exit status of a function.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_003f">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Return from function with exit status 2 and print status</dt>
# <dd>
# <pre><code class="language-sh">a() { return 2; }
# a
# echo $?
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">2
# </code></pre>
# </dd>
# </dl></html>
declare -i '?'

# <html><p><strong><code>$*</code></strong> expands to a single word, which contains the values of all positional parameters <code>$1</code>, <code>$2</code>, etc.</p>
# <p><code>$@</code> is similar, but produces multiple values, one for each positional parameter.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_02">POSIX specification</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-_002a">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print positional parameters as one value</dt>
# <dd>
# <pre><code class="language-sh">set a b
# for p in &quot;$*&quot;; do echo &quot;value: $p&quot;; done
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">value: a b
# </code></pre>
# </dd>
# <dt>Print positional parameters as multiple values</dt>
# <dd>
# <pre><code class="language-sh">set a b
# for p in &quot;$@&quot;; do echo &quot;value: $p&quot;; done
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">value: a
# value: b
# </code></pre>
# </dd>
# </dl></html>
declare *

# <html><p><strong><code>$ENV</code></strong> contains a path to a file, which is executed to set up a shell in interactive mode.</p>
# <p>In Zsh, <code>$ENV</code> is only used if the shell is interactive and if zsh is emulating <code>sh</code> or <code>ksh</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_03">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-ENV">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-ENV">The Z Shell manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Invocation.html#index-ENV_002c-use-of">The Z shell manual on shell emulation</a></li>
# </ul></html>
declare ENV

# <html><p><strong><code>$HOME</code></strong> contains the path of the current user&rsquo;s home directory.
# It&rsquo;s used in tilde expansion.</p>
# <p><code>$HOME</code> is also used as the default argument for the <code>cd</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#Bourne-Shell-Variables">Bash manual</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_03">POSIX specification</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Output the path to the current user&rsquo;s home directory.</dt>
# <dd>
# <pre><code class="language-sh">echo &quot;$HOME&quot;
# </code></pre>
# </dd>
# <dt>Tilde expansion for the current user</dt>
# <dd>
# <pre><code class="language-sh">echo ~
# </code></pre>
# </dd>
# <dt>Tilde expansion for another user</dt>
# <dd>
# <pre><code class="language-sh">echo ~jane
# </code></pre>
# </dd>
# </dl></html>
declare HOME

# <html><p>The shell uses each character of the <strong><code>IFS</code></strong> variable as a separator during word splitting.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#Bourne-Shell-Variables">IFS in the Bash manual</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_06_05">POSIX specification on field splitting</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>IFS to split a word</dt>
# <dd>
# <pre><code class="language-sh">var1=&quot;a+b+c&quot;
# IFS=+
# echo $var1
# </code></pre>
# </dd>
# </dl></html>
declare IFS

# <html><p><strong><code>$LANG</code></strong> defines the fallback locale category in the absence of the more specific <code>LC_</code> variables, e.g. <code>LC_ALL</code> or <code>LC_TIME</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LANG">Bash Manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LANG">Z Shell Manual</a></li>
# </ul></html>
declare LANG

# <html><p><strong>$LC_ALL</strong> defines the value for all language categories. The value of the LC_ALL environment variable has precedence over any of the other environment variables starting with <code>LC_</code> (<code>LC_COLLATE</code>, <code>LC_CTYPE</code>, <code>LC_MESSAGES</code>, <code>LC_MONETARY</code>, <code>LC_NUMERIC</code>, <code>LC_TIME</code>) and the <code>LANG</code> environment variable.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fALL">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LC_005fALL">Z Shell manual</a></li>
# </ul></html>
declare LC_ALL

# <html><p><strong>$LC_COLLATE</strong> defines the collation order for some functions of the shell.
# For example, it&rsquo;s used for sorting.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fCOLLATE">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LC_005fCOLLATE">Z Shell manual</a></li>
# </ul></html>
declare LC_COLLATE

# <html><p><strong>$LC_CTYPE</strong> determines the locale category for character handling functions.
# <code>$LC_ALL</code> is overriding <code>$LC_CTYPE</code>.
# If <code>$LC_CTYPE</code> is not set, then the value of <code>$LANG</code> is used as a fallback.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fCTYPE">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fCTYPE">Z Shell manual</a></li>
# </ul></html>
declare LC_CTYPE

# <html><p><strong>$LC_MESSAGES</strong> defines the languages used by the special <code>$&quot;&quot;</code> message handling of your shell.
# <code>$LC_ALL</code> is overriding <code>$LC_MESSAGES</code>.
# If <code>$LC_MESSAGES</code> is not set, then the value of <code>$LANG</code> is used as a fallback.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fMESSAGES-1">Bash manual on LC_MESSAGES</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Locale-Translation.html#Locale-Translation">Bash manual on locale translation</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LC_005fMESSAGES">Z Shell manual</a></li>
# </ul></html>
declare LC_MESSAGES

# <html><p><strong>$LC_NUMERIC</strong> defines the locale category for numeric formatting, e.g. how <code>printf</code> is formatting numbers.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fNUMERIC">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LC_005fNUMERIC">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Printf using German number formatting</dt>
# <dd>
# <pre><code class="language-sh">LC_NUMERIC=&quot;de_DE.UTF8&quot; command printf &quot;%d: %.2f\n&quot; 12345 12345
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">12345: 12345,00
# </code></pre>
# </dd>
# </dl></html>
declare LC_NUMERIC

# <html><p><strong>$LC_TIME</strong> defines the locale category for date and time formatting.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LC_005fTIME">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LC_005fTIME">Z Shell manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print name of day in English and German</dt>
# <dd>
# <pre><code class="language-sh">LC_TIME=&quot;en_US.UTF8&quot; date +%A
# LC_TIME=&quot;de_DE.UTF8&quot; date +%A
# </code></pre>
# <strong>Output:</strong>
# <pre><code class="language-text">Thursday
# Donnerstag
# </code></pre>
# </dd>
# </dl></html>
declare LC_TIME

# <html><p><strong><code>$LINENO</code></strong> contains the line number, which is currently being executed.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_03">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-LINENO">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-LINENO">Z Shell manual</a></li>
# </ul></html>
declare -r LINENO

# <html><p><strong><code>$NLSPATH</code></strong> is related to translation lookup in message catalogs.
# Refer to the specification below for details.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_02">POSIX specification</a></li>
# </ul></html>
declare NLSPATH

# <html><p><strong><code>$PATH</code></strong> defines where the shell searches for commands.
# Separate entries with colons <code>:</code>.
# Entries are searched left to right.</p>
# <p>When you invoke a command just by name, e.g. <code>man</code> instead of <code>/usr/bin/man</code>, then the executable file is searched in <code>$PATH</code>.</p>
# <p>In Zsh the variable <code>$path</code> contains the same data as <code>$PATH</code>, but as an array.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html#tag_08_03">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-PATH">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-path">Z Shell manual</a></li>
# </ul></html>
declare PATH

# <html><p><strong><code>$PPID</code></strong> is read-only and contains the process id of the shell&rsquo;s parent process.
# The value remains the same even in subshells.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_03">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PPID">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PPID">Z Shell manual</a></li>
# </ul></html>
declare -r -i PPID

# <html><p><strong><code>$PS1</code></strong> defines the primary prompt string of your shell. Only shells running in interactive mode use it.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-PS1">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html#Controlling-the-Prompt">Bash manual on &quot;Controlling the Prompt</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PS1">Z Shell manual</a></li>
# </ul></html>
declare PS1

# <html><p><strong><code>$PS2</code></strong> defines the secondary prompt string of your shell. It&rsquo;s used for line continuations. Only shells running in interactive mode use it.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#index-PS2">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html#Controlling-the-Prompt">Bash manual on &ldquo;Controlling the Prompt&rdquo;</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification</a></li>
# </ul></html>
declare PS2

# <html><p><strong><code>$PS4</code></strong> defines the prompt string of your shell, which is printed during shell debugging.
# It&rsquo;s printed when line tracing is enabled, e.g. by calling <code>set -x</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PS4">Bash manual</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html#Controlling-the-Prompt">Bash manual on &quot;Controlling the Prompt</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xcu_chap02.html#tag_23_02_05_03">POSIX specification</a></li>
# </ul></html>
declare PS4

# <html><p><strong><code>$PWD</code></strong> contains the absolute pathname of the current working directory.</p>
# <p>The <code>pwd</code> command is helpful to work with the working directory.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_05_03">POSIX specification</a></li>
# <li><a href="https://pubs.opengroup.org/onlinepubs/9699919799/utilities/pwd.html">POSIX specification on the <code>pwd</code> command</a></li>
# <li><a href="https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-PWD">Bash manual</a></li>
# <li><a href="https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-PWD">Z Shell manual</a></li>
# </ul></html>
declare PWD

