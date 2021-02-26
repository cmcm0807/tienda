<?php

namespace App\Http\Controllers;

use App\Models\producto;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin');
    }

    public function store(Request $request){
        $producto = new producto();

        $producto->nombre = $request->name;
        $producto->valor = $request->precio;
        $producto->categoria = $request->categoria;
        $producto->cantidad = $request->cantidad;
        if ($request->cantidad > 0) {
            $producto->estado = 1;
        }else {
            $producto->estado = 0;
        }
        $fecha = date('Y-m-d G:i:s');
        $producto->created_at = $fecha;
        $producto->updated_at = $fecha;
        $producto->save();
        
        return redirect()->route('productos');
    }

    public function edit(){
        $productos = producto::all();
        return view('productos.edit', compact('productos'));
    }    

    public function update(Request $request, producto $producto){
        return $request;
    }

    public function hola(Request $request){
        for ($i=0; $i < $request; $i++) { 
            return "hola";
        }
    }

}
