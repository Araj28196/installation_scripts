#this command will download a file named as install-fabric.sh

curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh

#here docker samples binary are default arguments even it is given when you run the script it will be taken as default

./install-fabric.sh docker samples binary

sudo nano ~/.bashrc

#copy the path eg., [ /root/fabric-samples/bin ] and paste it after $PATH:

export PATH=$PATH:/root/fabric-samples/bin

source ~/.bashrc
