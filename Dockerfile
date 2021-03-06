# ------------------------------------------------------------------------------
# This image used in magicfirm server running enviroment
# ------------------------------------------------------------------------------
# Pull base image.
FROM ubuntu:16.04
MAINTAINER JIN TAO <jeffkyjin@magicfirm.com>

# Install relates.
RUN apt-get update && \
    apt-get -y install python-pip wget mysql-client python-mysqldb nginx supervisor locales htop tzdata python-jwt gunicorn
  
# - update pip
RUN pip install --upgrade pip -i https://pypi.douban.com/simple

# - Install web server
RUN pip install web.py uwsgi simplejson requests DBUtils validate_email uwsgi jinja2 sqlalchemy -i https://pypi.douban.com/simple


# - Install related libs
RUN pip install python-alipay-sdk==1.10.1 redis shortuuid netaddr python-weixin xlrd blinker Pillow -i https://pypi.douban.com/simple

# setting timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


