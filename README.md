# README

* Ruby version 3.0.0

* Rails version 6.1.1

* Stimulus Reflex

* Redis

* Make sure to run db:seed

* **Please note**: I only built out the subregions for Africa and the countries for Central Africa. I like data as much as the next person, but this is strictly for demonstration purposes of how to connect to models so I stopped there.


I had a lot of questions when starting Stimulus Reflex. The Geo-Selector Feature in the Expo (https://expo.stimulusreflex.com/) was fascinating. I've seen a lot of questions out there regarding this. 

There are four pieces that make this work:
* geo_selector_reflex.rb
* geo_selector_controller.js
* pages/home.html.erb
* helpers/pages_helper.rb

Hopefully someone finds this helpful.