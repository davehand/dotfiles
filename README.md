# dotfiles
System configuration files for Mac/Linux

##### Setup instructions:
    Backup iTunes library and .ssh config
    Refresh preference files
    Perform clean OS install
    Ensure XCode installed & agree to License Agreement
    Install Mac apps: Pages, Numbers, Keynote, iMovie, GarageBand
    git clone https://github.com/davehand/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./install.sh

##### Post-Install:
    rbenv install <latest-version-ruby>
    rbenv global <latest-version-ruby>
    gem install awesome_print wirb bropages
    pip install -U numpy scipy scikit-learn
    pip install matplotlib
    pip install requests
    Install other Mac apps: Wunderlist, Mint QuickView & others from Brewfile list
    Restore iTunes library and .ssh config
    Set System Preferences & Check for Mac updates

##### ToDo:
* Add update commands to bashrc

##### Borrowed From:
* [exchgr/dotfiles](https://github.com/exchgr/dotfiles)
* [everett1992/dotfiles](https://github.com/everett1992/dotfiles)
