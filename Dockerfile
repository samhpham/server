FROM python:3.10.13-slim
# setting the work directory in the container
WORKDIR /app
# adding the full directory tree from cwd to the workdir created above.
ADD . /app/
RUN pip3 install -r requirements.txt
# CMD ["python3", "-m", "flask", "run", "-p", "5000", "-h", "0.0.0.0"]
CMD ["gunicorn", "--bind", "0.0.0.0:5001", "app:app"]