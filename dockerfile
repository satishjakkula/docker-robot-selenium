FROM alpine:edge
RUN apk add chromium chromium-chromedriver python3-dev py3-pip
RUN apk add gcc musl-dev libffi-dev openssl-dev
RUN mkdir -p /home/test/
COPY ./requirements.txt /home/test/
COPY main.robot /home/test/
WORKDIR /home/test/
RUN pip install --break-system-packages -r requirements.txt
CMD ["robot", "main.robot"]
