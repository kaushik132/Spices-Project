<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 

      <link rel="icon" type="image/x-icon" href="{{url('new/images/f-logo.png')}}">

      @if(isset($seo_data['seo_title']))
      <title>{{ $seo_data['seo_title'] }}</title>
      @endif
    
      @if(isset($seo_data['seo_description']))
          <meta name="description" content="{{$seo_data['seo_description']}}" />
          @endif
    
          @if(isset($seo_data['keywords']))
          <meta name="keywords"  content="{{$seo_data['keywords']}}" />
          @endif  
          
          
          <meta property="og:title" content="{{$seo_data['seo_title']}}">
    <meta property="og:site_name" content="Codepin">

    @if(isset($canocial))
    <meta property="og:url" content="{{$canocial}}">
    @endif

    <meta property="og:description" content="{{$seo_data['seo_description']}}">
    <meta property="og:type" content="website">
    <meta property="og:image" content="">
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{url('assets/css/swiper-bundle.min.css')}}" />
    <link rel="stylesheet" href="{{url('assets/css/style.css')}}" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Home Page</title>
</head>

<body>
    <!-- ============================= Header ================================== -->
    <header class="nav-container">
        <div class="nav-logo">
            <a href="{{route('home')}}"><img src="{{url('assets/images/logo.png')}}" alt="logo" /></a>
        </div>
        <i class="bi bi-x-diamond-fill open-menu"></i>
        <div class="background"></div>

        <div class="nav-link-container">
            <i class="bi bi-x-circle close-menu"></i>
            <ul class="nav-links">
                <li class="nav-link-item"><a href="{{route('home')}}">Home</a></li>

                <li class="nav-link-item dropdown-menu-branch">
                    <a href="#" data-toggle="dropdown-menu">Products <i class="bi bi-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        @php
                            use App\Models\ProductCategory;
                            $productCat = ProductCategory::all();
                        @endphp
                        <li class="dropdown-menu-item">
                            @foreach ($productCat as $productCats)
                                
                            <a href="{{url('products/'.$productCats->slug)}}">{{$productCats->name}}</a>
                            @endforeach
                        </li>
                      
                        <li class="dropdown-menu-item">
                            <a href="{{route('products')}}">View all <i class="bi bi-arrow-right"></i></a>
                        </li>
                    </ul>
                </li>

                <li class="nav-link-item">
                    <a href="{{route('contactUs')}}">Contact us</a>
                </li>
                <li class="nav-link-item">
                    <a href="https://api.whatsapp.com/send?phone=1234567890" target="_blanck"><span class="nav-apply-btn">WhatsApp <i class="bi bi-whatsapp"></i></span></a>
                </li>
            </ul>
        </div>
    </header>