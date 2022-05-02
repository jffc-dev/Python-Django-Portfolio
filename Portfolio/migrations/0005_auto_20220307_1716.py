# Generated by Django 3.2.11 on 2022-03-07 22:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Portfolio', '0004_auto_20220305_2304'),
    ]

    operations = [
        migrations.CreateModel(
            name='Testimonial',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreUsuario', models.CharField(blank=True, max_length=50)),
                ('nombreCargo', models.CharField(blank=True, max_length=50)),
                ('titulo', models.CharField(blank=True, max_length=100)),
                ('texto', models.TextField(blank=True, null=True)),
                ('imagenPerfil', models.ImageField(upload_to='testimoniales')),
                ('mostrarPagina', models.BooleanField(default=False)),
            ],
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='acercaPresentacion',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='blogUltimasNoticias',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='portafolioClientes',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='portafolioMisTrabajos',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='portafolioPrecios',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='portafolioPreciosDetalles',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='portafolioTestimonios',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='resumenBotonContratarme',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='resumenBotonCv',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='resumenHabilidadesBlandas',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AddField(
            model_name='idiomaentorno',
            name='resumenHabilidadesIdiomas',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
