@include('layouts.navigation')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ __("Você está conectado!") }}
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto mb-5 px-4">
        <div class="row">
            <form action="{{ route('noticias.index') }}" method="GET">
                @csrf
                <div class="mb-3">
                    <label for="ititulo" class="form-label">Titulo</label>
                    <input type="text" class="form-control" id="ititulo" name="titulo">
                </div>
                <div class="mb-3">
                    <label for="idescricao" class="form-label">Descrição</label>
                    <input type="text" class="form-control" id="idescricao" name="descricao">
                </div>
                <button class="btn btn-primary">Filtrar</button>
                <a href="{{ route('noticias.index') }}" class="btn btn-secondary">Limpar Filtros</a>
            </form>
        </div>
    </div>
    <div class="container">
        <div class="row mb-4">
            <div class="col-6">
                <h1>Noticias</h1>
                @if ($message = Session::get('success'))
                <div class="alert alert-sucess">
                    {{ $message }}
                </div>
                @endif
            </div>
            <div class="col-6 text-end">
                <a href="{{ route('noticias.create') }}" class="btn btn-primary">Criar Noticia</a>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-12">
                @if($noticias->count())
                <table id="myTable" class="table align-middle">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Titulo</th>
                            <th scope="col">Descricao</th>
                            <th scope="col">URL</th>
                            <th scope="col">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($noticias as $noticia)
                        <tr>
                            <td scope="row">{{ $noticia->id }}</td>
                            <td>{{ $noticia->titulo }}</td>
                            <td>{{ $noticia->descricao }}</td>
                            <td class="col-3">
                                <!-- <a href="{{ $noticia->url }}">{{ $noticia->titulo }} foto</a> -->
                                <img src="{{ $noticia->url }}" alt="foto de {{ $noticia->titulo }}" class="w-50 img-fluid d-block mx-auto">
                            </td>
                            <td>
                                <form action="{{ route('noticias.destroy', $noticia->id) }}" method="POST">
                                    <a href="{{ route('noticias.show', $noticia->id) }}" class="me-2 btn btn-secondary"><i class="bi bi-eye"></i></a>
                                    <a href="{{ route('noticias.edit', $noticia->id) }}" class="me-2 btn btn-primary"><i class="bi bi-pencil-square"></i></a>
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger"><i class="bi bi-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div>
                    {{ $noticias->links() }}
                </div>
                @else
                <p>No news found.</p>
                @endif
            </div>
        </div>
</x-app-layout>