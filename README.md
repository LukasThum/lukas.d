# Lukas Config

This repository summarizes my configuration and provides build instructions for the development environment that I'm using. It's designed to be a one-command installer so that I can always reset my computer and easily reinstall my programs.

## Software

The software used is:
- Fish Shell
- Helix Editor
- Zellij Mux
- Browsh Browser
- *Optional: Qutebrowser

### Fish

Use the latest version as is, but add custom config to work more like Vim and in my liking.

### Helix

Use as is with custom config.

#### Easy Motion

There is an idea to add an Easy Motion mode, but that would be a lot of custom code that breaks with future updates. I already did this for earlier versions based on a pull request from someone else that never came through. They also plan to include this, so maybe time will solve the problem anyways. Another idea is to make my own pull request. This would be a lot of effort but has some pros, too:
- Part of the official repo, so it has to be maintained by not me
- Can be used as a resume in my GitHub
- General experience, I never took part in an open-source project (fame and glory, too)

### Zellij

Use as is but customize a lot to work with my keycodes.

### Browsh

Customize to work like Vimium. The code is already there, but Go projects somehow suck to develop with their stupid `~/.go` folder.

### Qutebrowser

Works as expected with some config. It could be used as a stand-in until Browsh flies. This could also be just Chrome since I need to keep that anyways. So maybe just forget about it. Cool browser anyways.

## Structure

This repo will live in `~/.config/lukas.d/`. There will be a `repos` folder that contains the current repos from git, and there will be a `config` folder that contains:

```bash
.config
├── fish
│   ├── completions
│   ├── conf.d
│   └── functions
├── repos
│   ├── fish-shell
│   └── helix
```

To set up your development environment with this configuration, simply clone this repository into the `~/.config/lukas.d/` directory and run the installation script. This will automatically set up the specified software with the custom configurations provided in the repo.

## Ideas
make zellij tabs somehow initialize as workspaces?