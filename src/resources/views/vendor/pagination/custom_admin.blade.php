@if ($paginator->hasPages())
<nav class="pagination__position">
    <ul class="pagination">
        {{-- "Previous Page" Link --}}
        <li class="{{ $paginator->onFirstPage() ? 'disabled' : '' }}">
            @if ($paginator->currentPage() > 1)
            <a href="{{ $paginator->previousPageUrl() }}{{ strpos($paginator->previousPageUrl(), '?') === false ? '?' : '&' }}month={{ request('month') }}" rel="prev">&lsaquo;</a>
            @else
            <span>&lsaquo;</span>
            @endif
        </li>

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="disabled" aria-disabled="true"><span>{{ $element }}</span></li>
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    <li class="{{ $page == $paginator->currentPage() ? 'active' : '' }}">
                        <a href="{{ $url }}{{ strpos($url, '?') === false ? '?' : '&' }}month={{ request('month') }}">{{ $page }}</a>
                    </li>
                @endforeach
            @endif
        @endforeach

        {{-- "Next Page" Link --}}
        <li class="{{ $paginator->hasMorePages() ? '' : 'disabled' }}">
            <a href="{{ $paginator->nextPageUrl() }}{{ strpos($paginator->nextPageUrl(), '?') === false ? '?' : '&' }}month={{ request('month') }}" rel="next">&rsaquo;</a>
        </li>
    </ul>
</nav>
@endif