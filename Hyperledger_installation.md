#this command will download a file named as install-fabric.sh
curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh

#here docker samples binary are default arguments even it is given when you run the script it will be taken as default
./install-fabric.sh docker samples binary
