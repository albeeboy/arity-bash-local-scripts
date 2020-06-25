### Add these to your .bash_profile or .bashrc file if you feel like it ###

# build arity patterns (edit this with your own local paths and current version)
PATTERN='/Users/user/path/to/1274-009-05-arity-cms/web/wp-content/themes/arity/resources/assets/static/patterns/X.X.X'
SRC='/Users/user/path/to/1274-arity-design-system-bb/public/'
SLASH='/'

build-arity() {
  if [ -d "$PATTERN" ]
  then
    rm -rf "$PATTERN"
    echo 'SUCCESS: Arity files removed'
  fi
  mkdir "$PATTERN"
  cp -r "$SRC"css "$SRC"icons "$SRC"images "$SRC"js "$PATTERN"$SLASH
  echo 'SUCCESS: Arity files copied'
}

alias copy-arity-patterns='build-arity'

# MAMP PRO users may find this helpful
# declare a variable to select the highest MAMP PHP version 
PHP_VERSION=$(ls /Applications/MAMP/bin/php/ | sort -n | tail -n 1)

# add MAMP PHP to PATH variable
export PATH="/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH"
# add default PHP to your PATH variable
# export PATH="/usr/bin/php:$PATH"
