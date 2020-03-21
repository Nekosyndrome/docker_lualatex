#/usr/bin/bash

curl -LO "https://github.com/adobe-fonts/source-han-sans/archive/2.001R.tar.gz"
curl -LO "https://github.com/adobe-fonts/source-han-serif/archive/1.001R.tar.gz"

mkdir -p font/otc
mkdir -p font/sans
mkdir -p font/serif

tar zxvf 2.001R.tar.gz -C font/otc --wildcards 'source-han-sans-2.001R/OTC/*.ttc' --transform='s/.*\///'
tar zxvf 2.001R.tar.gz -C font/sans --wildcards 'source-han-sans-2.001R/OTF/Japanese/*.otf' --transform='s/.*\///'
tar zxvf 2.001R.tar.gz -C font/sans --wildcards 'source-han-sans-2.001R/OTF/TraditionalChinese/*.otf' --transform='s/.*\///'

tar zxvf 1.001R.tar.gz -C font/otc --wildcards 'source-han-serif-1.001R/OTC/*.ttc' --transform='s/.*\///'
tar zxvf 1.001R.tar.gz -C font/serif --wildcards 'source-han-serif-1.001R/OTF/Japanese/*.otf' --transform='s/.*\///'
tar zxvf 1.001R.tar.gz -C font/serif --wildcards 'source-han-serif-1.001R/OTF/TraditionalChinese/*.otf' --transform='s/.*\///'

rm 2.001R.tar.gz 1.001R.tar.gz
