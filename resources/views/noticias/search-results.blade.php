<x-app-layout>
    <x-slot name="header">
        <h2 class="container mx-auto mb-4 px-4">
            Resultados da busca para "{{ request('query') }}"
        </h2>
    </x-slot>

    <div class="container">
        <div class="row mb-4">
            <div class="col-12">
                @if($noticias->isNotEmpty())
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
                @else
                <p>No news found.</p>
                @endif
            </div>
        </div>
    </div>
</x-app-layout>