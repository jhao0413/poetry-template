# 使用官方 Python 镜像作为基础镜像
FROM python:3.11

# 设置工作目录
WORKDIR /app

# 将项目文件添加到容器中
COPY . /app

# 安装项目依赖
RUN pip install poetry
RUN poetry install --no-dev

# 暴露端口
EXPOSE 5000

# 运行应用程序
CMD ["poetry", "run", "flask", "run", "--host=0.0.0.0"]