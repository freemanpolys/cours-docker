<!DOCTYPE html>

<html>
<head>
  <title>UUID Generator</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<section  style="text-align: center">
  <h1>UUID Generator</h1>
  {{range $user := .users}}
  <h3> {{$user.Name}}</h3>
  {{end}}
</section>
  <script src="/static/js/reload.min.js"></script>
</body>
</html>
