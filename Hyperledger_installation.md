Prerequisite
1) docker
2) docker-compose
3) golang
4) python
5) jq
6) node(optional)

#this command will download a file named as install-fabric.sh

curl -sSLO https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh && chmod +x install-fabric.sh

#here docker samples binary are default arguments even it is given when you run the script it will be taken as default

./install-fabric.sh docker samples binary

sudo nano ~/.bashrc

#copy the path eg., [ /root/fabric-samples/bin ] and paste it after $PATH:

export PATH=$PATH:/root/fabric-samples/bin

source ~/.bashrc

#incase of using fabric samples to bring the network up try using this

cd fabric-samples/test-network

sudo ./network.sh up createChannel -ca -c mychannel -s couchdb

sudo ./network.sh deployCC -ccn basic -ccp ../asset-transfer-ledger-queries/chaincode-go -ccl go

#for checking docker status with format
docker ps --format '{{ .ID }}\t{{ .Names }}\t{{.Ports}}'
