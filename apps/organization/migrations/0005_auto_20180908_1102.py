# Generated by Django 2.0.2 on 2018-09-08 11:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0004_teacher_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='teacher',
            name='image',
            field=models.ImageField(blank=True, default='', upload_to='teacher/%Y/%m', verbose_name='头像'),
        ),
    ]
