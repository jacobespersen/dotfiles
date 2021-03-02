# Aliases for git and vim
alias v="nvim"
alias vim="nvim"
alias g="git"
alias gs="git status"
alias ga="git add"
alias gm="git commit"
alias gp="git push"

# Alias for Sublime text
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Track the last non-empty command. It's a bit of a hack to make sure
# execution time and last command is tracked correctly.
#set -l cmd_line (commandline)
#if test -n "$cmd_line"
#    set -g last_cmd_line $cmd_line
#    set -ge new_prompt
#else
#    set -g new_prompt true
#end

# Show last execution time and growl notify if it took long enough
set -l now (date +%s)
if test $last_exec_timestamp
    set -l taken (math $now - $last_exec_timestamp)
    if test $taken -gt 10 -a -n "$new_prompt"
        error taken $taken
        echo "Returned $last_status, took $taken seconds" | \
            growlnotify -s $last_cmd_line
        # Clear the last_cmd_line so pressing enter doesn't repeat
        set -ge last_cmd_line
    end
end
set -g last_exec_timestamp $now
set  PATH /Users/user/anaconda/bin $PATH

# rvm default
status --is-interactive; and source (rbenv init -|psub)

# Aliases for rails
alias spec="bundle exec rspec"
