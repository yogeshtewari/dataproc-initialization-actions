#!/bin/bash

echo "BEGIN Stage 1 : Install H2O libraries and dependencies"

apt-get update

cd /usr/lib/
wget https://s3.amazonaws.com/h2o-release/sparkling-water/spark-2.4/3.26.2-2.4/sparkling-water-3.26.2-2.4.zip
unzip -o sparkling-water-3.26.2-2.4.zip

/opt/conda/default/bin/conda install tabulate future colorama scikit-learn
/opt/conda/default/bin/conda install --override-channels -c main -c conda-forge google-cloud-bigquery google-cloud-storage
/opt/conda/default/bin/conda install -c h2oai h2o h2o_pysparkling_2.4

echo "END Stage 1 : Install H2O libraries and dependencies"
