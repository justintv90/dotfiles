# This tmux statusbar config was created by tmuxline.vim
# on wo, 18 nov 2015

set -g status-bg "colour236"
set -g message-command-fg "colour250"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour109"
set -g message-bg "colour239"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour250"
set -g message-command-bg "colour239"
set -g status-attr "none"
set -g pane-border-fg "colour239"
set -g status-left-attr "none"
setw -g window-status-fg "colour250"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour236"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour109"
setw -g window-status-separator ""
setw -g window-status-bg "colour236"
set -g status-left ""
set -g status-right "#[fg=colour235,bg=colour109] %H:%M "
setw -g window-status-format "#[fg=colour250,bg=colour236] #I #[fg=colour250,bg=colour236]#W "
setw -g window-status-current-format "#[fg=colour236,bg=colour239,nobold,nounderscore,noitalics]#[fg=colour250,bg=colour239] #W #[fg=colour239,bg=colour236,nobold,nounderscore,noitalics]"


# Prefix highlighter
set -g status-right '#{prefix_highlight} | %a %Y-%m-%d %H:%M'
