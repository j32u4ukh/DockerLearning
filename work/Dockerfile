# 使用python3.8 alpine模板
FROM python:3.8.3-alpine3.12
# 將當前目錄映射到容器內/app目錄
ADD . /app
# 設置/app為工作目錄
WORKDIR /app
# 安裝python依賴包
RUN pip install -r requirements.txt
# 啟動flask應用服務
CMD python main.py
