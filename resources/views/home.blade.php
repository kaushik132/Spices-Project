@extends('layouts.dashboard.main')
@section('main-containers')

    <!-- ============================== Banner ======================================= -->
    <section>
        <div class="container-fluid">
            <div class="banner-slide">
                <div class="row">
                    <div class="col-md-7">
                        <div class="hero-section-details">
                            <h1>Lorem ipsum dolor sit amet consectetur.</h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <a href="#"><button class="explore-more-btn">
                                    Explore more <i class="bi bi-arrow-right"></i></button></a>
                        </div>
                    </div>
                    <div class="col-md-5 mt-3">
                        <div>
                            <img src="https://img.freepik.com/free-vector/spices-herbs-tag-decorated-with-leaves-dill-basil-bay-powder-curry-paprika-realistic-illustration_1284-61200.jpg?t=st=1744448080~exp=1744451680~hmac=9c14dc497906bfdec9a0922abd1a0c64b13d0cbc820ee3cb12d5019467a5a689&w=740"
                                alt="banner-image" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-slide">
                <div class="row">
                    <div class="col-md-7">
                        <div class="hero-section-details">
                            <h1>Lorem ipsum dolor sit amet consectetur.</h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <a href="#"><button class="explore-more-btn">
                                    Explore more <i class="bi bi-arrow-right"></i></button></a>
                        </div>
                    </div>
                    <div class="col-md-5 mt-3">
                        <div>
                            <img src="https://img.freepik.com/free-vector/illustration-set-with-different-types-herbs-spices-vector-illustration_1284-12271.jpg?t=st=1744449008~exp=1744452608~hmac=d5716a70e3bda645c961d49e2c92c3ca56aecce3d9934ba09d10d2d2c012569d&w=740"
                                alt="banner-image" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-slide">
                <div class="row">
                    <div class="col-md-7">
                        <div class="hero-section-details">
                            <h1>Lorem ipsum dolor sit amet consectetur.</h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Officiis amet omnis sit ab quae earum quis deserunt sapiente
                                hic, aliquid blanditiis sed natus. Expedita exercitationem
                                ratione accusantium quasi nostrum laborum!
                            </p>
                            <a href="#"><button class="explore-more-btn">
                                    Explore more <i class="bi bi-arrow-right"></i></button></a>
                        </div>
                    </div>
                    <div class="col-md-5 mt-3">
                        <div>
                            <img src="https://img.freepik.com/premium-photo/close-up-various-spices-bowls-white-background_1048944-16942779.jpg?w=996"
                                alt="banner-image" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
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
                        <span>Lorem, ipsum dolor.</span>
                        <h2 class="mb-2">About Us</h2>
                    </div>
                  <div class="home-about-us-details">
                    <div class="d-flex mt-3">
                        <i class="bi bi-arrow-right-circle-fill fs-2"></i>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quisquam a culpa nemo numquam temporibus, nulla, et harum dolorum doloribus voluptas odit ut cum dolore repellendus dolor? Sapiente ex iste aut ducimus modi laboriosam reiciendis laborum tenetur quod eaque reprehenderit expedita vero excepturi atque numquam necessitatibus debitis, iusto beatae. Dolores, incidunt?</p>
                    </div>
                      
                    <div class="d-flex mt-3">
                        <i class="bi bi-arrow-right-circle-fill fs-2"></i>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quisquam a culpa nemo numquam temporibus, nulla, et harum dolorum doloribus voluptas odit ut cum dolore repellendus dolor? Sapiente ex iste aut ducimus modi laboriosam reiciendis laborum tenetur quod eaque reprehenderit expedita vero excepturi atque numquam necessitatibus debitis, iusto beatae. Dolores, incidunt?</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 mt-3 text-center">
                    <div class="about-us-main-img-wrapper"  style="overflow-x: hidden;">
                        <img
                          src="./assets/images/about-us-image.png"
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

            <div class="swiper-slide">
                <div>
                    <img src="https://static.vecteezy.com/system/resources/previews/041/928/900/non_2x/spices-horizontal-web-banner-chili-peppers-nutmeg-bay-leaf-black-or-red-peppercorns-cinnamon-other-aroma-ingredients-illustration-for-header-website-cover-templates-in-modern-design-vector.jpg" alt="slider" class="img-fluid">
                 </div>
            </div>

            <div class="swiper-slide">            
     <div>
        <img src="https://catchfoods.com/wp-content/uploads/2022/12/Single-Spices-banner-1.png" alt="slider" class="img-fluid">
     </div>
            </div>

            <div class="swiper-slide">
                <div>
                    <img src="https://cdn2.f-cdn.com/contestentries/80446/10903920/538992c8b99e8_thumb900.jpg" alt="slider" class="img-fluid">
                 </div>
            </div>
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


@endsection