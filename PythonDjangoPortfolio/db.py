from pathlib import Path
import json

BASE_DIR = Path(__file__).resolve().parent.parent

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
        'USER': 'portfolio_user',
        'PASSWORD': 'p0rtf0lioJFFC',
        'HOST': 'localhost',
        'PORT': '5432'
    }
}