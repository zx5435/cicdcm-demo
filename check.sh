#!/bin/bash

# tee check.log <<-'EOF'
# EOF

echo 'Using `sh ./check.sh localhost:1212/1.php`'
echo 'url: '$1

while true;do
	# curl -sS localhost:1212/1.html >> check.log 2>&1
	# curl -s $1 -i | grep -e 'Date:' -e 'X-HOSTNAME:' -e 'html:' >> check.log
	curl -sS $1 >> check.log 2>&1
done;

