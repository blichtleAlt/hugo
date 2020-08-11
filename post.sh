#!/bin/bash
set -e 
set -x

if [ "$1" == "" ]; then
	echo "usage: ./post.sh <new-post-title>"
	exit
fi

hugo new blog/$1

# Strip date from new post
new_date=$(grep "date:" content/blog/$1 | cut -f2- -d:)
new_date=`echo $new_date | sed 's/ *$//g'`

# Strip title from new post
new_title=$(grep "title:" content/blog/$1 | cut -f2- -d:)
new_title=`echo $new_title | sed 's/ *$//g'`


# Copy over template
cat new_post.md > content/blog/$1

sed -i "/^date =/s/.*$/date = $new_date/" content/blog/$1
sed -i "/^title =/s/.*$/title = $new_title/" content/blog/$1



