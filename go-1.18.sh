cd ~
curl -OL https://golang.org/dl/go1.18.linux-amd64.tar.gz
sha256sum go1.18.linux-amd64.tar.gz
#output
#go1.18.linux-amd64.tar.gz
#7fe7a73f55ba3e2285da36f8b085e5c0159e9564ef5f63ee0ed6b818ade8ef04  go1.18.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.18.linux-amd64.tar.gz
sudo nano ~/.profile
#add the below line
#export PATH=$PATH:/usr/local/go/bin
source ~/.profile
go version
