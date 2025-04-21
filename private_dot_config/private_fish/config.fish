if status is-interactive
  set fish_key_bindings fish_vi_key_bindings
  set -gx EDITOR nvim
  eval "$(devbox global shellenv)"
  set -g theme_display_nix no
end
