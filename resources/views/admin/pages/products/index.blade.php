@extends('admin.layouts.app')

@section('title') Gestão de Produtos  @endsection

@section('content')
    <h1>Exibindo os produtos</h1>

    <a href="{{route('products.create')}}" class="btn btn-sm btn-primary">Cadastrar</a>

    <hr>
    <table class="table table-hover table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Preço</th>
            <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($products as $item)
                <tr>
                    <td>{{$item->id}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->price}}</td>
                <td>
                    <a class="btn btn-sm btn-warning" href="{{route('products.edit', $item->id)}}">Editar</a>
                    <a class="btn btn-sm btn-info" href="{{route('products.show', $item->id)}}">Detalhes</a>
                </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {!!$products->links()!!}
@endsection
