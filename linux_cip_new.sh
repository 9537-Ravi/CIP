#!/bin/bash
apt-get update
 
apt-get install sssd sssd-tools -y
cd /home/delhivery/Desktop/Linux
ls -lrth
cp -rp Google_2026_05_22_46666* /var/
chmod 777 /var/Google_2026_05_22_46666*
cat /home/delhivery/Desktop/Linux/sssd_conf.txt > /etc/sssd/sssd.conf
chown root:root /etc/sssd/sssd.conf 
chmod 600 /etc/sssd/sssd.conf 
service sssd restart 
cat /home/delhivery/Desktop/Linux/custom_conf.txt > /etc/gdm3/custom.conf
echo "deb https://packages.cloud.google.com/apt endpoint-verification main" | sudo tee -a /etc/apt/sources.list.d/endpoint-verification.list

apt install curl -y

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

apt-get update

apt-get install endpoint-verification -y

getent passwd


pam-auth-update
getent passwd
sudo apt update -y
sudo apt install -y sssd-tools
sudo gedit/etc/sssd/sssd.conf
#!/bin/bash

# URL of the file to be downloaded
curl="https://raw.githubusercontent.com/9537-Ravi/CIP/main/custom_conf.txt"

# Temporary file to store the downloaded file
TEMP_FILE="/tmp/temp_downloaded_file"

# Destination file where the data will be copied
DESTINATION_FILE="gedit/etc/sssd/sssd.conf"

# Download the file using curl
curl -o "$https://raw.githubusercontent.com/9537-Ravi/CIP/main/custom_conf.txt"

# Check if the download was successful
if [ $? -eq 0 ]; then
    # Copy data from the temporary file to the destination file
    cp "$TEMP_FILE" "$DESTINATION_FILE"
    echo "Data copied from downloaded file to $DESTINATION_FILE successfully."
else
    echo "Failed to download the file."
fi

# Clean up the temporary file
rm "$TEMP_FILE"
#if the Fiel open Balnk so copy bellow Fiel
#[sssd]
services = nss, pam
domains = delhivery.com
[domain/delhivery.com]
ignore_group_members = true
sudo_provider = none
cache_credentials = true
ldap_tls_cert = /var/Google_2026_05_22_46666.crt
ldap_tls_key = /var/Google_2026_05_22_46666.key
ldap_uri = ldaps://ldap.google.com:636
ldap_search_base = dc=delhivery,dc=com
id_provider = ldap
auth_provider = ldap
ldap_schema = rfc2307bis
ldap_user_uuid = entryUUID
ldap_groups_use_matching_rule_in_chain = true
ldap_initgroups_use_matching_rule_in_chain = true
enumerate = false

sudo chown root:root /etc/sssd/sssd.conf
sudo chmod 600 /etc/sssd/sssd.conf
sudo service sssd restart
sudo service sssd status | grep Active:
gedit /etc/gdm3/custom.conf
#if the Fiel open Balnk so copy bellow Fiel
# GDM configuration storage
#
# See /usr/share/gdm/gdm.schemas for a list of available options.
 
[daemon]
# Uncomment the line below to force the login screen to use Xorg
WaylandEnable=true

# Enabling automatic login
#  AutomaticLoginEnable = true
#  AutomaticLogin = user1
 
# Enabling timed login
#  TimedLoginEnable = true
#  TimedLogin = user1
#  TimedLoginDelay = 10
 
[security]
 
[xdmcp]
 
[chooser]
 
[debug]
# Uncomment the line below to turn on debugging
# More verbose logs
# Additionally lets the X server dump core if it crashes
#Enable=true

getent passwd



