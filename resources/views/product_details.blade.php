@extends('layouts.dashboard.main')
@section('main-containers')
    <!-- ================================ Product Details ============================================ -->
<section>
    <div class="p-2"><small>Home / Products / Product Details</small></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mt-3">
                  <div class="slider-container">
                    <!-- Main Image -->
                    <div class="main-image">
                      <img id="mainImage" src="{{url('uploads/'.$productData->image)}}" alt="Main Image">
                    </div>
                  
                    <!-- Thumbnails Swiper -->
                    <div class="swiper thumbnail-slider">
                      <div class="swiper-wrapper">
                        @php
    $pictures = is_string($productData->pictures) ? json_decode($productData->pictures, true) : $productData->pictures;
@endphp
                       @if(is_array($pictures) && count($pictures) > 0)
    @foreach($pictures as $tour_banner)
    <div class="swiper-slide product-thumbnail-slider">
        @if(isset($tour_banner))
    
        <img src="{{ asset('uploads/' . $tour_banner) }}" data-full="{{ asset('uploads/' . $tour_banner) }}">
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
               <h1>Turmeric (Haldi) Powder</h1>
               {{-- <small>SKU: TP 100g 3(GS)</small> --}}
               <h2><span>&#8377;165</span> &#8377;140 <small>15% OFF</small></h2>
               <small>(Inclusive of all taxes)</small>
               <p>Turmeric powder is a versatile spice that adds both flavor and visual appeal to dishes. Its vibrant yellow color can make dishes more visually appealing, while its flavor enhances the overall taste. Turmeric powder is a key ingredient in curry powders, spice blends, and marinades.</p>
               <p>Turmeric powder is commonly used in a variety of dishes, including curries, stews, rice dishes, lentils, and vegetable preparations. It pairs well with ingredients like ginger, garlic, cumin, coriander, and chili peppers, creating a harmonious flavor profile.
                Apart from its culinary uses, turmeric powder is also appreciated for its potential health benefits due to the presence of curcumin, an active compound in turmeric.</p>
                <p>Country of Origin: India</p>
                <div>Size:</div>
                <select name="" id="" class="contact-input-box w-50">
                    <option value="">100g(pack of 3)</option>
                    <option value="">200g(pack of 2)</option>
                    <option value="">500g</option>
                    <option value="">1Kg</option>
                </select>
                <div class="mt-3">Description:</div>
                <table class="table table-bordered mt-3">
                    <tr>
                        <th>Energy</th>
                        <td>358.4kcal</td>
                    </tr>
                    <tr>
                        <th>Protein</th>
                        <td>4.16g</td>
                    </tr>
                    <tr>
                        <th>Carbohydrate</th>
                        <td>77.34g</td>
                    </tr>
                    <tr>
                        <th>Sugar</th>
                        <td><1g</td>
                    </tr>
                    <tr>
                        <th>Fat</th>
                        <td>3.6g</td>
                    </tr>
                    <tr>
                        <th>Ingredients</th>
                        <td>Turmeric Whole</td>
                    </tr>
                </table>
                <div class="d-flex align-items-center mt-4">
                     <div>Share :</div>
                    <a href="#">
                      <div class="social-icons"><i class="fa-brands fa-facebook-f"></i></div>
                    </a>
        
                    <a href="#">
                      <div class="social-icons"><i class="fa-brands fa-twitter"></i></div>
                    </a>
        
                    <a href="#">
                      <div class="social-icons"><i class="fa-brands fa-instagram"></i></div>
                    </a>
        
                    <a href="#">
                      <div class="social-icons"><i class="fa-brands fa-linkedin-in"></i></div>
                    </a>
        
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
    
                        <div class="swiper-slide">
                           <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                        </a> 
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
    
                        <div class="swiper-slide">
                            <a href="product-details.html" class="text-decoration-none">
                            <div class="main-prodcut-show-view">
                                <div><img
                                        src="https://lh4.googleusercontent.com/proxy/Qpwzw8qMGOEWubAODcRuMShSUUCWjy5gLwukFscE7SCuWsXQusBAXGmm8jWGMXOjFix8DyTC76m3mutWjb8"
                                        alt="product-image" class="img-fluid"></div>
                                <h6>Lorem ipsum dolor sit amet.</h6>
                                <p><span>&#8377;68.00</span> &#8377;57.00</p>
                            </div>
                            </a>
                        </div>
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