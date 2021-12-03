# 基础镜像
FROM java:8
# 把可执行jar包复制到基础镜像的根目录下
ADD /target/group2-demo-0.0.1-SNAPSHOT.jar app.jar
# 镜像要暴露的端口，如要使用端口，在执行docker run命令时使用-p生效
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
