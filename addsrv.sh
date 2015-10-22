#!/bin/bash
# This script serves to make a LayersBox Adapter aware of a new backend service.
# Will become obsolete in the future as there should be only one such script included in the default LayersBox.

if [ -f nginx.conf ] 
 then
	out=$(docker ps -a | grep -c adapter-data)
	if [ $out -gt 0 ] 
	 then
		# copy nginx configuration entry for service
		docker cp nginx.conf adapter-data:/usr/local/openresty/conf/services
		# restart nginx daemon in the adapter container
		docker kill --signal="HUP" adapter
	fi
fi
