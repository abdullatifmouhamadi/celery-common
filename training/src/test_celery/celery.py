from __future__ import absolute_import
from celery import Celery


app = Celery('test_celery', include=['test_celery.tasks'])
app.config_from_object('test_celery.celeryconfig')