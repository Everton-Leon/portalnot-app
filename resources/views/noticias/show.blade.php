<x-app-layout>
    <x-slot name="header">
        <h2 class="container mx-auto mb-4 px-4">
            {{ $noticia->titulo }}
        </h2>
    </x-slot>

    <div class="container mx-auto my-4 px-4">
        <div class="row">
            <div class="col-6">
                {{ $noticia->descricao }}
            </div>
            <div class="col-6">
                @if ($noticia->url)
                    <img src="{{ asset($noticia->url) }}" alt="{{ $noticia->titulo }}">
                @endif
            </div>
        </div>
    </div>
</x-app-layout>