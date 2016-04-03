function chdev -d "Change to develop hosts"
  chnor
  sudo sed -e "s/^/"(docker-machine ip default)" /g" /etc/hosts.dev >> /etc/hosts
end