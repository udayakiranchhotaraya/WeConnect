<%@ include file="head.jsp" %>
<title>Search Jobs - WeConnect</title>
<style>
/* .banner {
    background: #244034;
    color: white;
} */

.btn-primary-custom {
    background: white;
    border-color: #244034;
    border-width: 2px;
    color: #244034;
    font-weight: bold;
}

/* .form-group button {
    width: 80%;
    margin: auto;
    padding: 7px;
    font-size: 16px;
    background-color: white;
    border: 1px solid black;
    border-radius: 3px;
    transition: background-color 500ms;
/* } */

.btn-primary-custom:hover {
    background: #244034;
    /* border: 1px solid #00D363; */
    color: white;
    transition: background-color 500ms;
}
</style>
</head>
<body>
    <div class="row banner" id="banner-one">
        <div class="col-xl-9 col-lg-8 m-auto">
            <div class="job-search-one position-relative">
                <form id="job-search-form">
                    <div class="row">
                        <div class="col-md-5">
                            <!-- <div class="input-box">
                                <div class="label">What are you looking for?</div>
                                <select class="nice-select lg" style="">
                                    <option value="1">UI Designer</option>
                                    <option value="2">Content creator</option>
                                    <option value="3">Web Developer</option>
                                    <option value="4">SEO Guru</option>
                                    <option value="5">Digital marketer</option>
                                </select><div class="nice-select lg" tabindex="0"><span class="current">UI Designer</span><ul class="list"><li data-value="1" class="option selected focus">UI Designer</li><li data-value="2" class="option">Content creator</li><li data-value="3" class="option">Web Developer</li><li data-value="4" class="option">SEO Guru</li><li data-value="5" class="option">Digital marketer</li></ul></div>
                            </div> -->
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">@</span>
                                <input type="text" class="form-control" id="job-title" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <!-- <div class="form-floating">
                                <input class="form-control" id="exampleDataList" placeholder="Type to search...">
                                <datalist class="lg" id="floatingSelectGrid">
                                  <option selected>Open this select menu</option>
                                  <option value="1">One</option>
                                  <option value="2">Two</option>
                                  <option value="3">Three</option>
                                </datalist> 
                                <label for="floatingSelectGrid">Works with selects</label> -->
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">@</span>
                                <input type="text" class="form-control" id="job-location" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            <!-- <div class="input-box border-left">
                                <div class="label">Category</div>
                                <select class="nice-select lg" style="">
                                    <option value="1">Web Design</option>
                                    <option value="2">Design &amp; Creative</option>
                                    <option value="3">It &amp; Development</option>
                                    <option value="4">Web &amp; Mobile Dev</option>
                                    <option value="5">Writing</option>
                                    <option value="6">Sales &amp; Marketing</option>
                                    <option value="7">Music &amp; Audio</option>
                                </select><div class="nice-select lg" tabindex="0"><span class="current">Web Design</span><ul class="list"><li data-value="1" class="option selected focus">Web Design</li><li data-value="2" class="option">Design &amp; Creative</li><li data-value="3" class="option">It &amp; Development</li><li data-value="4" class="option">Web &amp; Mobile Dev</li><li data-value="5" class="option">Writing</li><li data-value="6" class="option">Sales &amp; Marketing</li><li data-value="7" class="option">Music &amp; Audio</li></ul></div>
                            </div> -->
                        </div>
                        <div class="col-md-3">
                            <button class="fw-500 text-uppercase h-100 tran3s search-btn" id="search-jobs">Search</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /.job-search-one -->
        </div>
        <br><br><br>
    </div>
    <hr>
    <div class="container-fluid text-center mb-3">
        <div class="row">
            <div class="col-md-3">
                <button type="button" class="btn btn-primary-custom" data-bs-toggle="modal" data-bs-target="#filterModal">
                    Filter
                </button>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row mx-auto">
            <div class="col-lg-4 mx-auto py-1 px-3" id="job-list"
                style="position: sticky; overflow-y: hidden;">
                <!-- <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <h6 class="card-subtitle mb-2 text-body-secondary">Card subtitle</h6>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="card-link">Card link</a>
                      <a href="#" class="card-link">Another link</a>
                    </div>
                </div> -->
            </div>
            <div class="col-lg-8 mx-auto py-1 px-3" id="job-view">
                <!-- <div class="card">
                    <div class="card-body">
                      <h2 class="text-garamond">Card title</h2>
                      <h5 class="card-subtitle mb-2 text-body-secondary text-garamond">by <strong>Adobe</strong></h5>
                      <h6 class="card-subtitle mb-2 text-body-secondary">Card subtitle</h6>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="card-link">Card link</a>
                      <a href="#" class="card-link">Another link</a>
                    </div>
                </div> -->
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="filterModal" tabindex="-1" aria-labelledby="filterModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="filterModalLabel">Modal title</h1>
              <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
            </div>
            <div class="modal-body">
                <div class="row mb-3">
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="floatingKeyword" placeholder="Search by Keywords">
                            <label for="floatingKeyword">Keyword or Title</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <select class="form-select" id="floatingCategory" aria-label="Floating label select example">
                              <option selected>Open this select menu</option>
                              <option value="1">One</option>
                              <option value="2">Two</option>
                              <option value="3">Three</option>
                            </select>
                            <label for="floatingCategory">Category</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <select class="form-select" id="floatingCategory" aria-label="Floating label select example">
                              <option selected>Open this select menu</option>
                              <option value="1">One</option>
                              <option value="2">Two</option>
                              <option value="3">Three</option>
                            </select>
                            <label for="floatingCategory">Works with selects</label>
                        </div>
                    </div>
                    <div class="col mb-3">
                        <div class="form-floating">
                            <select class="form-select" id="floatingFluency" aria-label="Floating label select example">
                              <option selected>Open this select menu</option>
                              <option value="1">Basic</option>
                              <option value="2">Conversational</option>
                              <option value="3">Fluent</option>
                              <option value="3">Native/Bilingual</option>
                            </select>
                            <label for="floatingFluency">English Fluency</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="">Job Type: </label>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Full-time
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Hourly-contract
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Remote
                            </label>
                        </div>
                    </div>
                    <div class="col">
                        <label for="">Experience: </label>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Beginner (0-3 yrs)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Intermediate (4-6 yrs)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Expert (7+ years)
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                            <label class="form-check-label" for="flexCheckChecked">
                                Internship
                            </label>
                        </div>
                    </div>
                    <div class="col"></div>
                </div>
            </div>
            <!-- <div class="modal-footer"> -->
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <!-- <button class="btn btn-primary me-md-2" type="button">Button</button> -->
                <button type="button" class="btn btn-secondary mb-2" data-bs-dismiss="modal">Close</button>
                <!-- <button class="btn btn-primary" type="button">Button</button> -->
                <button type="button" class="btn btn-primary me-md-2 mb-2">Save changes</button>
            </div>
            <!-- </div> -->
          </div>
        </div>
    </div>

    <!-- JS -->
    <script src="./job-search.js"></script>
</body>