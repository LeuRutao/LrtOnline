# Generated by Django 2.0.2 on 2018-09-09 08:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0005_auto_20180908_1102'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='teacher_age',
            field=models.IntegerField(default=25, verbose_name='年龄'),
        ),
    ]
