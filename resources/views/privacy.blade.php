@extends('layouts.dashboard.main')
@section('main-containers')
<section>
    <div><img src="{{ url('uploads/' . $privacy->image) }}" alt="banner" class="img-fluid"></div>

<div class="container mt-5">

    <div class="terms-content-container">
     <h1>Privacy Policy</h1>
    <p>{!!$privacy->description!!}</p>

  
    </div>
</div>
</section>
@endsection