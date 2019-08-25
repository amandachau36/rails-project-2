
# Find Homes

#### Search by drawing a polygon on the map or by suburb
<p float="left">
<img alt="map" src="/app/assets/images/map.png" width="350px">
<img alt="search" src="/app/assets/images/search.png" width="350px">
</p>

#### View your wishlist - mobile responsive
<p float="left">
<img alt="wishlist" src="/app/assets/images/wish_list.png" width="350px"> <img alt="mobile" src="/app/assets/images/mobile-responsive.png" width="200px">
</p>

#### View property details and add the property to your wishlist!  
<img alt="show_page" src="/app/assets/images/show_page.png" width="350px">

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
* Design is (mostly) responsive!!


**Backend Tech used**
* Ruby v2.6.3
* Ruby on Rails
* Gems: pry-rails, knock, bcrypt, rails 12 factor, rack-cors, httparty
* Domain API https://developer.domain.com.au (OAuth)
* JWT for authentication
* Deployed to Heroku


**Frontend Tech used**
* JavaScript
* React
* NPM packages: axios, google-map-react, react-router-dom, gh-pages
* Google Maps Api    
* HTML/CSS
* Deployed to GH pages


**List of bugs**
* Error may occur if you draw the search area too slowly on Google Maps
* Search results will not be saved if you navigate backwards from the show page
* Page refresh required for a new search
* ADD TO WISHLIST button appears even when the property is already on your wishlist
