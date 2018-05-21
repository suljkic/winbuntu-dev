FROM ubuntu:16.04

CMD mkdir /init
COPY setup.bash /init/
COPY packages-list /init/

WORKDIR /init
RUN chmod +x setup.bash && ./setup.bash

WORKDIR /root
CMD /bin/bash