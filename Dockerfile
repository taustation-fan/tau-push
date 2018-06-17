FROM croservices/cro-http:0.7.5
RUN zef install Games::TauStation::DateTime Number::Denominate
RUN zef install HTML::Escape
RUN mkdir -p /app/bin
RUN mkdir -p /app/static
COPY bin/* /app/bin/
COPY static/* /app/static/
WORKDIR /app
EXPOSE 10000
RUN perl6 -c bin/server.p6
