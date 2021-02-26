@extends('layouts.plantilla')

@section('title', 'Administracion')

@section('content')
    <h1>Para modificar los datos de los productos hacer click en el siguiente link</h1>
    <a href="{{route('admin.edit')}}">Modificar Productos</a>
    <h1>En esta pagina podra agragar nuevos productos</h1>
    <form action="{{ route('admin.store') }}" method="post">

        @csrf

        <label>
            nombre:
            <br>
            <input type="text" name="name" >
        </label>
        <br>
        <label>
            precio:
            <br>
            <input type="number" name="precio" >
        </label>
        <br>
        <label>
            categoria:
            <br>
            <input type="text" name="categoria" >
            <br>
        <label>
            cantidad:
            <br>
            <input type="number" name="cantidad" >
        </label>
        </label>
        <br>
        <button type="submit">Agregar producto</button>
    </form>
@endsection
