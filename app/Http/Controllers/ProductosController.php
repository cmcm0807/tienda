<?php

namespace App\Http\Controllers;

use App\Models\producto;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    public function __invoke()
    {
        $productos = producto::orderby('id','desc')->paginate();
        
        return view('Productos.productos', compact('productos'));
    }

}
