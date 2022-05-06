from pathlib import Path
import json

BASE_DIR = Path(__file__).resolve().parent.parent

with open('/etc/config.json') as config_file:
    config = json.load(config_file)

SQLITE = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

POSTGRESQL = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'portfolio_db',
        'USER': config["DATABASE_USER"],
        'PASSWORD': config["DATABASE_PASSWORD"],
        'HOST': 'localhost',
        'PORT': '5432'
    }
}