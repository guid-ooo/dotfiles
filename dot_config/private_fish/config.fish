if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /opt/homebrew/bin
set -U fish_greeting ""
set -U COLUMNS = 1
set -U LINES = 80
fish_ssh_agent
oh-my-posh --init --shell fish --config ~/.poshthemes/guidjo.json | source