# ------------------------------------------------------------------------------
# This image used in magicfirm server running enviroment
# ------------------------------------------------------------------------------
# Pull base image.
FROM ubuntu:16.04
MAINTAINER JIN TAO <jeffkyjin@magicfirm.com>

# Install relates.
RUN apt-get update && \
    apt-get -y install python-pip wget mysql-client python-mysqldb nginx supervisor locales htop
  
# - update pip
RUN pip install --upgrade pip

# - Install web server
RUN pip install web.py uwsgi simplejson requests DBUtils validate_email uwsgi jinja2 -i https://pypi.douban.com/simple


# - Install related libs
RUN pip install python-alipay-sdk redis shortuuid netaddr python-weixin xlrd blinker Pillow -i https://pypi.douban.com/simple


