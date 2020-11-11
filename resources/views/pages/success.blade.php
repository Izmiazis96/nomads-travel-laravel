@extends('layouts.success')

@section('title')
Checkout Success
@endsection

@section('content')
	 <main>
        <div class="section-success d-flex align-items-center">
            
            <div class="col text-center">
                <img src="{{ url('frontend/images/ic_mail.png') }}" alt="">
                <h1>Ya! Success</h1>
            <p>
               We've sent you email for trip Instruction
                <br/>
                Please read it as well
            </p>
            <a href="{{ url('/') }}" class="btn btn-home-page mt-5 px-5">
                Home Page
            </a>    
            </div>
            
        </div>
    </main>
@endsection