docker build -t slur-counter .

docker run -it --rm --name slur `
-v /home/docker/slur/config:/config `
-v /home/docker/slur/data:/data `
-v /home/docker/slur/logs:/logs `
slur-counter