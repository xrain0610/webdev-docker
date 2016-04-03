function dins -d "create the xhyve local boot2docker for develop"
  if test (count $argv) -eq 0
    docker-machine create --driver xhyve --xhyve-cpu-count "2" --xhyve-memory-size 4096 --xhyve-disk-size 20000 --xhyve-experimental-nfs-share --engine-registry-mirror https://q1iq1clk.mirror.aliyuncs.com default
  else if test (count $argv) -eq 1
    docker-machine create --driver xhyve --xhyve-cpu-count "1" --xhyve-memory-size 1024 --xhyve-disk-size 10000 --xhyve-experimental-nfs-share --engine-registry-mirror https://q1iq1clk.mirror.aliyuncs.com $argv[1]
  else
    docker-machine create --driver xhyve --engine-registry-mirror https://q1iq1clk.mirror.aliyuncs.com $argv
  end
  docker-machine ls
end