# cd /tmp
# curl https://github.com/kaaass/ZeroTierOne/releases/download/mkmoonworld-1.0/mkmoonworld-x86_64

cd /var/lib/zerotier-one

zerotier-idtool initmoon identity.public > moon.json

sed -i "s/points\":.*\[.*\]/points\": [\"$ZTNCUI_ADDRESS\/9993\"]/g" moon.json

zerotier-idtool genmoon moon.json

# rm moon.json