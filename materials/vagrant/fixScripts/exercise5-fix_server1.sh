#!/bin/bash
#add fix to exercise5-server1 here
sudo bash -c "echo ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE5U3T6oyHXIzQ2XtLxZeqtip3uH7V94/UP1qS/8/AVu >> .ssh/authorized_keys"
sudo tee -a /home/vagrant/.ssh/id_ed25519 > /dev/null <<EOT
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACBOVN0+qMh1yM0Nl7S8WXqrYqd7h+1feP1D9akv/PwFbgAAAJgMqCXtDKgl
7QAAAAtzc2gtZWQyNTUxOQAAACBOVN0+qMh1yM0Nl7S8WXqrYqd7h+1feP1D9akv/PwFbg
AAAEBor2KAMK5KQiCgWiwebZJwVBfdDMWVOVtSXRQyAt+Htk5U3T6oyHXIzQ2XtLxZeqti
p3uH7V94/UP1qS/8/AVuAAAAEk15IGtleSBmb3Igc2VydmVyMgECAw==
-----END OPENSSH PRIVATE KEY-----
EOT
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config