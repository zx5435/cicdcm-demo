#!/bin/bash

# tee check.log <<-'EOF'
# EOF

while true;do
	# curl -sS localhost:1212/1.html >> check.log 2>&1
	# curl -s localhost:1212/1.html -i | grep -e 'Date:' -e 'X-HOSTNAME:' -e 'html:' >> check.log
	curl -sS localhost:1212/1.php >> check.log 2>&1
done;

