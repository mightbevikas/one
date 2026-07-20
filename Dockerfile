FROM python as firststage
WORKDIR /Doc
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

From firststage as final
RUN pip install -r requirements.txt --production
CMD ["python", "app.py"]
