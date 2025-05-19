FROM python:3.11-slim AS builder 
WORKDIR /app
COPY pyproject.toml pdm.lock /app 
RUN pip install pdm 
RUN python -m pdm export -o requirements.txt 

FROM jupyter/base-notebook:latest
WORKDIR /home/jovyan
COPY --from=builder /app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt 
COPY . ./notebooks
USER root
RUN chown -R jovyan:users /home/jovyan && \
    chmod -R 775 /home/jovyan
USER jovyan