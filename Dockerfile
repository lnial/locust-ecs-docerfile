FROM public.ecr.aws/v0b5s6b3/python:3.6

RUN pip install locust

RUN mkdir /locust
RUN mkdir /locust_src

ADD ./master /locust/master
ADD ./locustfile.py /locust_src/locustfile.py

RUN chmod +x /locust/master
RUN chmod +x /locust_src/locustfile.py

CMD ["/locust/master"]
