ARG TF_VERSION=0.14.3

FROM hashicorp/terraform:$TF_VERSION

RUN cp /bin/terraform /usr/local/bin/terraform

COPY ./rover /bin/rover
RUN chmod +x /bin/rover

WORKDIR /src

ENTRYPOINT [ "/bin/rover" ]
