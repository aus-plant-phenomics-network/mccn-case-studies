## Building docker image and run the jupyter notebook locally

Requires docker

```bash
sudo docker build -t hoangsonle95/mccn-case-study-image:25-05-26 .
```

```bash
sudo docker run -d --rm -p 8082:8888 mccn-case-study-image start-notebook.py --NotebookApp.token='appn-mccn-case-study' --ip 0.0.0.0 
```