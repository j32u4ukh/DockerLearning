FROM python:3.8 

# 鏡像內安裝 numpy 
RUN pip3 install numpy 

# 鏡像內建立資料夾 
RUN mkdir -p /workfolder 

# 將本地的鏡像內 ./py/main.py 複製到鏡像內的 /workfolder/ 
COPY ./py/main.py /workfolder/ 

CMD [ "python", "/workfolder/main.py" ] 
