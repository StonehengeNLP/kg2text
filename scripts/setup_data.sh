git clone https://github.com/rikdz/GraphWriter.git
mv GraphWriter/data data
rm -r GraphWriter
cd data
tar -xf unprocessed.tar.gz
mv unprocessed.train.json unprocessed.training.json
mv unprocessed.val.json unprocessed.dev.json
cd ..

wget https://public.ukp.informatik.tu-darmstadt.de/ribeiro/graph2text/model_agenda_cge_lw.pt