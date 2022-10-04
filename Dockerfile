FROM r-base:4.2.1
RUN apt-get update && apt-get install -y python3.10 python3.10-dev python3-pip

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY requirements.R ./

# installing python libraries
RUN pip install --no-cache-dir -r requirements.txt

# installing r libraries
RUN Rscript requirements.R
