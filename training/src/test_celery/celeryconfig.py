broker_url = 'amqp://jimmy:jimmy123@localhost/jimmy_vhost'
#result_backend = 'rpc://'
result_backend = 'db+postgresql://mycelery_username:mycelery_password@localhost:5432/mycelery_dbname'
task_serializer = 'json'
result_serializer = 'json'
accept_content = ['json']
timezone = 'Europe/Oslo'
enable_utc = True

task_routes = {
    'tasks.add': 'low-priority',
}
task_annotations = {
    'tasks.add': {'rate_limit': '10/m'}
}


