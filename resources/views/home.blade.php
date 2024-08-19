<x-app-layout>
    @if ($noticias->isEmpty())
    <p>Não há noticias disponíveis no momento</p>
    @else
    <!-- Carrosel -->
    <div id="carouselExampleAutoplaying" class="carousel slide my-3" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/img/carrosel01.png" class="d-block w-100 vh-50" alt="...">
            </div>
            <div class="carousel-item">
                <img src="/img/carrosel02.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="/img/carrosel03.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="container">
        <div class="row mb-4 justify-content-center">
            @foreach ($noticias as $noticia)
            <div class="card col-3 p-0 me-2 mb-2" style="width: 18rem;">
                    <a href="{{ route('noticias.show', $noticia->id) }}" class="link">
                        <img src="{{ $noticia->url }}" class="card-img-top img-fluid" alt="{{ $noticia->url }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $noticia->titulo }}</h5>
                            <p class="card-text">{{ $noticia->descricao }}</p>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
    @endif
</x-app-layout>