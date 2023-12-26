<%@ include file="head.jsp" %>
<title>WeConnect</title>
<link ref="stylesheet" href="./style.css">
<style>

/* div.hero {
    background-image: url('./static/images/abstract-polka-dot-background-with-small-dots-free-vector-107897485.jpg') !important;
    height: 20rem; 
    background-repeat: repeat;
    background-size: 25%;
} */

video#hero-video:hover {
    box-shadow: 25px 25px;
    transition: box-shadow 100ms;
}

.form-group {
    width: inherit;
    text-align: center;
}

.form-group label {
    display: block;
    margin: 6px;
    padding-left: 2.25em;
    text-align: justify;
    font-size: 14px;
}

.form-group input {
    width: 80%;
    padding: 6px;
    font-size: 16px;
}

.form-group button {
    width: 80%;
    margin: auto;
    padding: 7px;
    font-size: 16px;
    background-color: white;
    border: 1px solid black;
    border-radius: 3px;
    transition: background-color 500ms;
}

.form-group button:hover {
    background-color: #00D363;
    border: 1px solid #00D363;
    color: white;
    transition: background-color 500ms;
}
</style>
</head>
<body>
    <div class="hero container col-xxl-8 px-4 py-5" style="width:100%">
        <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
          <div class="col-10 col-sm-8 col-lg-6">
            <!-- <img id="hero-image" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd3tl80hy6t5toy.cloudfront.net%2Fwp-content%2Fuploads%2Fsites%2F3%2F2017%2F09%2F07134411%2F2017-09-14-Interviews-ThinkstockPhotos-621579258.jpg&f=1&nofb=1&ipt=a9defb841534a328c6b6e543fef0f66ca3c4b416334454ba44c69d2140dc1b4a&ipo=images" class="d-block mx-lg-auto img-fluid" alt="Job Interview" width="700" height="500" loading="lazy" style="box-shadow: 12px 12px #333;"> -->
            <video id="hero-video" autoplay loop muted height="400" style="box-shadow: 12px 12px">
                <source src="./static/videos/pexels-tima-miroshnichenko-5438890 (1080p).mp4" type="video/mp4">
            </video>
          </div>
          <div class="col-lg-6 mx-auto">
            <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3 dotted-text">WeConnect your talent to opportunities</h1>
            <div class="card" style="width: 23rem; margin: auto">
                <div class="card-body">
                  <span>
                    <p style="text-align: center; margin-bottom: 0%;">Create an account or sign-in.</p>
                    <p style="font-size: small; text-align: center; margin-top: 1%;">By continuing, you agree to our <span style="color: #00D363; text-decoration: underline;">Terms of Use</span> and <span style="color: #00D363; text-decoration: underline;">Privacy Policy</span> .</p>
                    <div class="form-group">
                        <button id="signin-with-google"><img>&nbsp;Continue with Gmail</button>
                    </div>
                    <div class="orSeparator"><div class="borderTop"></div><div style="padding: 0px 8px 3px 8px;">or</div><div class="borderTop"></div></div>
                    <div class="form-group">
                        <label for="email">Enter Email</label>
                        <input type="text" id="email" name="email" required>
                        <p id="email-status" style="font-size: small; text-align: justify; padding-left: 3.5em; padding-top: 0px; padding-bottom: 0px;"></p>
                    </div>
                    <div class="form-group">
                        <button type="button" id="emailFilled">Continue with Email</button>
                    </div>
                  </span>
                </div>
            </div>
            <!-- <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">Responsive left-aligned hero with image</h1>
            <p class="lead">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
            <div class="d-grid gap-2 d-md-flex justify-content-md-start">
              <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Primary</button>
              <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button>
            </div> -->
          </div>
        </div>
      </div>
</body>