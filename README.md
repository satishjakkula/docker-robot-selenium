---

## Docker Setup

### docker-robot-selenium
**Docker File to Run Selenium Tests in Containers**

**Command to build the image:**
```sh
docker build -t <image_name> .
```

**Command to run:**
```sh
docker container run -it -v "/root":/home/test <image_name>
```

---
