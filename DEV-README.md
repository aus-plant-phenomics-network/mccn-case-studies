## Building docker image and run the jupyter notebook locally

Requires docker

```bash
sudo docker build -t mccn-case-study-image .
```

```bash
sudo docker run -rm -p 8082:8082 mccn-case-study-image start-notebook.py 
```
