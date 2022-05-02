# Generated by Django 3.2.11 on 2022-03-07 23:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Portfolio', '0005_auto_20220307_1716'),
    ]

    operations = [
        migrations.AddField(
            model_name='idiomaentorno',
            name='acercaDireccion',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='perfil',
            name='correo',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='perfil',
            name='cumpleanos',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='perfil',
            name='direccion',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AddField(
            model_name='perfil',
            name='telefono',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AlterField(
            model_name='perfil',
            name='descipcion',
            field=models.TextField(blank=True, null=True),
        ),
    ]
