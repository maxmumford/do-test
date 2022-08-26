# where do-test-project is the name of your digital ocean project
# and do-test is the name of your tag

docker build -t do-test .;
docker tag do-test registry.digitalocean.com/do-test-project/do-test;
docker push registry.digitalocean.com/do-test-project/do-test;
