# docker-subversion

1���˾������centos:6.7

2�����ݹ��ص�/opt/docker/storage/svn/repo����Ҫ���б���

3��Ĭ��svn����Ա�˻�admin/123456����config/passwd��

4���Ƽ���������
docker run -d \
-p 3690:3690 \
-v /opt/docker/storage/svn/repo:/opt/svn/repo \
-v /etc/localtime:/etc/localtime:ro \
-e TZ="Asia/Shanghai" \
--restart always \
--name svn wanxin/docker-subversion