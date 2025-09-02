#!/usr/bin/bash

# <html><p><strong><code>$BATS_FILE_EXTENSION</code></strong> specifies the extension of test files that should be found when running a test suite.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print extension</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Extension: $BATS_FILE_EXTENSION&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_FILE_EXTENSION

# <html><p><strong><code>$BATS_FILE_TMPDIR</code></strong> is the path to the temporary directory common to all tests of a test file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print directory path</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Path: $BATS_FILE_TMPDIR&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_FILE_TMPDIR

# <html><p><strong><code>$BATS_RUN_COMMAND</code></strong> is the last executed <code>run</code> command used in your test case.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print last run command</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   run test
#   echo &quot;Last run command: $BATS_RUN_COMMAND&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_RUN_COMMAND

# <html><p><strong><code>$BATS_RUN_TMPDIR</code></strong> is the path to a directory, where bats stores its own temporary files.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print directory</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;$BATS_RUN_TMPDIR&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_RUN_TMPDIR

# <html><p><strong><code>$BATS_SUITE_TEST_NUMBER</code></strong> is the index of the current test case in the test suite.
# The test suite covers all test cases of all test files.</p>
# <p><code>$BATS_TEST_NUMBER</code> is similar, but for the current file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print current test index in suite</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Index: $BATS_SUITE_TEST_NUMBER&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare -i BATS_SUITE_TEST_NUMBER

# <html><p><strong><code>$BATS_SUITE_TMPDIR</code></strong> is the path to the temporary directory common to all test of a suite.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print directory path</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Path: $BATS_SUITE_TMPDIR&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_SUITE_TMPDIR

# <html><p><strong><code>$BATS_TEST_DESCRIPTION</code></strong> is the description of the current test case.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print test description</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example test with output to STDOUT&quot; {
#   echo &quot;Description: $BATS_TEST_DESCRIPTION&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_DESCRIPTION

# <html><p><strong><code>$BATS_TEST_DIRNAME</code></strong> is the path to the directory containing the current bats test file</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print parent directory path</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Parent: $BATS_TEST_DIRNAME&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_DIRNAME

# <html><p><strong><code>$BATS_TEST_FILENAME</code></strong> is the fully expanded path to the current bats test file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print the path to the current test file</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Path: $BATS_TEST_FILENAME&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_FILENAME

# <html><p><strong><code>$BATS_TEST_NAME</code></strong> is the name of the function containing the current test case.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print name of current test function</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Function name: $BATS_TEST_NAME&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_NAME

# <html><p><strong><code>$BATS_TEST_NAME_PREFIX</code></strong> will be prepended to the description of each test on stdout and in reports.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Add prefix &rsquo;LIBRARY: &rsquo; to both test functions</dt>
# <dd>
# <pre><code class="language-bash">BATS_TEST_NAME_PREFIX=&quot;LIBRARY: &quot;
# 
# @test &quot;first test&quot; {
#     echo ok &gt;&amp;3
# }
# 
# @test &quot;second test&quot; {
#     echo ok &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_NAME_PREFIX

# <html><p><strong><code>$BATS_TEST_NAMES</code></strong> is an array of function names. There&rsquo;s one item for each test defined in the current bats test
# file.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print functions corresponding to your defined tests</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example 1&quot; {
#   skip
# }
# 
# @test &quot;Example&quot; {
#   echo &quot;Function names: ${BATS_TEST_NAMES[*]}&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare -a BATS_TEST_NAMES

# <html><p><strong><code>$BATS_TEST_NUMBER</code></strong> is the (1-based) index of the current test case in the test file.</p>
# <p><code>$BATS_SUITE_TEST_NUMBER</code> is similar, but for the complete suite.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print current test index</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Index: $BATS_TEST_NUMBER&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare -i BATS_TEST_NUMBER

# <html><p><strong><code>$BATS_TEST_RETRIES</code></strong> defines the number of additional attempts to run flaky tests.
# The default value <code>0</code> indicates that tests are expected to pass at the first attempt.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Retry up to three times to run a flaky bats-core test</dt>
# <dd>
# <pre><code class="language-bash">BATS_TEST_RETRIES=2 # additional attempts
# 
# @test &quot;Flaky test&quot; {
#   return &quot;$(( RANDOM % 2 ))&quot;
# }
# </code></pre>
# </dd>
# </dl></html>
declare -i BATS_TEST_RETRIES

# <html><p><strong><code>$BATS_TEST_TIMEOUT</code></strong> defines the number of seconds, after which a test (including <code>setup()</code>) will be terminated.
# This must be configured in <code>setup_file()</code> or earlier.
# If you define it inside <code>setup_file()</code>, please make sure to <code>export</code>.</p>
# <p>Please refer to the <a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a> for further details how to use this.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Timeout after 5 seconds</dt>
# <dd>
# <pre><code class="language-bash">#!/usr/bin/env bats    
# BATS_TEST_TIMEOUT=5
# 
# @test &quot;Timeout test&quot; {
#     # this will always time out
#     sleep 10
# }
# </code></pre>
# </dd>
# </dl></html>
declare -i BATS_TEST_TIMEOUT

# <html><p><strong><code>$BATS_TEST_TMPDIR</code></strong> is the path to the directory for all temporary files of the current test case.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print directory path</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;Path: $BATS_TEST_TMPDIR&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TEST_TMPDIR

# <html><p><strong><code>$BATS_TMPDIR</code></strong> is the path to the base directory used by bats to create temporary files.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print path to directory</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;$BATS_TMPDIR&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_TMPDIR

# <html><p><strong><code>$BATS_VERSION</code></strong> contains the version of bats-core running the tests.</p>
# <p>BashSupport Pro bundles bats-core with an additional formatter to integrate with the IDE&rsquo;s test runner.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#special-variables">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print version of bats-core</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   echo &quot;$BATS_VERSION&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare BATS_VERSION

# <html><p><strong><code>$lines</code></strong> is an array variable and contains the individual lines of the output of the last executed run command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print status code of run</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   run cat nonexistent_filename
#   echo &quot;Status: $status&quot; &gt;&amp;3
#   echo &quot;Output: $output&quot; &gt;&amp;3
#   echo &quot;First line: ${lines[0]}&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare -a lines

# <html><p><strong><code>$output</code></strong> contains the combined content of STDOUT and STDERR of the last executed run command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print status code of run</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   run cat nonexistent_filename
#   echo &quot;Status: $status&quot; &gt;&amp;3
#   echo &quot;Output: $output&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare output

# <html><p><strong><code>$status</code></strong> contains the status code of the last executed <code>run</code> command.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Print status code of run</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   run cat nonexistent_filename
#   echo &quot;Status: $status&quot; &gt;&amp;3
#   echo &quot;Output: $output&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare status

# <html><p><strong><code>$stderr</code></strong> contains the output on STDERR of the last executed run command.
# This variable is only available if <code>run</code> was executed with <code>--separate-stderr</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Split output of <code>run</code> into STDOUT and STDERR</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   # enable support for flags of the run command
#   bats_require_minimum_version 1.5.0
# 
#   # keep output on STDERR in $stderr and $stderr_lines
#   run --separate-stderr cat nonexistent_filename
#   echo &quot;Status: $status&quot; &gt;&amp;3
#   echo &quot;Output: $stderr&quot; &gt;&amp;3
#   echo &quot;First line: ${stderr_lines[0]}&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare stderr

# <html><p><strong><code>$stderr_lines</code></strong> is an array variable and contains the individual lines of the output of the last executed run command.
# This variable is only available if <code>run</code> was executed with <code>--separate-stderr</code>.</p>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Split output of <code>run</code> into STDOUT and STDERR</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;Example&quot; {
#   # enable support for flags of the run command
#   bats_require_minimum_version 1.5.0
# 
#   # keep output on STDERR in $stderr and $stderr_lines
#   run --separate-stderr cat nonexistent_filename
#   echo &quot;Status: $status&quot; &gt;&amp;3
#   echo &quot;Output: $stderr&quot; &gt;&amp;3
#   echo &quot;First line: ${stderr_lines[0]}&quot; &gt;&amp;3
# }
# </code></pre>
# </dd>
# </dl></html>
declare -a stderr_lines



# <html><h2>bats_load_library &ldquo;library-name&rdquo;</h2>
# <p>Instructs bats-core to load a library.</p>
# <p>The directories, where bats-core libraries are searched, are defined by <code>$BATS_LIB_PATH</code>.</p>
# <p>BashSupport Pro bundles the following libraries and adds them at the end of <code>$BATS_LIB_PATH</code>:</p>
# <ul>
# <li><a href="https://github.com/bats-core/bats-file">bats-file</a></li>
# <li><a href="https://github.com/bats-core/bats-assert">bats-assert</a></li>
# <li><a href="https://github.com/bats-core/bats-support">bats-support</a></li>
# </ul>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><strong>1st argument</strong><br><em>(required)</em></td><td valign="top">Library name or library file path to load</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html?highlight=library#bats-load-library-load-system-wide-libraries">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Load the <code>bats-file</code> library:</dt>
# <dd>
# <pre><code class="language-bash">bats_load_library &quot;bats-file&quot;
# </code></pre>
# </dd>
# </dl></html>
function bats_load_library() { :; }

# <html><h2>bats_pipe command0 | command1</h2>
# <p>Paired with <code>run</code>, the <code>bats_pipe</code> help function allows testing command pipelines.
# For this function, the pipeline separator is <code>\\|</code> and not <code>|</code>.</p>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><code>-&lt;N&gt;</code></td><td valign="top">Return the exit code from the <N>th command in the chain of piped commands, instead of default behavior of &ldquo;the last non-zero status&rdquo;.</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://github.com/bats-core/bats-core/blob/master/man/bats.7.ronn#the-bats_pipe-helper">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Executing a command with <code>run</code> and <code>bats_pipe</code></dt>
# <dd>
# <pre><code class="language-bash">@test &quot;executing pipeline with commands a and b with run and bats_pipe&quot; {
#     run bats_pipe a \| b
# }
# </code></pre>
# </dd>
# </dl></html>
function bats_pipe() { :; }

# <html><h2><code>bats_require_minimum_version</code> &ldquo;minimum version&rdquo;</h2>
# <p>Instructs bats-core to verify its library version.
# The test will fail if the version is lower than the required minimum version.</p>
# <p><code>bats_require_minimum_version</code> is required to enable enhancements of <code>run</code> and other commands, which
# were added in later versions of bats-core.</p>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><strong>1st argument</strong><br><em>(required)</em></td><td valign="top">The minimum required version, e.g. &ldquo;1.5.0&rdquo;</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/warnings/BW02.html">bats-core manual: BW02</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Require bats-core 1.5.0 or later:</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;my test&quot; {
#   bats_require_minimum_version 1.5.0
#   run --separate-stderr some-command
# }
# </code></pre>
# </dd>
# </dl></html>
function bats_require_minimum_version() { :; }

# <html><h2>load &ldquo;file-path.bash&rdquo;</h2>
# <p>Source a file, relative to the current file.</p>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><strong>1st argument</strong><br><em>(required)</em></td><td valign="top">Path to the file to load. It&rsquo;s relative to the current file.</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html?highlight=library#load-share-common-code">bats-core manual</a></li>
# </ul></html>
function load() { :; }

# <html><h2>Execute arguments as command</h2>
# <p>Runs the arguments as a command and then stores output and exit status into special global variables.
# It returns with status code <code>0</code> to help making assertions in your test case.</p>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><code>-0</code> to <code>-255</code></td><td valign="top">Expect that the command exits with the given exit status.</td></tr>
# <tr><td valign="top"><code>!</code></td><td valign="top">Expect that the command exits with a non-zero exit status.</td></tr>
# <tr><td valign="top"><code>--keep-empty-lines</code></td><td valign="top">Keep empty lines in <code>${lines[0]}</code>.</td></tr>
# <tr><td valign="top"><code>--separate-stderr</code></td><td valign="top">Store STDOUT in <code>$output</code> and STDERR in <code>$stderr</code>. Lines are stored in <code>$lines</code> and <code>$stderr_lines</code>.</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html?highlight=library#run-test-other-commands">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Executing a command with <code>run</code></dt>
# <dd>
# <pre><code class="language-bash">@test &quot;executing a command with run&quot; {
#     run -0 command -v bash
# }
# </code></pre>
# </dd>
# </dl></html>
function run() { :; }

# <html><h2>load &ldquo;reason&rdquo;</h2>
# <p>Skip a bats-core test.</p>
# <h3>Usage</h3>
# <table>
# <thead></thead>
# <tbody>
# <tr><td valign="top"><strong>1st argument</strong></td><td valign="top">Defines the reason why the test is skipped.</td></tr>
# </tbody>
# </table>
# <h3>Links</h3>
# <ul>
# <li><a href="https://bats-core.readthedocs.io/en/stable/writing-tests.html?highlight=library#skip-easily-skip-tests">bats-core manual</a></li>
# </ul>
# <h3>Examples</h3>
# <dl>
# <dt>Skipping a test</dt>
# <dd>
# <pre><code class="language-bash">@test &quot;skipped test method&quot; {
#     skip &quot;Skip reason&quot;
# }
# </code></pre>
# </dd>
# </dl></html>
function skip() { :; }