FROM redmine:5.0.2

ENV RAILS_ENV=production

RUN apt update && apt install -y git

COPY --chown=redmine files/patches/add-only-notes.patch  /usr/src/redmine/
RUN patch -p1 < add-only-notes.patch