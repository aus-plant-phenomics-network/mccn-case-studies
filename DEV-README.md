## Building docker image and run the jupyter notebook locally

Requires docker

```bash
sudo docker build -t mccn-case-study-image .
```

```bash
sudo docker run -d --rm -p 8082:8888 mccn-case-study-image start-notebook.py --NotebookApp.token='appn-mccn-case-study' --ip 0.0.0.0 
```