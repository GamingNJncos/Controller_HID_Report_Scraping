for f in ./PCAP/*
do
 echo "Filename: $f" # always double quote "$f" filename
 tshark -r $f -VV -C Bluetooth|grep -v Handle |grep -i -A4 'Appearance:'
done
