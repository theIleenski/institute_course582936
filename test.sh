sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.11 python3.11-venv
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11
sudo apt install python3-pip
pip install --upgrade pip
python3.11 -m venv venv
source venv/bin/activate
pip install deeppavlov
git clone https://github.com/deepmipt/DeepPavlov.git
cd DeepPavlov
python3 -m deeppavlov install ner_ontonotes_bert
python3 -m deeppavlov riseapi ner_ontonotes_bert -p 5000 -d
