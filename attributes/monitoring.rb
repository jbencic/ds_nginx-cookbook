override['ds_base']['monitoring']['datadog']['nginx']['instances'] = [
  {
    'nginx_status_url' => 'http://localhost:81/nginx_status',
    'tags'             => [
      'role:app_router',
    ],
  },
]
