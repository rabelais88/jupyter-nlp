# jupyter python with basic statistics & nlp settings
## on local machine
  - caveat: only work in unix based os.(MAC/Linux)
```sh
source ./bin/activate
# if mecab-ko doesn't work
# bash <(curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh)
jupyter lab
```
## with docker
 - caveat: image build takes more than minutes.
```sh
docker-compose up
# connect to localhost:8080
docker-compose down
```