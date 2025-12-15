# docker-robot-selenium
**Docker File to Run Selenium Tests in Containers**
**command to build the image**
'''sh
docker build -t <image_name> .
'''
**command to run**
'''sh
docker containet run -it -v "/root":/home/test <image_name>
'''
