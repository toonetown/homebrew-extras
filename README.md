homebrew-extras
===============

Homebrew tap with additional formulas and casks that I find useful - mostly some auto-detecting environment scripts.

To install: `brew tap toonetown/homebrew-extras`.

Installing the `toonetown-extras` formula will set up your scripts in `/etc/profile` to read from
`/usr/local/etc/profile.d` (where the `*-env` formulas will install themselves).  To sync your shell environment with
your window environment, you should run and load the launchagent script (you can do this using homebrew-services).
