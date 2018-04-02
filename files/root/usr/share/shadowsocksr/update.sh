#/bin/sh
temp_dir="/etc/shadowsocksr/"
script_dir="/usr/share/shadowsocksr/"
${script_dir}chnroute.sh ${temp_dir}china_chnroute.txt
${script_dir}gfwlist2dnsmasq.sh -d 127.0.0.1 -p 5300 -o /etc/shadowsocksr/dnsmasq_gfwlist.conf
/etc/init.d/shadowsocksr restart