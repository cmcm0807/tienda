@extends('layouts.plantilla')

@section('title', 'productos')

@section('content')
    <h1>Los productos en stock actualmente son: </h1>

    <ul>
        @foreach ($productos as $producto)
        @if ($producto->cantidad > 0)
        <li>{{$producto->nombre}}</li>
        <strong>precio: </strong>{{$producto->valor}} $
        <br>
        <strong>categoria: </strong>{{$producto->categoria}}
        <p></p>
        @endif
            
        @endforeach
    </ul>
    {{$productos->links()}}
@endsection