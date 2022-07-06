echo "Logging into dev Salesforce Org"
mkdir keys
echo $DEVORG_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $DEVORG_APP_KEY --jwtkeyfile keys/server.key --username $DEVORG_USERNAME --setdefaultdevhubusername -a DevHub
