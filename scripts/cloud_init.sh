#cloud-config
repo_update: true
repo_upgrade: all

packages:
 - httpd

runcmd:
 - systemctl start httpd
 - sudo systemctl enable httpd