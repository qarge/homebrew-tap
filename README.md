# qarge/homebrew-tap

Homebrew casks for apps by [qarge](https://github.com/qarge).

## Install

One line, no separate tap step:

```sh
brew install --cask qarge/tap/holdon
```

Or tap once and use the short names afterwards:

```sh
brew tap qarge/tap
brew trust qarge/tap      # Homebrew 6 and later, skip on older versions
brew install --cask holdon
```

## Casks

| Cask | App |
| --- | --- |
| `holdon` | [HoldOn](https://github.com/qarge/HoldOn), a menu bar app that makes ⌘Q require a short hold |

## Releasing a new version

Bump `version` in the cask, set `sha256` to the output of `shasum -a 256` on the new dmg,
then check it:

```sh
brew style --cask qarge/tap/holdon
brew audit --cask --strict --online qarge/tap/holdon
```
