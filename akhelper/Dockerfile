FROM python:slim
COPY *.sh /ArknightsAutoHelper/

RUN apt update \
    && apt install --no-install-recommends -y git android-tools-adb \
                   tesseract-ocr tesseract-ocr-chi-sim tesseract-ocr-chi-sim-vert \
    && git clone https://github.com/ninthDevilHAUNSTER/ArknightsAutoHelper \
    && cd /ArknightsAutoHelper \
    && chmod +x *.sh \
    && pip3 install --no-cache-dir -r requirements.txt \
    && rm -rf /var/lib/apt/lists/* /root/.cache /tmp/*

WORKDIR /ArknightsAutoHelper
EXPOSE 5037
ENTRYPOINT ["./start.sh"]
