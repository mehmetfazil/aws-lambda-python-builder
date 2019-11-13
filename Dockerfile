FROM lambci/lambda:build-python3.7
COPY src /build
RUN python3.7 -m pip install -r /build/requirements.txt -t /build/python/
WORKDIR /build
CMD sh build_package.sh
