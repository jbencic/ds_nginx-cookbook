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

override['nginx']['gzip_comp_level'] = '5'
override['nginx']['gzip_types'] = %w(
  application/atom+xml
  application/javascript
  application/json
  application/ld+json
  application/manifest+json
  application/rss+xml
  application/vnd.geo+json
  application/vnd.ms-fontobject
  application/x-font-ttf
  application/x-web-app-manifest+json
  application/xhtml+xml
  application/xml
  font/opentype
  image/bmp
  image/svg+xml
  image/x-icon
  text/cache-manifest
  text/css
  text/plain
  text/vcard
  text/vnd.rim.location.xloc
  text/vtt
  text/x-component
  text/x-cross-domain-policy
)

override['nginx']['status']['port'] = '81'
override['nginx']['default_site_enabled'] = false
override['nginx']['server_tokens'] = 'off'
override['nginx']['repo_source'] = nil
