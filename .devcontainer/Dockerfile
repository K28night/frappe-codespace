FROM python:3.11

# Set up environment
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git curl vim redis-server mariadb-server \
    nodejs npm wkhtmltopdf supervisor \
    && apt-get clean

# Install yarn (required by frappe)
RUN npm install -g yarn

# Install Frappe Bench CLI
RUN pip install frappe-bench

# Set default workdir
WORKDIR /workspace
