@extends('layouts.dashboard.main')
@section('main-containers')

<section class="mt-3">
        <div class="container-fluid">
            <div class="p-2"><small>Home / Contact us</small></div>
            <div class="row">
                <div class="col-md-4 mt-4">
                    <h5 class="cont-title-show">Contact Us</h5>
                  <div class="d-flex align-items-center contact-details-show">
                    <i class="fa-solid fa-location-dot fs-1"></i>
                    <div class="map-details">
                        <h6>Address</h6>
                        <p>20, Flat No.5 Ramgarh Mode, Jaipur - 302020</p>
                    </div>
                  </div>
                  <hr>
                  <div class="d-flex align-items-center contact-details-show">
                    <i class="fa-solid fa-phone-volume fs-1"></i>
                    <div class="map-details">
                        <h6>Phone</h6>
                        <p>+91 - 9876543210</p>
                    </div>
                  </div>
                  <hr>
                  <div class="d-flex align-items-center contact-details-show">
                    <i class="fa-solid fa-envelope-open-text fs-1"></i>
                    <div class="map-details">
                        <h6>Email ID</h6>
                        <p>example@gmail.com</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 mt-4">
                    <h5 class="cont-title-show">Get in touch with us</h5>
                    <form action="">
                        <input type="text" class="contact-input-box" placeholder="Full Name">
                        <input type="text" class="contact-input-box" placeholder="Company Name (Optional)">
                        <input type="text" class="contact-input-box" placeholder="Street Address">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" class="contact-input-box" placeholder="Postal Address">
                            </div>
                            <div class="col-md-6">
                                <select name="" id="" class="contact-input-box">
                                    <option value="">City</option>
                                    <option value="">Jaipur</option>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <select name="" id="" class="contact-input-box">
                                    <option value="">Country</option>
                                    <option value="">India</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <input type="email" class="contact-input-box" placeholder="Email Address">
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="contact-input-box" placeholder="Mobile Number">
                            </div>
                        </div>
                        <textarea name="" id="" cols="30" rows="3" class="contact-input-box" placeholder="Message"></textarea>
                 
                        <div><button class="contact-submit-btn-show">Submit</button></div>
                    </form>
                </div>
                <div class="col-md-4 mt-4">
                    <h5 class="cont-title-show">follow us</h5>
                    <a href="#" class="text-decoration-none">
                        <div class="d-flex align-items-center contact-social-show">
                        <i class="fa-brands fa-facebook-f"></i>
                        <div class="contact-social-text">follow us on Facebook</div>
                      </div>
                    </a>
                    <hr>
                    <a href="#" class="text-decoration-none"><div class="d-flex align-items-center contact-social-show">
                        <i class="fa-brands fa-x-twitter"></i>
                        <div class="contact-social-text">Join us on twitter</div>
                      </div>
                    </a>
                    <hr>
                    <a href="#" class="text-decoration-none"><div class="d-flex align-items-center contact-social-show">
                        <i class="fa-brands fa-square-instagram"></i>
                        <div class="contact-social-text">follow us on instagram</div>
                      </div>
                    </a>
                    <hr>
                    <a href="#" class="text-decoration-none"><div class="d-flex align-items-center contact-social-show">
                        <i class="fa-brands fa-youtube"></i>
                        <div class="contact-social-text">subscribe us on youtube</div>
                      </div>
                    </a>
                </div>
            </div>
        </div>
     </section>

     <!-- =================================== Map ================================================== -->
      <div class="mt-5">
        <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d56915.43624521951!2d75.77244206835104!3d26.928405169007863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d26.9435479!2d75.83830329999999!4m5!1s0x396c4adf4c57e281%3A0xce1c63a0cf22e09!2sjaipur!3m2!1d26.9124336!2d75.7872709!5e0!3m2!1sen!2sin!4v1744625622547!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>



@endsection