#!/bin/sh

#
# Hello world
#

hello () {
  echo "hello world"
}

#
# Get NLTK authors
#

nltk_authors () {
  git clone git@github.com:nltk/nltk.git
  cd nltk
  git authors
}

#
# Clone low-resource-languages
#

clone_lrl () {
  git clone git@github.com:RichardLitt/low-resource-languages.git
  cd low-resource-languages
}

#
# Get activity for the repository
#

lrl_activity () {
  clone_lrl
  # Installing Name Your Contributors using NPM.
  npm i -g name-your-contributors
  name-your-contributors -u RichardLitt -r low-resource-languages
}

#
# Get statistics on Richard's edits to low-resource-languages
#

lrl_RichardLitt_stats () {
  clone_lrl
  echo "The amount of lines in the file:"
  cat README.md | wc -l
  echo 'The amount of lines where Richard has been the last editor:'
  git blame README.md | grep "Richard" | wc -l
}

#
# Add data to IPFS
#

ipfs_add () {
  echo "This command assumes you have ipfs installed."
  echo "The ipfs daemon must be running in another window first."
  echo "To install, go to: https://github.com/ipfs/go-ipfs."
  ipfs add data.json
  ipfs add commands.sh
}

#
# Clean files
#

clean () {
  rm -rf nltk
  rm -rf low-resource-languages
}

#
# Usage.
#

usage () {
cat << EOF

  Usage: commands <command>

  Options:
    hello          print "hello world"
    ipfs_add       add data to IPFS
    nltk_authors   show nltk authors
    lrl_activity   show activity for lrl repository
    lrl_RichardLitt_stats   show RichardLitt's contributions
    clean          remove downloaded nltk and
                      low-resource-language repos
    -h, --help     output usage information
    -v, --version  output version

EOF
}

#
# Version.
#

version () {
  echo "1.0.0"
}

#
# Options.
#

case $1 in
  "")           usage; exit 1 ;;
  -h|--help)    usage; exit ;;
  -v|--version) version; exit ;;
  clean)        clean; exit;;
  hello)        hello; exit ;;
  ipfs_add)     ipfs_add; exit ;;
  lrl_activity) lrl_activity; exit ;;
  lrl_RichardLitt_stats) lrl_RichardLitt_stats; exit ;;
  nltk_authors) nltk_authors; exit ;;
  *)            usage; exit ;;
esac
