@extends('admin.layouts.app')

@section('title')
Editar Produto
@endsection
@section('content')
<h1>Editar Produto {{$product->name}}</h1>

<form action="{{route('products.update', $product->id)}}" method="POST">
    {{-- <input type="text" name="_token" value="{{csrf_token()}}"> --}}
    @method('PUT')
    @include('admin.pages.products._partials.form')
</form>
@endsection
