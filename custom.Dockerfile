FROM apache/superset:2.1.0-dev
# Switching to root to install the required packages
USER root

COPY ./requirements/custom.txt /opt/superset/
RUN pip install --no-cache-dir -r /opt/superset/custom.txt

# Switching back to using the `superset` user
USER superset

