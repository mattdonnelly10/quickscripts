#!/bin/bash
echo "Enter the url: "  
read url  
mkdir "Wireshark-Downloads";
cd "Wireshark-Downloads";
wget -A .zip -m -p -E -k -K -np "$url"
find . -type f -name '*.zip' -exec unzip -P infected {} \;
mkdir pcap-files;
mv *.pcap pcap-files/
rm -r www.malware-traffic-analysis.net
