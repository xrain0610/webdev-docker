function dme -d "connect to docker-machine"
  eval (docker-machine env $argv)
  env | grep "DOCKER"
end