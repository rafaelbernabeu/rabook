find . -name "*.xml" -exec rm {} \;
or
find . -name '*.xml' -print0 | xargs -0 rm
