FROM perl:5
RUN apt update && apt install locales-all -y
# RUN export PERL5LIB=/workspaces/sorting-algo-func.pl/app
# RUN export PERL5LIB=/app
WORKDIR /app
COPY ./app .
CMD [ "perl", "-I", "/app", "main.pl" ]
