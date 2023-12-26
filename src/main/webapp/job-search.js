/**
 * 
 */

const searchWhat = localStorage.getItem('searchWhat');
const searchWhere = localStorage.getItem('searchWhere');

if (searchWhat && searchWhere) {
    document.getElementById('job-title').value = searchWhat;
    document.getElementById('job-location').value = searchWhere;
    const jobList = document.getElementById('job-list');
    jobList.innerHTML = '';
    searchJobs(searchWhat, searchWhere);
}

const jobSearchBtn = document.getElementById('search-jobs');
jobSearchBtn.addEventListener('click', (event) => {
    event.preventDefault();
    const searchWhat = document.getElementById('job-title');
    const searchWhere = document.getElementById('job-location');

    // console.log(searchWhat.value, searchWhere.value);

    const jobList = document.getElementById('job-list');
    jobList.innerHTML = '';
    searchJobs(searchWhat, searchWhere);
})

function searchJobs(searchWhat, searchWhere) {
    fetch("http://localhost:3000/jobs", {
        method: 'GET'
    })
    .then(response => response.json())
    .then(data => {
        // console.log(searchWhat.value, searchWhere.value);
        const jobs = data.filter((element) => element.jobTitle.includes(searchWhat.value) && element.jobLocation.includes(searchWhere.value));
        // console.log(jobs);
        if(jobs.length === 0) {
            const jobList = document.getElementById('job-list');
            const noSearchText = document.createElement('p');
            noSearchText.innerHTML = "No search found.";
            const italics = document.createElement('i');
            italics.appendChild(noSearchText);
            jobList.appendChild(italics);
        } else {
            jobs.forEach(element => {
                const jobList = document.getElementById('job-list');
                const jobCard  = document.createElement('div');
                jobCard.classList.add("card");
                const jobCardBody = document.createElement('div');
                jobCardBody.classList.add("card-body");
                const jobTitle = document.createElement('h3');
                jobTitle.classList.add("card-title", "text-garamond");
                const jobLocation = document.createElement('p');
                const employer = document.createElement('p');
                employer.classList.add("card-subtitle", "mb-2", "text-body-secondary", "fs-6");
                const jobDescription = document.createElement('p');
                
                // const job = document.createElement('div');
                // job.className = 'job';
                // const jobTitle = document.createElement('h2');
                // const jobLocation = document.createElement('p');
                // const jobDescription = document.createElement('p');
                // const employer = document.createElement('p');
                
                // const editBtn = document.createElement('button');
                // const deleteBtn = document.createElement('button');
                const br = document.createElement('br');
        
                jobCard.addEventListener('click', () => {
                    const jobViewLarge = document.getElementById('job-view');
                    jobViewLarge.innerHTML = '';

                    const jobViewCard = document.createElement('div');
                    jobViewCard.classList.add("card");
                    const jobViewCardBody = document.createElement('div');
                    jobViewCardBody.classList.add("card-body");
                    const jobTitle = document.createElement('h1');
                    jobTitle.classList.add("card-title", "text-garamond");
                    const employer = document.createElement('a');
                    employer.classList.add("card-subtitle", "mb-2", "text-body-secondary", "fs-6");
                    const jobLocation = document.createElement('p');
                    const jobDescription = document.createElement('p');
                    // jobDescription.innerHTML = '<h6><strong>Job Description: </strong></h6><br>';
                    const jobResponsibilities = document.createElement('p');
                    // jobResponsibilities.innerHTML = '<h6><strong>Job Responsibilities: </strong><h6><br>';
                    const requiredSkills = document.createElement('p');
                    // requiredSkills.innerHTML = '<h6><strong>Required Skills: </strong><h6><br>';


                    // const job = document.createElement('div');
                    // const jobTitle = document.createElement('h2');
                    // const jobLocation = document.createElement('p');
                    // const jobDescription = document.createElement('p');
                    // const employer = document.createElement('a');
                    // const applyBtn = document.createElement('button');
                    // // const deleteBtn = document.createElement('button');
                    // const br = document.createElement('br');

                    // const jobTagsDiv = document.createElement('div');
                    // const jobTags = element.jobTags;
                    // jobTagsDiv.style.border = "1px dashed black";
                    // jobTagsDiv.append(jobTags);
                    // console.log(jobTags);
        
                    jobTitle.innerText = element.jobTitle;
                    const employerID = element.employerID;
                    // console.log(employerID);
                    
                    // employer.href = `http://localhost:3000/employers/${employerID}`;
                    fetch(`http://localhost:3000/employers/${employerID}`, {
                        method: 'GET'
                    })
                    .then(response => response.json())
                    .then(data => {
                        const companyName = data.companyName;
                        employer.innerHTML = companyName;
                        employer.href = `http://localhost:3000/employers/${employerID}`;
                    })

                    // employer.innerText = employer;

                    jobLocation.innerText = element.jobLocation;
                    jobDescription.innerText = element.jobDescription;
                    jobResponsibilities.innerText = element.jobResponsibilities;
                    requiredSkills.innerText = element.requiredSkills;
                    
                    jobLocation.style.fontWeight = "600";
        
                    // job.style.border = "1px solid black";
                    // job.style.margin = "10%"
                    // job.style.padding = "2%";
                    // job.style.borderRadius = "5px";

                    const currentUserID = parseFloat(localStorage.getItem('user'));
                    newApplicantIds = element.applicantIds.concat(currentUserID);
                    console.log(newApplicantIds);

                    const jobID = element.id;
                    // applyBtn.innerHTML = "Apply";
                    // applyBtn.addEventListener('click', (event) => {
                    //     event.preventDefault();
                    //     // console.log(jobID);

                    //     console.log(newApplicantIds);
                    //     fetch(`http://localhost:3000/jobs/${jobID}`, {
                    //         method: 'PATCH',
                    //         headers: {
                    //             'Content-Type': 'application/json'
                    //         },
                    //         body: JSON.stringify({
                    //             applicantIds: newApplicantIds
                    //         })
                    //     })
                    //     .then(response => response.json())
                    //     .then(data => {
                    //         alert('you have successfully applied!');
                    //     });
                    // })
        
                    // jobViewCardBody.append(jobTitle, employer, jobLocation, '<h6><strong>Job Description: </strong></h6><br>', jobDescription, '<h6><strong>Job Responsibilities: </strong><h6><br>', jobResponsibilities, '<h6><strong>Required Skills: </strong><h6><br>', requiredSkills);
                    jobViewCardBody.innerHTML = `
                                                    ${jobTitle.outerHTML}
                                                    ${employer.outerHTML}
                                                    ${jobLocation.outerHTML}
                                                    <h5><strong>Job Description: </strong></h5>
                                                    ${jobDescription.outerHTML}
                                                    <h5><strong>Job Responsibilities: </strong></h5>
                                                    ${jobResponsibilities.outerHTML}
                                                    <h5><strong>Required Skills: </strong></h5>
                                                    ${requiredSkills.outerHTML}
                                                `;

                    jobViewCard.appendChild(jobViewCardBody);
                    jobViewLarge.appendChild(jobViewCard);
                    // jobViewLarge.appendChild(br);
                });
        
                jobTitle.innerText = element.jobTitle;
                employer.innerHTML = element.employer;
                jobLocation.innerText = element.jobLocation;
                jobDescription.innerText = element.jobDescription.substr(0, 100) + "...";
                
                jobLocation.style.fontWeight = "600";
        
                // job.style.border = "1px solid black";
                // job.style.padding = "2%";
                // job.style.borderRadius = "5px";
        
                jobCardBody.append(jobTitle, employer, jobLocation, jobDescription);
                jobCard.appendChild(jobCardBody);
                jobList.appendChild(jobCard);
                jobList.appendChild(br);
            })
        }
    })
}

const user = localStorage.getItem('user');
if (user) {
    const welcomeUser = document.getElementById('user-welcome');
    welcomeUser.style.display = 'block';
    const signinBtnNav = document.getElementById('nav-signin-button');
    signinBtnNav.style.display = 'none';
    document.getElementById('user-name').innerHTML = user;
}

function signout() {
    localStorage.clear();
    window.location.href = "../index.html";
}