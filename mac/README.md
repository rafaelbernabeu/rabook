[Apple Downloads](https://support.apple.com/downloads)


[Como criar um instalador inicializável no macOS](https://support.apple.com/pt-br/HT201372)


[Como apagar o disco rígido e reinstalar o macOS](https://support.apple.com/pt-br/HT208496)


[Catalina](https://support.apple.com/pt-br/HT201475)
```
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

[Mojave](https://support.apple.com/pt-br/HT210190)
```
sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

[High Sierra](https://support.apple.com/pt-br/HT208969)
```
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

[El Capitan](https://support.apple.com/pt-br/HT206886)
```
sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app
```


Enable Key Repetition on Mac
```
defaults write -g ApplePressAndHoldEnabled -bool false
```

Sudo with Touch ID
Edit /etc/pam.d/sudo and add the following line to the top:
```
auth sufficient pam_tid.so
```

List Services
```
launchctl list
```

Reset Launchpad
```
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```
