echo "changing directory to vm1 ca"
cd /home/ubuntu/FabricMultiHostDeployment/setup1/vm1/create-certificate-with-ca
echo "starting ca Org1"
docker-compose up -d
echo "creating crypto config for Org1"
./create-certificate-with-ca.sh


echo "changing directory to vm1 ca"
cd /home/ubuntu/FabricMultiHostDeployment/setup1/vm2/create-certificate-with-ca
echo "starting ca Org2"
docker-compose up -d
echo "creating crypto config for Org2"
./create-certificate-with-ca.sh


echo "changing directory to vm1 ca"
cd /home/ubuntu/FabricMultiHostDeployment/setup1/vm3/create-certificate-with-ca
echo "starting ca Org3"
docker-compose up -d
echo "creating crypto config for Org3"
./create-certificate-with-ca.sh


echo "changing directory to vm1 ca"
cd /home/ubuntu/FabricMultiHostDeployment/setup1/vm4/create-certificate-with-ca
echo "starting ca Org4"
docker-compose up -d
echo "creating crypto config for Org4"
./create-certificate-with-ca.sh

echo "changing directory to FabricMultiHostDeployment"
cd /home/ubuntu/FabricMultiHostDeployment
echo "committing code"
git add .
git commit -m "Crypto generated for 4 orgs"
echo "git pushing the code"
git push

echo "view running containers"
docker ps -a 
echo "view stop containers"
docker stop $(docker ps -aq)
echo "view remove containers"
docker rm $(docker ps -aq)

echo "view running containers"
docker ps -a 

