@extends('layouts.plantilla')

@section('title', 'Administracion')

@section('content')
    <h1>Para agregar un nuevo productos hacer click en el siguiente link</h1>
    <a href="{{route('admin.store')}}">Agreagar Productos</a>
    <h1>En esta pagian podra Modificar los productos </h1>
    <form action="{{ route('admin.update')}}" method="POST">
        
        @csrf
        @method('put')  
    @foreach ($productos as $producto)
    <ul>
        <label>
            nombre:
            <br>
            <input type="text" name="name" value="{{$producto->nombre}}">
        </label>
        <br>
        <label>
            precio:
            <br>
            <input type="number" name="precio" value="{{$producto->valor}}">
        </label>
        <br>
        <label>
            categoria:
            <br>
            <input type="text" name="categoria" value="{{$producto->categoria}}">
            <br>
        </label>
        <label>
            cantidad:
            <br>
            <input type="number" name="cantidad" value="{{$producto->cantidad}}">
        
        </label>
    </ul>
        <!--<button onclick="window.location.href='admin/update.{{$producto->id}})'">Continue</button>-->
        <a href="{{route('admin.update')}}.{{$producto->id}}">
            <button type="submit">Actualizar productos</button>
    </a>
        <br>
    @endforeach 
</form>
@endsection
