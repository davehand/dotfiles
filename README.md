# dotfiles
System configuration files for Mac/Linux

##### Setup instructions:
    Backup iTunes library and .ssh config
    Refresh preference files
    Perform clean OS install
    Ensure XCode installed & agree to License Agreement
    git clone https://github.com/davehand/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    chmod ~/.dotfiles to be owned by user
    ./install.sh

##### Post-Install:
    rbenv install <latest-version-ruby>
    rbenv global <latest-version-ruby>
    Restart iTerm
    gem install awesome_print wirb bropages
    pip install -U numpy scipy scikit-learn
    pip install matplotlib
    pip install requests
    Install other Mac apps: Listed in Brewfile list
    Restore iTunes library and .ssh config
    Set System Preferences & Check for Mac updates
    Apply preferences in prefs folder
    For iTerm, point it to the prefs directory, then reload iTerm

##### Borrowed From:
* [exchgr/dotfiles](https://github.com/exchgr/dotfiles)
* [everett1992/dotfiles](https://github.com/everett1992/dotfiles)
