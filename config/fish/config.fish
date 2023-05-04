if status is-interactive
end

function fish_greeting
end

function fish_prompt
  echo (pwd)'> '
end

fish_add_path /opt/homebrew/bin
fish_add_path ~/.cargo/bin

export EDITOR=hx
export VISUAL="$EDITOR"

fish_vi_key_bindings