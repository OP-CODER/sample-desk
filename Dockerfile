FROM python:3.11-slim

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip 

# Expose the port your app will run on (adjust as needed, e.g., 8000)
EXPOSE 8000

# Command to start your app (replace with your actual entrypoint)
# Examples:
# For Flask: CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
# For FastAPI/Uvicorn: CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
CMD python app.py  # Replace 'app.py' with your application entrypoint
