# Aliases for git and vim
alias g="git"
alias gs="git status"
alias ga="git add"
alias gm="git commit"
alias gp="git push"
alias testing="RAILS_ENV=test bundle exec rspec"
alias python=python3

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

#status --is-interactive; and source (rbenv init -|psub)

# Aliases for rails
alias spec="RAILS_ENV=test bundle exec rspec"

#alias psql='/Applications/Postgres.app/Contents/Versions/13/bin/psql -p5432 "postgres"'
alias psql='/Applications/Postgres.app/Contents/Versions/13/bin/psql'
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# rbenv
set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims

source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_functions.d/chruby.fish
source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_conf.d/chruby_auto.fish

set -gx PATH $PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Created by `pipx` on 2025-07-01 14:32:12
set PATH $PATH /Users/jacobespersen/.local/bin

# Cargo (Rust)
set PATH $PATH /Users/jacobespersen/.cargo/bin

string match -q "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)

