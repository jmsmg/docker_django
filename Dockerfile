FROM python:3

# WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# CMD [ "python", "./your-daemon-or-script.py" ]

COPY ./tools/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["usr/bin/bash", "/usr/local/bin/docker-entrypoint.sh"]