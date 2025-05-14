@extends('layouts.dashboard.main')
@section('main-containers')

<section class="mb-5">
    <div class="p-2"><small>Home / Products</small></div>
    <div class="container-fluid">
        <div class="high-quality-main-headings">
            <span>Lorem, ipsum dolor.</span>
            <h2>Our Products</h2>
        </div>
        <div class="dropdown text-end mt-3">
            <button class="btn btn-secondary dropdown-toggle sort-by-filter-box" type="button" data-bs-toggle="dropdown" aria-expanded="false">
             Sort By
            </button>
            <ul class="dropdown-menu">
                @foreach ($productCat as $filler)
                <li><a class="dropdown-item" href="{{url('products/'.$filler->slug)}}">{{$filler->name}}</a></li>
                    
                @endforeach
            </ul>
          </div>
        <div class="row">




            @foreach ($productList as $productLists)
                
            <div class="col-md-3">
                <a href="{{url('product-details/'.$productLists->slug)}}" class="text-decoration-none">
                    <div class="main-prodcut-show-view">
                        <div><img
                                src="{{ asset('uploads/'.$productLists->image) }}"
                                alt="product-image" class="img-fluid"></div>
                        <h6>{{$productLists->product_name}}</h6>
                        <p><span>&#8377;{{$productLists->descount_price}}</span> &#8377;{{$productLists->price}}</p>
                    </div>
                </a> 
            </div>
            @endforeach
       

       
          
      
        </div>

       

        <!-- -----------------------Pagination------------------------- -->

          @if ($productList->lastPage() > 1)
<nav class="mt-4" aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item {{ $productList->onFirstPage() ? 'disabled' : '' }}">
            <a class="page-link" href="{{ $productList->previousPageUrl() }}">Previous</a>
        </li>

        @for ($i = 1; $i <= $productList->lastPage(); $i++)
            <li class="page-item {{ $productList->currentPage() == $i ? 'active' : '' }}">
                <a class="page-link" href="{{ $productList->url($i) }}">{{ $i }}</a>
            </li>
        @endfor

        <li class="page-item {{ !$productList->hasMorePages() ? 'disabled' : '' }}">
            <a class="page-link" href="{{ $productList->nextPageUrl() }}">Next</a>
        </li>
    </ul>
</nav>
@endif

          
    </div>
 </section>

@endsection