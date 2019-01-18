FROM python:2.7

RUN apt-get update
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "ansible-playbook" ]
CMD [ "-i", "hosts-prd", "site.yml"]