
## Deploy Metadata-api server

```bash
#cd metadata-api
pip install flask
pip install django==1.11.17
pip install -r requirements.txt

vim .env
   export GOOGLE_STORAGE_PROJECT="<your_project>"
   export GOOGLE_STORAGE_BUCKET="<your_bucket>"

#Place your Google cloud storage credentials in a file called `credentials/google-storage-credentials.json`.
mkdir credentials
touch credentials/google-storage-credentials.json
   
source .env && python app.py
```

## 查看某个tokenid的元数据

采用即时合成的方法，合成的图片生成在目录 `images/output/` 下

```bash
curl http://localhost:5000/api/creature/1
curl http://localhost:5000/api/creature/2

#静态图片的访问方式
http://localhost:5000/1.png
```
