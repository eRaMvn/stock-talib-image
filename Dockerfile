# Python image to use.
FROM python:3.8

# TA-Lib
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install

RUN rm -R ta-lib ta-lib-0.4.0-src.tar.gz

# Install any needed packages specified in requirements.txt
RUN pip install Flask TA-Lib google-api-python-client google-auth-httplib2 google-auth-oauthlib numpy