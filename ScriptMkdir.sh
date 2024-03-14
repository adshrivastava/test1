sudo mkdir -p /home/testadmin/setup
# sudo apt update
# sudo apt install -y openjdk-11-jdk
# sudo chmod 777 /opt
# sudo mkdir -p /opt/softwareag
# sudo chmod 777 /opt/softwareag
sudo mkdir -p /home/testadmin/done1

# Configuration
REMOTE_USER="testadmin"          # Username to login to the remote Linux VM
REMOTE_HOST="13.91.95.157"    # IP address or hostname of the remote Linux VM
REMOTE_DIR="/home/testadmin/setup"   # Destination directory on the remote Linux VM
LOCAL_FILE="C:\Users\natural\Desktop\Files realted to HA env settings\images\SoftwareAGInstaller-Linux_x86_64.bin"  # Path to the local file on the Windows machine

# Copy the file using scp
scp "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

# Check if the file was copied successfully
if [ $? -eq 0 ]; then
    echo "File copied successfully to $REMOTE_HOST:$REMOTE_DIR"
else
    echo "Error: Failed to copy file to $REMOTE_HOST:$REMOTE_DIR"
fi
