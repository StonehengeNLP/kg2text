# install OpenNMT
wget https://github.com/OpenNMT/OpenNMT-py/archive/0.9.0.tar.gz
tar -xf 0.9.0.tar.gz
cd OpenNMT-py-0.9.0
ls
pip3 install -e . 
cd ..
rm 0.9.0.tar.gz
rm -r OpenNMT-py-0.9.0

# setup data
git clone https://github.com/rikdz/GraphWriter.git
mv GraphWriter/data data
rm -r GraphWriter
cd data
tar -xf unprocessed.tar.gz
mv unprocessed.train.json unprocessed.training.json
mv unprocessed.val.json unprocessed.dev.json
cd ..

# download model
wget https://public.ukp.informatik.tu-darmstadt.de/ribeiro/graph2text/model_agenda_cge_lw.pt