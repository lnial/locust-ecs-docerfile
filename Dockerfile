FROM python:3.6

RUN pip install locust

RUN mkdir /locust
RUN mkdir /locust_src

ADD ./mode /locust/mode
ADD ./locustfile.py /locust_src/locustfile.py

RUN chmod +x /locust/mode
RUN chmod +x /locust_src/locustfile.py

CMD ["/locust/mode"]
