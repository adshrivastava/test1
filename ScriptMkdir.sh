sudo mkdir -p /home/testadmin/setup
sudo chmod 777 /home/testadmin/setup
sudo chown -R testadmin:testadmin /home/testadmin/setup

# sudo apt update
# sudo apt install -y openjdk-11-jdk
# sudo chmod 777 /opt
# sudo mkdir -p /opt/softwareag
# sudo chmod 777 /opt/softwareag

# Configuration
REMOTE_USER="testadmin"          # Username to login to the remote Linux VM
REMOTE_HOST="virtualMachinee8d23ed1"    # IP address or hostname of the remote Linux VM
REMOTE_DIR="/home/testadmin/setup"   # Destination directory on the remote Linux VM
SSH_FILE="C:\keys\nathassh.pem"
LOCAL_FILE="C:\keys\natkey.pem"  # Path to the local file on the Windows machine

# Copy the file using scp
scp -i "$SSH_FILE" -v "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

# Check if the file was copied successfully
if [ $? -eq 0 ]; then
    echo "File copied successfully to $REMOTE_HOST:$REMOTE_DIR"
else
    echo "Error: Failed to copy file to $REMOTE_HOST:$REMOTE_DIR"
fi


sudo mkdir -p /home/testadmin/done1
