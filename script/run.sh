#!/bin/bash

set -e

REPO_DIR=/opt/svn/repo

if [ "`ls -A ${REPO_DIR}`" = "" ]; then
	echo "${REPO_DIR}" is empty need init...
	svnadmin create ${REPO_DIR}
	\cp -rf /opt/svn/config/* ${REPO_DIR}/conf
fi

svnserve -d -r ${REPO_DIR}

echo "svnserve started.."

tail -f /dev/null