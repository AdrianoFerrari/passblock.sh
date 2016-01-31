# Password protect terminal commands

Used (for example), to make it harder to re-enable internet after blocking it with terminal command.
(I use `nmcli nm enable false` to disable, and have an alias for nmcli that resolves to `passblock.sh nmcli`).

## "internet off" command
Add this to your `.zshrc` or `.bashrc`:

```bash
mynmcli() {
  if [[ "$1" == "on" ]]; then
    passblock nmcli nm enable true
  elif [[ "$1" == "off" ]]; then
    nmcli nm enable false
  fi
}

alias internet=mynmcli
alias nmcli=""
```
This lets you turn the `internet off`. To turn the `internet on`, you'll be prompted for a (long complicated) password stored in /etc/verify.

