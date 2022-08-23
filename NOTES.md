Job board for freelance musicians
Upwork inspired

App walkthrough/routes: <br>

Account create/sign in <br>

- Landing page (/) <br>
![landing page](./images_for_plan/landingpage.png)
- Sign up (/signup)  <br>
![signup page](./images_for_plan/signup.png)
- If they click 'join as contractor' (/signup_as_contractor) <br>
![join as contractor](./images_for_plan/join_as_contractor.png)
- If they click 'join as musician' (/signup_as_musician) <br>
![join as musician](./images_for_plan/join_as_musician.png) 
- If they 'sign in' from / (/signin) <br>
![sign in](./images_for_plan/signin.png) <br>

Contractor experience: <br>

- When contractor signs in or up. And, when they click 'create job' in nav later. (/create_job)<br>
![create job](./images_for_plan/create_job.png)
- When contractor clicks 'my jobs' (/my_jobs) <br>
![my jobs](./images_for_plan/my_jobs.png)
- When contractor clicks on a job in 'my jobs' (/my_jobs/job/:id) <br>
![individual job](./images_for_plan/contractor_job.png)
- When contractor clicks on profile icon (/:contractor_first_and_last_name/profile) <br>
![profile page contractor](./images_for_plan/contractor_profile.png)

Musician experience: <br>

- When musician signs in or up, and when they click 'find work' (/find_work)<br>
![find work](./images_for_plan/find_work.png)
- When musician clicks 'apply' on a job posting (/find_work/job/:id) <br>
![job app](./images_for_plan/job_app.png)
- When musician clicks on 'my applications (or my jobs)' (/my_applications) <br>
![my apps](./images_for_plan/my_apps.png) <br>
Include all job info in those boxes. <br>
- When musician clicks on profile icon (/:musician_first_and_last_name/profile) <br>
![musician profile](./images_for_plan/musician_profile.png)



Models: <br>
- Musician has many Contractors through Jobs
- Musician has many Jobs
- Musician has many Applications
- Musician has many Jobs through Applications <br>

- Jobs belongs to Musician
- Jobs belongs to Contractor
- Job has many Applications
- Job has many Musicians through Applications <br>

- Application belongs to Musician
- Application belongs to Job <br>

- Contractor has many Musicians through Jobs
- Contractor has many Jobs


Attributes:

Musician: <br>
- first_name
- last_name
- email
- password
- instrument
- location
- bio
- media <br>

Contractor: <br>
- first_name
- last_name
- email
- password <br>

Job: <br>
- headline
- description
- date
- location
- budget :integer
- applications_from_musicians :integer
- musician_id
- contractor_id


Application: <br>
- resume
- cover_letter
- accepted :boolean
- musician_id
- job_id

