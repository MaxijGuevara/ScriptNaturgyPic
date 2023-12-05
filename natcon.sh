#/bin/bash
mkdir piccon
chmod 777 piccon
rm -rf naturgy-pic
git clone https://MaxijGuevara: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@github.>
cd naturgy-pic
git config submodule.framework.url https://MaxijGuevara:ghp_4yFMyvJAraqH32AnHqD>
git submodule update --init --recursive
docker build -f Dockerfile.con -t piccon .
cd ..
echo "$PWD"
docker run -v "$PWD"/piccon:/compicon piccon

