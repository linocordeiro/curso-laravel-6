@extends('admin.layouts.app')

@section('title')
Cadastrar Novo Produto
@endsection
@section('content')
<h1>Cadastrar Novo Produto</h1>

<form action="{{route('products.store')}}" method="POST" enctype="multipart/form-data">{{--  enctype necessário para o envio de arquivo --}}
    @include('admin.pages.products._partials.form')
</form>
@endsection
