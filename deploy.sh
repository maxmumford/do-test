docker build -t do-test .;
docker tag do-test registry.digitalocean.com/do-test/do-test;
docker push registry.digitalocean.com/do-test/do-test;
