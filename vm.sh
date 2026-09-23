# ssh admin@3.6.105.65 "cd /home/admin/app && git pull && pm2 restart app"


# sshpass -p "$PASSWORD" ssh admin@your-server-ip \
#   "pm2 status"

# ssh pcvm \
# "ls"

scp ./tests/test.ts pcvm:/home/ubuntu
ssh pcvm "pm2 restart app"