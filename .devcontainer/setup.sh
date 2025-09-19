#!/bin/bash
set -e

# Initialize bench if not already done
if [ ! -d "frappe-bench" ]; then
  bench init frappe-bench --frappe-branch version-15
  cd frappe-bench
  bench new-site mysite.local --mariadb-root-password root --admin-password admin --no-mariadb-socket
  bench get-app erpnext --branch version-15
  bench --site mysite.local install-app erpnext
else
  cd frappe-bench
fi

# Start bench in background (for devcontainer)
bench start &
