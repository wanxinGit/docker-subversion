# docker-subversion

1、此镜像基于centos:6.7

2、数据挂载到/opt/docker/storage/svn/repo，需要自行备份

3、默认svn管理员账户admin/123456（见config/passwd）

4、推荐启动命令
docker run -d \
-p 3690:3690 \
-v /opt/docker/storage/svn/repo:/opt/svn/repo \
-v /etc/localtime:/etc/localtime:ro \
-e TZ="Asia/Shanghai" \
--restart always \
--name svn wanxin/docker-subversion