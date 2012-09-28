# HeyIAmOverHere

Announce your web server over Bonjour.

## Installation

Add this line to your application's Gemfile:

    gem 'hey_i_am_over_here'

Add this to your initializers folder:

    # config/initializers/bonjour.rb
    HeyIAmOverHere.publish("My Wonderful App", 3000)
