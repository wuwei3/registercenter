# 基于哪个镜像
FROM java:8
# 将本地文件夹挂载到当前容器
#VOLUME /tmp
WORKDIR /wuwei/registercenter

RUN chgrp -R 0 /wuwei/registercenter
RUN chmod -R g+rwX /wuwei/registercenter
# 拷贝文件到容器，handcuffs-reg-0.0.1-SNAPSHOT.jar这里是maven打包后的名字
ADD registerCenter-0.0.1-SNAPSHOT.jar /wuwei/registercenter/center.jar
RUN bash -c 'touch /wuwei/registercenter/center.jar'

EXPOSE 8716
# 配置容器启动后执行的命令
ENTRYPOINT  ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/wuwei/registercenter/center.jar"]
