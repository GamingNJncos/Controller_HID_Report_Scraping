for f in ./PCAP/*
do
 echo "Filename: $f" # always double quote "$f" filename
 tshark -r $f -VV -C Bluetooth |grep -A7 -i "Connection Parameter Update"
done
