FROM dalongrong/smashing
COPY . /app
RUN bundle
EXPOSE 3030
ENTRYPOINT [ "smashing","start" ]