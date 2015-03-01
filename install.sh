#!/bin/bash

# http://stackoverflow.com/a/246128/796907 
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

readonly FILE_PATTERN=.?*rc

# http://stackoverflow.com/a/965072/796907
for f in $DIR/$FILE_PATTERN; do ln -f -s $f ~/$(basename "$f"); done

ls -la ~/$FILE_PATTERN
