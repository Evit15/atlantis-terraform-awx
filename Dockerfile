FROM runatlantis/atlantis:v0.16.1

RUN apk add --update --no-cache \
    curl \
    py-pip && \
    pip install https://releases.ansible.com/ansible-tower/cli/ansible-tower-cli-latest.tar.gz && \
    pip install ansible-tower-cli && \
    rm -rf /var/cache/apk/*