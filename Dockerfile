FROM teddysun/v2ray:latest

# نسخ ملف الكونفيغ داخل المسار الصحيح
COPY config.json /etc/v2ray/config.json

# تشغيل V2Ray داخل Cloud Run
EXPOSE 8080

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
