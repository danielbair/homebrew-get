homebrew-get
===============

Attempt to use wget to retrieve home brew package files where curl fails

## What is it?

It's an [external command][ec] for [Homebrew][h] that provides a new command, `get`,
attempt to use wget to retrieve home brew package files where curl fails

This is tricky business. So this command comes with a warning.

[ec]: https://github.com/mxcl/homebrew/wiki/External-Commands
[h]: https://github.com/mxcl/homebrew

### Warning

There are formulae that do not specify all of their dependencies. This means that it is possible that
this command will remove something you still need or won't remove something you no longer want. Generally, it is pretty good.
Until someone comes up with a clever way around this, you need to be careful what you uninstall.
A formula could also depend on something you want to keep around, while nothing else actually
depends on it (except you). See Usage to ignore certain formula from being removed.

## Installation

Tap this repository and install via `brew` itself.

```
$ brew tap danielbair/get
```

Once you've tapped it, you can use the command as described above.

## Usage

Although the script's name is `brew-get.rb`, [Homebrew external
commands][ec] work in such a way that you invoke it as `brew get`. (It
functions exactly like a sub-command built into Homebrew.)

### Examples

Typical use case, will download `mpv`

```
$ brew get mpv
```

## Options

Option | Description
-------|------------
`--force` | Overrides the dependency check for just the top-level formula you are trying to remove. If you try to remove 'ruby' for example, you most likely will not be able to do this because other fomulae specify this as a dependency. This option will let you remove 'ruby'. This will NOT bypass dependency checks for the formula's children. If 'ruby' depends on 'git', then 'git' will still not be removed.
`--ignore` | Ignore some dependencies from removal. This option must appear after the formulae to remove.
`--dry-run` | Does a dry-run. Goes through the whole process without actually removing anything. This gives you a chance to observe what packages would be removed and a chance to ignore them when you do it for real.
`--quiet` | No output

