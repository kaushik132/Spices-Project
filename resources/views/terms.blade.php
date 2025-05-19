@extends('layouts.dashboard.main')
@section('main-containers')
<section>
    <div><img src="{{ url('uploads/' . $terms->image) }}" alt="banner" class="img-fluid"></div>

<div class="container mt-5">

    <div class="terms-content-container">
     <h1>Terms of Service</h1>
    <p>{!!$terms->description!!}</p>

    
    </div>
</div>
</section>
@endsection