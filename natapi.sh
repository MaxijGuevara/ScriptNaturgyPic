#/bin/bash
mkdir picapi
chmod 777 picapi
rm -rf naturgy-pic
git clone https://MaxijGuevara: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@github.com/GrupoSabra/naturgy-pic.git
cd naturgy-pic
git config submodule.framework.url https://MaxijGuevara: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@github.com/GrupoSabra/sabra-framework-netcore22.git
git submodule update --init --recursive
docker build -f Dockerfile.api -t picapi .
cd ..
echo "$PWD"
docker run -v "$PWD"/picapi:/compiapi picapi
