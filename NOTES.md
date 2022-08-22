Job board for freelance musicians
Upwork inspired

App walkthrough/routes:
Landing page (/)
![landing page](./images/landingpage.png)
Sign up (/signup)
![signup page](./images/signup.png)
If they click 'join as contractor'
![join as contractor](./images/join_as_contractor.png)
If they click 'join as musician'
![join as musician](./images/join_as_musician.png)
If they 'sign in' from /
![sign in](./images/signin.png)


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




