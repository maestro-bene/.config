#!/bin/bash

# Retrieve the passphrase from Dashlane
dcli note title="Passphrase GPG"  | gpg --batch --passphrase-fd 0 --pinentry-mode loopback --decrypt $HOME/.config/gitresel-pat.txt.gpg 2>/dev/null

