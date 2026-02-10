for f in ./PCAP/*
do
 echo "Filename: $f" # always double quote "$f" filename
 tshark -r $f -VV -C Bluetooth |grep -i mtu|grep -v ATT_MTU
done
