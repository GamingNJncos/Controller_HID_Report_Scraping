for f in ./PCAP/*
do
 echo "Filename: $f" # always double quote "$f" filename
 tshark -r $f -VV -C Bluetooth |grep -i "DID"|grep -Ei "Vendor|Product"|grep -v Source
done
