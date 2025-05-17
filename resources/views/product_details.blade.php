@extends('layouts.dashboard.main')
@section('main-containers')
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>

    <!-- ================================ Product Details ============================================ -->
    <section>
        <div class="p-2"><small>Home / Products / Product Details</small></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 mt-3">
                    <div class="slider-container">
                        <!-- Main Image -->
                        <div class="main-image">
                            <img id="mainImage" src="{{ url('uploads/' . $productData->image) }}" alt="Main Image">
                        </div>

                        <!-- Thumbnails Swiper -->
                        <div class="swiper thumbnail-slider">
                            <div class="swiper-wrapper">
                                @php
                                    $pictures = is_string($productData->pictures)
                                        ? json_decode($productData->pictures, true)
                                        : $productData->pictures;
                                @endphp
                                @if (is_array($pictures) && count($pictures) > 0)
                                    @foreach ($pictures as $tour_banner)
                                        <div class="swiper-slide product-thumbnail-slider">
                                            @if (isset($tour_banner))
                                                <img src="{{ asset('uploads/' . $tour_banner) }}"
                                                    data-full="{{ asset('uploads/' . $tour_banner) }}">
                                            @endif
                                        </div>
                                    @endforeach
                                @endif

                            </div>
                            <div class="swiper-button-prev" style="background-color: transparent;border:none"></div>
                            <div class="swiper-button-next" style="background-color: transparent;border:none"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="product-main-details-box">
                        <h1>{{ $productData->product_name }}</h1>
                        {{-- <small>SKU: TP 100g 3(GS)</small> --}}
                        <h2><span>&#8377;{{ $productData->descount_price }}</span> &#8377;{{ $productData->price }}</h2>
                        <small>(Inclusive of all taxes)</small>
                        <p>{!! $productData->contant !!}</p>

                        <div>Size:</div>
              <!-- Quantity Selector -->
<select name="quantity" id="quantity-selector" class="contact-input-box w-50">
    <option value="1">100g (pack of 3)</option>
    <option value="1.2">200g (pack of 2)</option> <!-- +20% -->
    <option value="1.5">500g</option>             <!-- +50% -->
    <option value="2">1Kg</option>                <!-- +100% -->
</select>

<!-- Description Table (Base: 100g) -->
<div class="mt-3">Description:</div>
<div id="product-description">
    {!! $productData->description !!}
</div>

<script>
    document.getElementById('quantity-selector').addEventListener('change', function () {
        const multiplier = parseFloat(this.value);
        const descriptionDiv = document.getElementById('product-description');

        // Clone original HTML
        const tempDiv = document.createElement('div');
        tempDiv.innerHTML = `{!! addslashes($productData->description) !!}`; // Safe encoding

        // Loop through all table data cells
        const rows = tempDiv.querySelectorAll('tr');
        rows.forEach(row => {
            const th = row.querySelector('th')?.textContent.toLowerCase();
            const td = row.querySelector('td');

            if (!td) return;

            const originalValue = td.textContent.trim();

            // Check if it's a measurable value
            const match = originalValue.match(/([\d\.]+)\s*([a-zA-Z]+)/);
            if (match) {
                let value = parseFloat(match[1]);
                let unit = match[2];

                // Increase value
                const newValue = (value * multiplier).toFixed(2);
                td.textContent = newValue + unit;
            }
        });

        // Replace HTML
        descriptionDiv.innerHTML = tempDiv.innerHTML;
    });
</script>

                        <div class="d-flex align-items-center mt-4">
                            <div>Share :</div>
                            @if ($productData->facebook != null)
                                <a href="{{ $productData->facebook }}" target="_blank">
                                    <div class="social-icons"><i class="fa-brands fa-facebook-f"></i></div>
                                </a>
                            @endif

                            @if ($productData->whatsapp != null)
                                <a href="{{ $productData->whatsapp }}" target="_blank">
                                    <div class="social-icons"><i class="fa-brands fa-whatsapp"></i></div>
                                </a>
                            @endif

                            @if ($productData->instagram != null)
                                <a href="{{ $productData->instagram }}" target="_blank">
                                    <div class="social-icons"><i class="fa-brands fa-instagram"></i></div>
                                </a>
                            @endif

                            @if ($productData->linkedin != null)
                                <a href="{{ $productData->linkedin }}" target="_blank">
                                    <div class="social-icons"><i class="fa-brands fa-linkedin-in"></i></div>
                                </a>
                            @endif


                        </div>
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
                <h2 class="text-white">Related Products</h2>
            </div>
            <div class="swiper products-slider">
                <div class="swiper-wrapper">
                    <!-- 6 Example Slides -->
         

                

               @foreach ($product as $products)
                   @if ($products->product_id == $productData->product_id)
                 
                
               <div class="swiper-slide">
                   <a href="{{url('product-details/'.$products->slug)}}" class="text-decoration-none">
                       <div class="main-prodcut-show-view">
                           <div><img
                                   src="{{ url('uploads/' . $products->image) }}"
                                   alt="product-image" class="img-fluid"></div>
                           <h6>{{$products->product_name}}</h6>
                           <p><span>&#8377;{{ $productData->descount_price }}</span> &#8377;{{ $productData->descount_price }}</p>
                       </div>
                   </a>
               </div>
                      
                   @endif
               @endforeach


                 

                   

              

              
                </div>
                <!-- Navigation buttons -->

                <div class="swiper-button-next"></div>

                <div class="swiper-button-prev"></div>
            </div>


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

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Anil Sharma</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                                Magnam sapiente nobis modi sint eius dolorum quibusdam
                                doloremque aperiam accusamus laboriosam.
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Meena Kapoor</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam,
                                magnam eaque! Omnis perferendis itaque temporibus qui debitis
                                nihil dolor fuga!
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Rajiv Joshi</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                Voluptates aliquam assumenda laboriosam ex nisi nesciunt
                                similique odit provident, maiores illum.
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Rajeev Sharma</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Mollitia, facere. Ad accusamus eum provident quis facilis
                                ducimus aspernatur alias voluptate?
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Priya Soni</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                                Maxime praesentium eum amet quis dolore nihil nam libero
                                dolorum voluptas provident!
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Vijay Parmar</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Laudantium veritatis modi itaque voluptatem delectus ea
                                cupiditate velit ipsum distinctio illo?
                            </p>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="testimonial-slider-box">
                            <div class="d-flex align-items-center">
                                <div>
                                    <img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D"
                                        alt="user" class="user-image" />
                                </div>

                                <div class="testimonial-user-details">
                                    <div class="name">Aditi Khanna</div>

                                    <div class="date">Lorem, ipsum.</div>

                                    <div class="icon">
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>

                            <p>
                                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                Corrupti quisquam quas maiores ea neque aliquid, quos ipsa
                                ipsam enim qui.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Navigation buttons -->

                <div class="swiper-button-next"></div>

                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>


    </div>
@endsection
