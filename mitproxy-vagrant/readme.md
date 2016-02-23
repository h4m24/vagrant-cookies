This is just a box to proxy http/https from browser and view the output for troubleshooting/Development purposes Only
The CA's are shared between the vm and the host so they can be installed into browser easily

I recommend that you install a new browser that is not usually used and add that CA to it to accept mitmproxy certificates


mitmproxy here isnt configured as T proxy so it has to be assigned as a proxy from browser/phone



after box is up do the following
vagrant ssh
mitmproxy
