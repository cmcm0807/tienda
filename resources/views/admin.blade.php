@extends('layouts.plantilla')

@section('title', 'Administracion')

@section('content')
    <h1>Para modificar los datos de los productos hacer click en el siguiente link</h1>
    <a href="{{route('admin.edit')}}">Modificar Productos</a>
    <h1>Para agreagar produtos hacer click en el siguiente link</h1>
    <a href="{{route('admin.create')}}">Agregar Productos</a>
@endsection
