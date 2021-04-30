# TODOs

New MacOS Catalina is zsh by default, not bash.  Therefore, change shell back to use this:

```bash
chsh -s /bin/bash
```

Some errors reported when doing the following:

```bash
./.macos
```

Consider taking some time to resolve these, tweak the settings further:

```
Warning: Idle sleep timings for "Battery Power" may not behave as expected.
- Display sleep should have a lower timeout than system sleep.
Warning: Idle sleep timings for "Battery Power" may not behave as expected.
- Display sleep should have a lower timeout than system sleep.
Warning: Idle sleep timings for "Battery Power" may not behave as expected.
- Display sleep should have a lower timeout than system sleep.
rm: /private/var/vm/sleepimage: No such file or directory
touch: /private/var/vm/sleepimage: Operation not permitted
chflags: /private/var/vm/sleepimage: No such file or directory
2020-06-29 22:34:31.145 defaults[56640:910904] Could not write domain /.Spotlight-V100/VolumeConfiguration; exiting
410:491: execution error: Terminal got an error: The file /Users/benjamin.petersen/init/Solarized Dark xterm-256color.terminal does not exist. (1)
The file /Users/benjamin.petersen/init/Solarized Dark.itermcolors does not exist.
disablelocal: Unrecognized verb.
Done. Note that some of these changes require a logout/restart to take effect.
```