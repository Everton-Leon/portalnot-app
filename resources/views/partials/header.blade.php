<div class="row">
    <div class="col-12 bg-warning text-end">
    <a href="{{ route('home') }}" class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover me-4">
            Notícias
        </a>
        @if (Route::has('login'))
        @auth
        <a href="{{ url('/dashboard') }}" class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
            Dashboard
        </a>
        @else
        <a href="{{ route('login') }}" class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover me-4">
            Log in
        </a>

        @if (Route::has('register'))
        <a href="{{ route('register') }}" class="link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
            Register
        </a>
        @endif
        @endauth
        @endif
    </div>
</div>
<div class="row" id="header-noticias">
    <div class="col-12 text-center p-5">
        <h1 class="h1 text-light">Formosa News</h1>
    </div>
</div>