<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
</head>
<body>
    <a href="{{route('admin.index')}}">Administracion</a>
    <a href="{{route('carrito')}}">Carrito</a>
    <a href="{{route('productos')}}">Productos</a>
    <br>
    <br>
    @yield('content');
</body>
</html>