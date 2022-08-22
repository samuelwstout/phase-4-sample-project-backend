Job board for freelance musicians
Upwork inspired

App walkthrough/routes:
Landing page (/) <br>
![landing page](./images/landingpage.png) <br>
Sign up (/signup) <br>
![signup page](./images/signup.png) <br>
If they click 'join as contractor'<br>
![join as contractor](./images/join_as_contractor.png)<br>
If they click 'join as musician'<br>
![join as musician](./images/join_as_musician.png)<br>
If they 'sign in' from /<br>
![sign in](./images/signin.png)<br>


Relationships:

Musician will have many jobs
Musician will have many contractors through jobs

Jobs belong to Musician
Jobs belong to Contractor

Contractor will have many Jobs
Contractor will have many Musicians through Jobs

Models/attributes: 
Musician: name, password_digest, id, email, media, image_url, bio, instrument
Contractor: name, password_digest, id, email, image_url, bio
Job: musician_id, contractor_id, name, location, description, date




