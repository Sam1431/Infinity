<div align="center">

# InfiniMacs

[Install](#install) • [Documentation] • [FAQ] • [Screenshots]

![Doom Emacs Screenshot](https://raw.githubusercontent.com/Sam1431/Infinity/main/core/screenshots/infinity-dashboard.png)

</div>

---

### Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Install](#install)
- [Roadmap](#roadmap)
- [Getting help](#getting-help)
- [Contribute](#contribute)


# Introduction
<a href="http://ultravioletbat.deviantart.com/art/Yay-Evil-111710573">
  <img src="https://raw.githubusercontent.com/Sam1431/Infinity/main/core/screenshots/infinity-busy.png" align="left" />
</a>

> What happens when a Vimmer enters Emacs and 
> makes it his ONLY Desktop environment ? THIS !!


Infinity is a configuration framework for tailored for Emacs users 
who want a solid - minimal base, you can also take snippets from this project to
make your own config. As for me , I created it Just For Fun ( JFF - the only 

Some of its features are

+ **Its pretty fast** By some gc hacks and ":defer t"ing almost every package InfiniMacs keeps is startup time in-between 0.5 to 2 seconds
+ **Close to Vanilla.** There's less between you and vanilla Emacs by design. Its really minimal and uses completely vanilla packages
+ **Opinionated, but not Mandatory.** most of the packages are optionated , except for the core obviously
+ **Your system, your rules.** Only you know the best for your system and everything about Infinimacs is in your hand
  

# Features
- Inspired from Doom and SpaceMacs
- Powered by Straight.el
- A modular emacs config
- A standard library designed to simplify your elisp bike shedding.
- A Spacemacs-esque [keybinding scheme][bindings], centered around leader
  and localleader prefix keys (<kbd>SPC</kbd> and <kbd>SPC</kbd><kbd>m</kbd> for
  evil users, <kbd>C-c</kbd> and <kbd>C-c l</kbd> for vanilla users).


# Prerequisites
+ Git 2.23+
+ Emacs 26.3+ (*27.2 is recommended*, or [native-comp](https://www.emacswiki.org/emacs/GccEmacs)).
  
Infinity is comprised of [60 ish  modules][Modules], some of which may have
additional dependencies. Pretty minimal , I guess ??


# Install
``` sh
git clone --depth 1 https://github.com/sam1431/Infinity ~/.emacs.d
```

# Some of the options present in Infinity are :-

+ `infinity/update-all` Update all packages added by use-package with straight.el
+ `infinity/desktop-restart` Restart EXWM , if using a Infinimacs as a desktop , r
+ `infinity/open-dashboard` Open Infinity Emacs Dashboard
+ `infinity/quit-dashboard` Close Infinity Emacs Dashboard
+ `infinity/update-package` Update a seperate package from message


# Roadmap
Doom is an active and ongoing project. To make that development more
transparent, its roadmap (and other concerns) are published across three github
project boards and a newsletter:

+ [Development Roadmap](https://github.com/hlissner/doom-emacs/projects/3):
  roughly outlines our goals between release milestones and their progress.
+ [Plugins under review](https://github.com/hlissner/doom-emacs/projects/2):
  lists plugins we are watching and considering for inclusion, and what their
  status for inclusion is. Please consult this list before requesting new
  packages/features.
+ [Upstream bugs](https://github.com/hlissner/doom-emacs/projects/5): lists
  issues that originate from elsewhere, and whether or not we have local
  workarounds or temporary fixes for them.
+ ~~Doom's newsletter~~ (not finished) will contain changelogs in between
  releases.
  

# Getting help
Emacs is no journey of a mere thousand miles. You _will_ run into problems and
mysterious errors. When you do, here are some places you can look for help:

+ [Our documentation][documentation] covers many use cases.
  + [The Configuration section][configuration] covers how to configure Doom and
    its packages.
  + [The Package Management section][package-management] covers how to install
    and disable packages.
  + [This section][bin/doom] explains the `bin/doom` script's most important
    commands.
  + [This section][common-mistakes] lists some common configuration mistakes new
    users make, when migrating a config from another distro or their own.
  + [This answer][change-theme] shows you how to add your own themes to your
    private config.
  + [This answer][change-font] shows you how to change the default font.
  + Your issue may be documented in the [FAQ].
+ With Emacs built-in help system documentation is a keystroke away:
  + For functions: <kbd>SPC h f</kbd> or <kbd>C-h f</kbd>
  + For variables: <kbd>SPC h v</kbd> or <kbd>C-h v</kbd>
  + For a keybind: <kbd>SPC h k</kbd> or <kbd>C-h k</kbd>
  + To search available keybinds: <kbd>SPC h b b</kbd> or <kbd>C-h b b</kbd>
+ Run `bin/doom doctor` to detect common issues with your development
  environment and private config.
+ Check out the [FAQ], in case your question has already been answered.
+ Search [Doom's issue tracker](https://github.com/hlissner/doom-emacs/issues) in case your issue was already
  reported.
+ Hop on [our Discord server][discord]; it's active and friendly! Keep an eye on
  the #announcements channel, where I announce breaking updates and releases.


# Contribute
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com) 
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple?style=flat-square)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on liberapay](https://img.shields.io/badge/liberapay-donate-1.svg?style=flat-square&logo=liberapay&color=blue)][liberapay]
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?style=flat-square&logo=paypal&color=blue)][paypal]

Doom is a labor of love and incurable madness, but I'm only one guy. Doom
wouldn't be where it is today without your help. I welcome contributions of any
kind!


[bindings]: modules/config/default/+evil-bindings.el
[editorconfig]: http://editorconfig.org/
[evil-mode]: https://github.com/emacs-evil/evil
[fd]: https://github.com/sharkdp/fd
[gnu emacs]: https://www.gnu.org/software/emacs/
[helm]: https://github.com/emacs-helm/helm
[ivy]: https://github.com/abo-abo/swiper
[lsp-mode]: https://github.com/emacs-lsp/lsp-mode
[eglot]: https://github.com/joaotavora/eglot
[nix]: https://nixos.org
[ported-vim-plugins]: modules/editor/evil/README.org#ported-vim-plugins
[ripgrep]: https://github.com/BurntSushi/ripgrep
[straight.el]: https://github.com/raxod502/straight.el
[vim-easymotion]: https://github.com/easymotion/vim-easymotion
[vim-lion]: https://github.com/tommcdo/vim-lion
[vim-sneak]: https://github.com/justinmk/vim-sneak
[vim-unimpaired]: https://github.com/tpope/vim-unimpaired
