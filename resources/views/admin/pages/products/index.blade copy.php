@extends('admin.layouts.app')

@section('title') 'Gestão de Produtos'  @endsection

@section('content')
    <h1>Exibindo os produtos</h1>

    <a href="{{route('products.create')}}">Cadastrar</a>

    <hr>
    @isset($products)
        @foreach ($products as $item)
            <p class="@if($loop->last) last @endif">{{$item}}</p>
        @endforeach
    @endisset

    @forelse ($products2 as $item)
        <p>{{$item}}</p>
    @empty
        Não existem produtos cadastrados;
@endforelse

<hr>
@component('admin.components.card')
    @slot('title')
        <h1>Título Card</h1>
    @endslot
    Um card de exemplo
@endcomponent

@include('admin.includes.alerts.alerts', ['content' => "Alerta de preços de produtos"])


    <hr>
    @if ($teste === '123')
        É igual.
        @else
        É diferente
    @endif
    <br>
    @unless ($teste === '123') {{-- inverso do if --}}
        É diferente verdadeiro
    @else
        è verdadeiro
    @endunless
<br>
    @isset($record)
    Erro
    @endisset

    @auth
     Autenticado
     @else
     Não autenticado
    @endauth

    @guest
        <p>usuario convidado</p>
    @endguest
<br>
    @switch($teste)
        @case(1)
        Igual a 1
            @break
        @case(2)
        Igual a 2
            @break
        @case(123)
        Igual a 123
            @break
        @default
        Default
    @endswitch

    {{-- {{$teste}} --}}
@endsection

@push('style')
    <style>
        .last{
            background-color: #09f;
        }
    </style>
@endpush

@push('scripts')
    <script>
        document.body.style.background = "#ccc";
    </script>
@endpush
