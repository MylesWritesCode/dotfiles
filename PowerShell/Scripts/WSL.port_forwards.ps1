# Must be run in admin terminal
$port=8080
netsh interface portproxy delete v4tov4 listenport=$port # Delete any existing port 4000 forwarding
$wslIp=(wsl -d Ubuntu -e sh -c "ip addr show eth0 | grep 'inet\b' | awk '{print `$2}' | cut -d/ -f1") # Get the private IP of the WSL2 instance
netsh interface portproxy add v4tov4 listenport=$port connectaddress="$wslIp" connectport=$port
