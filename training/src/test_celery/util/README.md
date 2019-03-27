# Setting up rabbitmq

https://tests4geeks.com/python-celery-rabbitmq-tutorial/

### add user 'jimmy' with password 'jimmy123'
```
$ rabbitmqctl add_user jimmy jimmy123
```
### add virtual host 'jimmy_vhost'
```
$ rabbitmqctl add_vhost jimmy_vhost
```
### add user tag 'jimmy_tag' for user 'jimmy'
```
$ rabbitmqctl set_user_tags jimmy jimmy_tag
```
### set permission for user 'jimmy' on virtual host 'jimmy_vhost'
```
$ rabbitmqctl set_permissions -p jimmy_vhost jimmy ".*" ".*" ".*"
```



# Start celery worker
```
celery -A test_celery worker --loglevel=info
```

# Run task
```
python -m test_celery.run_tasks
```
