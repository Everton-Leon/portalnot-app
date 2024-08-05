<x-app-layout>
    <x-slot name="header">
        <h2 class="container mx-auto px-4">
            {{ __('Página de Noticias') }}
        </h2>
    </x-slot>

    <div class="container">
        <div class="row mb-4 justify-content-center">
            @if ($noticias->isEmpty())
            <p>Não há noticias disponíveis no momento</p>
            @else
            @foreach ($noticias as $noticia)
            <div class="card col-3 p-0 me-2 mb-2" style="width: 18rem;">
                <img src="{{ $noticia->url }}" class="card-img-top img-fluid" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{ $noticia->titulo }}</h5>
                    <p class="card-text">{{ $noticia->descricao }}</p>
                </div>
            </div>
            @endforeach
            @endif
        </div>
    </div>
</x-app-layout>