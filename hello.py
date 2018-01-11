def wsgi_application(environ, start_response):

  body = ""

  for query in env['QUERY_STRING'].split("&"):
        body += query + "\n"
        
  status = '200 OK'
  headers = [
  ('Content-Type', 'text/plain')
  ]
  start_response(status, headers)
  return [ body ]
