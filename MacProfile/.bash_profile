## User Local
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

## Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME

## Android
export ANDROID_HOME=~/Documents/Android/sdk
# TOOLS
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/
# NDK
export PATH=$PATH:$ANDROID_HOME/ndk-bundle/ 
# AAPT
export PATH=$PATH:$ANDROID_HOME/build-tools/23.0.1

##gradle
export GRADLE_HOME=/Users/handezhao/Library/opt/gradle/gradle-3.5/bin
export PATH=$PATH:$GRADLE_HOME

## brew
function brewuuc() { brew update && brew upgrade && brew cleanup; }

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
function portuuc() { sudo port -v selfupdate && sudo port upgrade outdated; }

## Private script home
export PATH=$PATH:~/bin

## alias
alias ll='ls -al'
alias gita='gitk --all&'
alias setting='adb shell am start com.android.settings'
alias py36='source activate py36'
alias py27='source activate py27'

# added by Anaconda3 5.0.1 installer
export PATH="/Users/handezhao/anaconda3/bin:$PATH"
