# ssh admin@3.6.105.65 "cd /home/admin/app && git pull && pm2 restart app"


# sshpass -p "$PASSWORD" ssh admin@your-server-ip \
#   "pm2 status"

# ssh pcvm \
# "ls"

scp -r ./tests pcvm:/home/ubuntu/
ssh pcvm "/home/ubuntu/.local/share/pnpm/bin/pm2 restart app"


# ssh pcvm "sudo -u admin pm2 restart app"