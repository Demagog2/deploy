FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y ansible openssh-client sshpass ruby-bundler && \
    rm -rf /var/lib/apt/lists/* && \
    gem install --no-document capistrano capistrano-rails capistrano-rvm capistrano3-unicorn

CMD ["bash"]