function chnor -d "change to normal hosts"
  sudo sed -i '' -e "/"(docker-machine ip default)"/d" /etc/hosts
end