# Generated by Django 2.0.2 on 2018-09-09 11:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0011_auto_20180909_0833'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='announcement',
            field=models.CharField(blank=True, default='', max_length=300, verbose_name='课程公告'),
        ),
    ]
