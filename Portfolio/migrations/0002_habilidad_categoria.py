# Generated by Django 3.2.11 on 2022-05-08 03:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Portfolio', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='habilidad',
            name='categoria',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='Portfolio.categoria'),
        ),
    ]