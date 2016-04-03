function nopass -d "Auto config the ssh key to remote server"
  if test -z $argv
      echo "Usage: nopass user@domain"
  else
      if test -f ~/.ssh/id_rsa.pub
          echo "Local RSA Certs Found!"
      else
          echo "Not Fonud Local RSA Certs , Generate..."
          ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -N ''
      end
      set key (cat ~/.ssh/id_rsa.pub)
      ssh $argv "mkdir ~/.ssh;echo $key >> ~/.ssh/authorized_keys;chmod 640 ~/.ssh/authorized_keys;chmod 740 ~/.ssh"
  end
end