echo "Killing all running containers";
docker kill $(docker ps -q);

echo "Deleting all stopped containers (including data-only containers)"
docker rm $(docker ps -a -q);

echo "Deleting all 'untagged/dangling' (<none>) images";
docker rmi $(docker images -q -f dangling=true);

echo "Deleting ALL images";
docker rmi $(docker images -q);
