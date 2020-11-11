@extends('layouts.app')

@section('title')
Testimonial
@endsection

@section('content')
	 <main>
       <section class="section-testimonials-heading" id="testimonialHeading">
        <div class="container">
          <div class="row">
            <div class="col text-center">
              <h2>They Are Loving Us</h2>
              <p>
                Moments were giving them
                <br/>
                the best experience
              </p>
            </div>
          </div>
        </div>
      </section>

      <section class="section section-testimonial-content" id="testimonialContent">
        <div class="container">
          <div class="section-popular-travel row justify-content-center">
            <div class="col-sm-6 col-md-6 col-lg-4">
              <div class="card card-testimonial text-center">
                <div class="testimonial-content">
                  <img src="{{ url('frontend/images/user-testimonial-1.jpg') }}" alt="user" class="mb-4 rounded-circle"
                  />
                  <h3 class="mb-4">Izmi Azis</h3>
                  <p class="testimonial">
                    " It was glorious and I could
                      not stop to say wohoo for
                      every single moment
                      Dankeeee "
                  </p>
                </div>
                <hr>
                <p class="trip-to mt-2">
                  Trip to Ubud
                </p>
              </div>
            </div>

            <div class="col-sm-6 col-md-6 col-lg-4">
              <div class="card card-testimonial text-center">
                <div class="testimonial-content">
                  <img src="{{ url('frontend/images/user-testimonial-2.jpg') }}" alt="user" class="mb-4 rounded-circle"
                  />
                  <h3 class="mb-4">Angga Rizky</h3>
                  <p class="testimonial">
                    " The trip was amazing and i saw something beautifulin that island that makes me want to learn more "
                  </p>
                </div>
                <hr>
                <p class="trip-to mt-2">
                  Trip to Nusa Penida
                </p>
              </div>
            </div>

            <div class="col-sm-6 col-md-6 col-lg-4">
              <div class="card card-testimonial text-center">
                <div class="testimonial-content">
                  <img src="{{ url('frontend/images/user-testimonial-4.jpg') }}" alt="user" class="mb-4 rounded-circle"
                  />
                  <h3 class="mb-4">Hanovan</h3>
                  <p class="testimonial">
                    " I loved it when the waves was shaking hander - i was scared too "
                  </p>
                </div>
                <hr>
                <p class="trip-to mt-2">
                  Trip to Karimun Jawa
                </p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 text-center">
              <a href="" class="btn btn-need-help px-4 mt-4 mx-1">
                I Need Help
              </a>
              <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">
                Get Started
              </a>
            </div>
          </div>
        </div>
      </section>
    </main>
@endsection