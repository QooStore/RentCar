<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>렌트하고 축제가자!</title>

     <style>    
        .event {
            max-width: 1200px;
            height: 700px;
        }
        .d-block {
            display: block;
            width: 100%;
            height: 100%;
        }

        .favorites {
          max-width: 500px;
          height: 300px;
        }
        
        .favorites_outside {
        	margin: 100px auto;
        }
        
        </style>
        
</head>
<body>
    <div id="carouselExampleControls" class="carousel slide event event_outside" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item active event">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <div id="carouselExampleCaptions" class="carousel slide favorites favorites_outside" data-bs-ride="false">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active favorites">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>First slide label</h5>
              <p>Some representative placeholder content for the first slide.</p>
            </div>
          </div>
          <div class="carousel-item favorites">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Second slide label</h5>
              <p>Some representative placeholder content for the second slide.</p>
            </div>
          </div>
          <div class="carousel-item favorites">
            <img src="https:via.placeholder.com/200x200.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Third slide label</h5>
              <p>Some representative placeholder content for the third slide.</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</body>
</html>