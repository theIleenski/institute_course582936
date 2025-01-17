sudo apt update
sudo apt install docker.io -y
sudo service docker start
cd DeepPavlov
sudo docker build -t ner-deeppavlov .
sudo docker run -p 5000:5000 ner-deeppavlov