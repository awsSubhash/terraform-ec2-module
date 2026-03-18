#!/bin/bash
set -e

USERNAME="${username}"
PUBLIC_KEY="${public_key}"

echo "Creating user..."
useradd -m -s /bin/bash $USERNAME

echo "Setting up SSH..."
mkdir -p /home/$USERNAME/.ssh
echo "$PUBLIC_KEY" > /home/$USERNAME/.ssh/authorized_keys

chmod 700 /home/$USERNAME/.ssh
chmod 600 /home/$USERNAME/.ssh/authorized_keys
chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh

echo "Disabling password authentication..."
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart sshd

echo "Setup complete"
