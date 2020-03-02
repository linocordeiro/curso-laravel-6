@extends('admin.layouts.app')

@section('title') Detalhes do Produtos {{$product->name}}  @endsection

@section('content')

<h1>Produto {{ $product->name }}</h1>

<a href="{{route('products.index')}}" class="btn btn-secondary">Voltar</a>

<ul>
    <li><strong>Nome: </strong>{{$product->name}}</li>
    <li><strong>Preço: </strong>{{$product->price}}</li>
    <li><strong>Descrição: </strong>{{$product->description}}</li>
</ul>

<form action="{{route('products.destroy', $product->id)}}" method="POST">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-danger btn-sm">Deletar Produto</button>
</form>

@endsection

