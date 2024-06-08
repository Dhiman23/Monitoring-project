sudo apt update 
sudo git clone https://github.com/Dhiman23/Board-game.git

### Node_expoter

sudo wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
sudo tar -xvf node_exporter-1.8.1.linux-amd64.tar.gz
sudo rm node_exporter-1.8.1.linux-amd64.tar.gz
sudo mv node_exporter-1.8.1.linux-amd64.tar.gz/ node_exporter

### start node_exporter

./node_exporter &

### going inside boardgame folder

cd Board-game

### install java

sudo apt install openjdk-17-jdk openjdk-17-jre -y

### install maven

sudo apt install maven -y


### running mvn cmd 
sudo mvn package

### going inside target folder

cd target/



