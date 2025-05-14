# 使用官方 nginx 镜像，alpine 版本体积更小
FROM nginx:alpine

# 删除 nginx 默认页面
RUN rm -rf /usr/share/nginx/html/*

# 复制你的静态页面到 nginx 的默认目录
COPY index.html /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 8888

# 使用 nginx 官方默认启动命令
