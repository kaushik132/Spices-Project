    <!-- ========================================= Footer =================================================== -->
       @php
                    use App\Models\ProductCategory;
                    use App\Models\CompanyInfo;
                   $productCat = ProductCategory::latest()->take(5)->get();
                    $companyInfo = CompanyInfo::first();
                @endphp 
    <footer class="footer-bg">
     <div class="container">
        <div class="row">
            <div class="col-md-3 mt-3 text-center">
               <div class="footer-logo"><img src="{{url('assets/images/logo.png')}}" alt="logo" class="img-fluid"></div>
               <div class="d-flex align-items-center justify-content-center mt-3">

                <a href="{{ $companyInfo->facbook_link }}" target="_blank">
                  <div class="social-icons"><i class="fa-brands fa-facebook-f"></i></div>
                </a>
    
                <a href="{{ url('https://api.whatsapp.com/send?phone='.$companyInfo->whatsapp_link) }}" target="_blank">
                  <div class="social-icons"><i class="fa-brands fa-whatsapp"></i></div>
                </a>
    
                <a href="{{ $companyInfo->instagram_link }}" target="_blank">
                  <div class="social-icons"><i class="fa-brands fa-instagram"></i></div>
                </a>
    
                <a href="{{ $companyInfo->youtube_link }}" target="_blank">
                  <div class="social-icons"><i class="fa-brands fa-youtube"></i></div>
                </a>
    
              </div>
            </div>
            <div class="col-md-3 mt-3">
              <h6 class="title">Information</h6>
              <ul class="footer-list">
                <li class="footer-list-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="footer-list-item"><a href="{{url('contact-us')}}">Contact Us</a></li>

               <li class="footer-list-item"><a href="{{url('privacy-policy')}}">Privacy Policy</a></li>
               <li class="footer-list-item"><a href="{{url('terms')}}">Terms Of Use</a></li>
               <li class="footer-list-item"><a href="{{url('refund-policy')}}">Refund Policy</a></li>
              </ul>
            </div>
            <div class="col-md-3 mt-3">
                <h6 class="title">Categories</h6>
             
                <ul class="footer-list">
                    @foreach ($productCat as $productCats)
                        <li class="footer-list-item"><a href="{{url('products/'.$productCats->slug)}}">{{$productCats->name}}</a></li>
                    @endforeach
               
           
                
                </ul>
            </div>
            <div class="col-md-3 mt-3">
                <h6 class="title">Customer Service</h6>
                <ul class="footer-list">
                 <li class="footer-list-item"><a href="{{url('contact-us')}}">Contact</a></li>
              
                </ul>
            </div>
        </div>
     </div>
     <hr>
     <div class="text-center"><small>Copyright © 2025 Shyama Foods. All Rights Reserved.</small></div>
     </footer>
    <script src="{{url('assets/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{url('assets/js/swiper-bundle.min.js')}}"></script>
    <script src="{{url('assets/js/script.js')}}"></script>
</body>

</html>