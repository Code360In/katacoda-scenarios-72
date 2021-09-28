ssh -o strictHostKeyChecking=no node01 "sudo docker run --restart=always  --name px-lighthouse -d  -p 7080:80 -p 7443:443  -v /etc/pwxlh:/config portworx/px-lighthouse"
scp -o StrictHostKeyChecking=no /tmp/check_lighthouse.sh  node01:/tmp
ssh -o strictHostKeyChecking=no node01 "pxctl volume create testvol --size 3"
ssh -o strictHostKeyChecking=no node02 "pxctl volume create local_volume --nodes=LocalNode"
ssh -o strictHostKeyChecking=no node03 "pxctl volume create ha_volume --nodes=LocalNode --repl=3"
ssh -o strictHostKeyChecking=no node01 "pxctl volume create new_vol --aggregation_level 2"
ssh -o strictHostKeyChecking=no node03 "docker run -d --volume-driver=pxd -v name=px_vol1,size=10:/var/www/html --name nginx4 k8s.gcr.io/nginx-slim:0.8"
ssh -o strictHostKeyChecking=no node02 "docker run -d --volume-driver=pxd -v name=px_vol2,size=5:/data --name redis redis "
