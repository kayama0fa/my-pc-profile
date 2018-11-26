# my-pc-profile

Install homebrew and install automatically.

```
cd $my-pc-profile
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
```

## 検索

```
brew search $NAME
brew info $NAME
```

cask, mac app store横断検索

## アップデート

```
brew upgrade --cleanup
brew cask upgrade
```

## メンテ

```
brew cleanup
brew cask cleanup
```
