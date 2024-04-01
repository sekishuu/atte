@if ($paginator->hasPages())
<nav class="pagination__position">
    <ul class="pagination">
        {{-- "Previous Page" Link --}}
        <li class="{{ $paginator->onFirstPage() ? 'disabled' : '' }}">
            @if ($paginator->currentPage() > 1)
            <a href="{{ $paginator->previousPageUrl() }}{{ strpos($paginator->previousPageUrl(), '?') === false ? '?' : '&' }}date={{ request('date') }}" rel="prev">&lsaquo;</a>
            @else
            <span>&lsaquo;</span>
            @endif
        </li>

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
        @if (is_array($element))
        @foreach ($element as $page => $url)
        <li class="{{ $page == $paginator->currentPage() ? 'active' : '' }}">
            <a href="{{ $url }}{{ strpos($url, '?') === false ? '?' : '&' }}date={{ request('date') }}">{{ $page }}</a>
        </li>
        @endforeach
        @endif
        @endforeach

        {{-- "Next Page" Link --}}
        <li class="{{ $paginator->hasMorePages() ? '' : 'disabled' }}">
            <a href="{{ $paginator->nextPageUrl() }}{{ strpos($paginator->nextPageUrl(), '?') === false ? '?' : '&' }}date={{ request('date') }}" rel="next">&rsaquo;</a>
        </li>
    </ul>
</nav>
@endif