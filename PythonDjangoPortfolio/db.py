from pathlib import Path

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
        'USER': 'postgres',
        'PASSWORD': 'root',
        'HOST': 'localhost',
        'PORT': '5432'
    }
}