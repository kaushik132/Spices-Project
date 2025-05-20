@extends('layouts.dashboard.main')
@section('main-containers')

<style>
.home-about-us-details p {
    text-align: justify;
}


</style>

    <!-- ============================== Banner ======================================= -->
    <section>
        <div class="container-fluid">



            
@foreach ($banner as $banners)
    

            <div class="banner-slide">
                <div class="row">
                    <div class="col-md-7">
                        <div class="hero-section-details">
                            <h1>{{$banners->title}}</h1>
                            <p>
                               {!!$banners->description!!}
                            </p>
                          @if ($banners->link != null)
                              
                          <a href="{{$banners->link}}" target="_blanck"><button class="explore-more-btn">
                              Explore more <i class="bi bi-arrow-right"></i></button></a>
                              @endif
                        </div>
                    </div>
                    <div class="col-md-5 mt-3">
                        <div>
                            <img src="{{ url('uploads/' . $banners->image) }}"
                                alt="banner-image" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>

@endforeach

        </div>
    </section>

    <!-- ==================================== High Quality Spices =========================== -->
    <section class="mt-5">
        <div class="container">
            <div class="high-quality-main-headings">
                <span>20 Years Of Experience</span>
                <h2>High Quality Spices</h2>
            </div>
            <div class="row mt-3">
                <div class="col-md-3 col-6 mt-3">
                    <div class="quality-main-box">
                        <div><img src="./assets/images/qualityicon-4.jpg" alt="" /></div>
                        <p class="mt-3">High Grade Ingredients</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mt-3">
                    <div class="quality-main-box">
                        <div><img src="./assets/images/qualityicon-3.jpg" alt="" /></div>
                        <p class="mt-3">Sourced from best Farms</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mt-3">
                    <div class="quality-main-box">
                        <div><img src="./assets/images/qualityicon-2.jpg" alt="" /></div>
                        <p class="mt-3">High Grade Ingredients</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mt-3">
                    <div class="quality-main-box">
                        <div><img src="./assets/images/qualityicon-1.jpg" alt="" /></div>
                        <p class="mt-3">Hygenic Packing</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ==================================== Products Slider =========================== -->
    <section class="mt-5 products-main-background">
        <div class="container-fluid">
            <div class="high-quality-main-headings">
                <span>Lorem, ipsum dolor.</span>
                <h2 class="text-white">Our Products</h2>
            </div>
            <div class="swiper products-slider">
                <div class="swiper-wrapper">
                    <!-- 6 Example Slides -->

               
@foreach ($productCat as $productCats)
    
<div class="swiper-slide">
    <a href="{{url('product-details/'.$productCats->slug)}}" class="text-decoration-none">
    <div class="main-prodcut-show-view">
        <div><img
                src="{{ url('uploads/' . $productCats->image) }}"
                alt="product-image" class="img-fluid"></div>
        <h6>{{$productCats->product_name}}</h6>
        <p><span>&#8377;{{ $productCats->descount_price }}</span> &#8377;{{ $productCats->price }}</p>
    </div>
    </a>
</div>
@endforeach
            

                 

                

             

                  
                </div>
                <!-- Navigation buttons -->

                <div class="swiper-button-next"></div>

                <div class="swiper-button-prev"></div>
            </div>


        </div>
    </section>
    <!-- ====================================== About Us========================================== -->
     <section class="mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mt-3">
                    <div class="high-quality-main-headings text-start">
                        <h2 class="mb-2">{{$about->name}}</h2>
                    </div>
  <div class="home-about-us-details">
    <div class="d-flex align-items-start mt-3">
        <i class="bi bi-arrow-right-circle-fill fs-2 text-warning me-3 mt-1"></i>
        <p class="mb-0">{!! $about->description !!}</p>
    </div>
</div>


                </div>
                <div class="col-md-6 mt-3 text-center">
                    <div class="about-us-main-img-wrapper"  style="overflow-x: hidden;">
                        <img
                          src="{{ url('uploads/' . $about->image) }}"
                          alt="about-image"
                          class="about-us-main-img"
                        />
                      </div>
                </div>
            </div>
        </div>
     </section>

     <!-- ========================================Spices Poster Sliders======================================================== -->
   <section class="mt-5">
     <div class="swiper poster-slider">
        <div class="swiper-wrapper mb-5">
            <!-- 6 Example Slides -->

            @foreach ($poster as $posters)
                
            <div class="swiper-slide">
                <div>
                    <img src="{{url('uploads/'.$posters->image)}}" alt="slider" class="img-fluid">
                 </div>
            </div>
            @endforeach

   

        
        </div>
        <!-- Navigation pagination -->
        <div class="swiper-pagination"></div>
    </div>
   </section>
     <!-- ==================================== Testimonial Slider =========================== -->
    <section class="mt-5 mb-5">
        <div class="container">
            <div class="high-quality-main-headings">
                <span>Lorem, ipsum dolor.</span>
                <h2>What Our Customers Say</h2>
            </div>
            <div class="swiper testimonial-slider">
                <div class="swiper-wrapper">
                    <!-- 6 Example Slides -->

                    
@foreach ($testimonal as $testimonals)
    

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="{{ url('uploads/' . $testimonals->image) }}"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">{{$testimonals->name}}</div>

                                    <div class="date">{{$testimonals->role}}</div>

                                 @php
    $rating = $testimonals->star;
    $fullStars = floor($rating);
    $halfStar = ($rating - $fullStars) >= 0.5 ? true : false;
    $emptyStars = 5 - $fullStars - ($halfStar ? 1 : 0);
@endphp

<div class="icon">
    {{-- Full stars --}}
    @for ($i = 0; $i < $fullStars; $i++)
        <i class="bi bi-star-fill"></i>
    @endfor

    {{-- Half star --}}
    @if ($halfStar)
        <i class="bi bi-star-half"></i>
    @endif

    {{-- Empty stars --}}
    @for ($i = 0; $i < $emptyStars; $i++)
        <i class="bi bi-star"></i>
    @endfor
</div>

                                </div>
                            </div>

                            <p>
                            
                                {{$testimonals->description}}
                            </p>
                        </div>
                    </div>

             @endforeach

                  

                  
                    

                  
                </div>
                <!-- Navigation buttons -->

                <div class="swiper-button-next"></div>

                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>


@endsection