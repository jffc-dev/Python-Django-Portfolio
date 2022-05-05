# Generated by Django 3.2.11 on 2022-05-04 03:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Portfolio', '0007_auto_20220502_0620'),
    ]

    operations = [
        migrations.RenameField(
            model_name='categoria',
            old_name='nombreCorto',
            new_name='nombreCortoDefecto',
        ),
        migrations.RenameField(
            model_name='categoria',
            old_name='nombreLargo',
            new_name='nombreLargoDefecto',
        ),
        migrations.AddField(
            model_name='habilidad',
            name='categoria',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='Portfolio.categoria'),
        ),
    ]