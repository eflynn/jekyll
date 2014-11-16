FROM ruby

RUN apt-get update \
	&& apt-get install -y nodejs --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install --no-rdoc --no-ri github-pages

ENTRYPOINT ["jekyll"]
CMD ["build"]
