import requests
from dotenv import load_dotenv
import os

load_dotenv()

response = os.environ.get('HOST', 'PORT')
print(response.json())