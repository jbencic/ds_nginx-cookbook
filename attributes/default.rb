default['ds_nginx']['cache_dir'] = '/var/lib/nginx/cache'

override['nginx']['worker_rlimit_nofile'] = 65_536
override['nginx']['worker_connections']   = 65_536
override['nginx']['multi_accept']         = true
override['nginx']['access_log_options']   = 'simple buffer=16k'
override['nginx']['log_formats']          = {
  'simple' => '\'$time_iso8601 $remote_addr $status $request_time ' \
              '"$scheme://$host$request_uri" "$http_user_agent"\'',
}

override['nginx']['extra_configs']['open_file_cache'] = 'max=4096'

override['nginx']['gzip_types'] = %w(
  text/plain
  text/css
  text/javascript
  application/javascript
  application/x-javascript
  application/json
  application/xml
  application/xhtml+xml
  application/x-font-ttf
  application/x-font-opentype
  application/vnd.ms-fontobject
  image/svg+xml
  image/x-icon
)

override['nginx']['status']['port'] = '81'
override['nginx']['default_site_enabled'] = false
override['nginx']['server_tokens'] = 'off'
override['nginx']['repo_source'] = nil
