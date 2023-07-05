FROM python:3.8-slim-buster
# 在docker中安装awscli
RUN apt update -y && apt install awscli -y
# 将docker内文件封装到app文件夹下
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]