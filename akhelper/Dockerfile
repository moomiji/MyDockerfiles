FROM python:slim
RUN apt update \
    && apt install --no-install-recommends -y git android-tools-adb libgl1 \
                   tesseract-ocr tesseract-ocr-chi-sim tesseract-ocr-chi-sim-vert \
    && git clone https://github.com/ninthDevilHAUNSTER/ArknightsAutoHelper \
    && cd /ArknightsAutoHelper \
    && pip3 install --no-cache-dir -r requirements.txt \
    && rm -rf /var/lib/apt/lists/* /root/.cache /tmp/*
WORKDIR /ArknightsAutoHelper
COPY *.sh .
RUN chmod +x *.sh
EXPOSE 5037
ENTRYPOINT ["./start.sh"]
