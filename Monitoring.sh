sudo apt update

### Prometheous
sudo wget https://github.com/prometheus/prometheus/releases/download/v2.53.0-rc.0/prometheus-2.53.0-rc.0.linux-amd64.tar.gz
sudo tar -xvf prometheus-2.53.0-rc.0.linux-amd64.tar.gz
sudo rm prometheus-2.53.0-rc.0.linux-amd64.tar.gz
mv prometheus-2.53.0-rc.0.linux-amd64.tar.gz/ prometheus

### Blackbox Expoter

sudo wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.25.0/blackbox_exporter-0.25.0.linux-amd64.tar.gz
sudo tar -xvf blackbox_exporter-0.25.0.linux-amd64.tar.gz
sudo rm blackbox_exporter-0.25.0.linux-amd64.tar.gz
mv blackbox_exporter-0.25.0.linux-amd64.tar.gz/ blackbox_expoter


### AlertManager

sudo wget https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz
sudo tar -xvf alertmanager-0.27.0.linux-amd64.tar.gz
sudo rm alertmanager-0.27.0.linux-amd64.tar.gz
mv alertmanager-0.27.0.linux-amd64.tar.gz/ alertmanager