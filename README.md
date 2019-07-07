# README


# Find Homes

**Team Members:**
* Josh Parry https://github.com/parryjos1
* Amanda Chau https://github.com/amandachau3

**Links:**
* Back-end Rails repo: https://github.com/amandachau36/rails-project-2
* Back-end deployed to https://find-homes.herokuapp.com
* Frontend React repo: https://github.com/parryjos1/find-homes-react-frontend
* Website: https://parryjos1.github.io/find-homes-react-frontend/

## Project 2 for GA's WDI

**Goal:**  
* To pull everything together by building a web application from the ground up.
* To demonstrate mastery of topics (front and back-end web development) covered during the last 8 weeks.

**Main Features**
* Find properties for sale by drawing an area on Google Maps, option to specify minimum number of bedrooms/bathrooms and max price.
* Find properties by typing in a suburb (traditional search)
* User authentication with JSON Web Tokens (JWT)   
* Logged-in users can add and delete properties from their search to their wish lists
* The show page for properties is always up-to-date with the Domain API - only a small subset of data about each saved property is stored in the database and a new axios request is made for the show page.


**Backend Tech used**
* Ruby v2.6.3
* Ruby on Rails
* Gems: pry-rails, knock, bcrypt, rails 12 factor, rack-cors, httparty
* API: Domain API https://developer.domain.com.au
* OAuth
* JWT

**Frontend Tech used**
* JavaScript
* React
* NPM packages: axios, google-map-react, react-router-dom, gh-pages
* API: Google Maps Api    
* HTML
* CSS

**List of bugs**
* Error may occur if you draw the search area too slowly on Google Maps
* Search results will not be saved if you navigate backwards from the show page
* Design is not responsive
