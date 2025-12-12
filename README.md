# docker-robot-selenium
Docker File to Run Selenium Tests in Containers
#command to build the image
docker build <image> .
#command to run
docker containet run -it -v "/root":/home/test <image>
