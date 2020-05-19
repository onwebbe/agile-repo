FROM django:python3
MAINTAINER i326432
RUN mkdir -p /home/i073330/agile-retro
ENV PYTHON_ENV=production
ENV SECRET_KEY=x
ENV DB_NAME=agileretro
ENV DB_USER=root
ENV DB_PWD=123456
ENV DB_HOST=mysql
ENV DB_PORT=3306
ENV ALLOWED_HOSTS=*
ADD agileRepo.tar.gz /home/i073330/
RUN pip install django-widget-tweaks==1.4.2 djangorestframework==3.8.2 Markdown==2.6.11 mysqlclient==1.3.13 pytz==2018.5 python-decouple==3.1 django-filter==2.0.0
WORKDIR /home/i073330/agile-retro
COPY start.sh /home/i073330/agile-retro/start.sh
EXPOSE 9999
CMD ["/home/i073330/agile-retro/start.sh"]