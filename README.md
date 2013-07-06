# HumanAPI

A Ruby client to [HumanAPI](http://humanapi.co).

## Installation

Add this line to your application's Gemfile:

    gem 'humanapi'

## Usage

First get a user's OAuth token, perhaps through [omniauth-humanapi](https://github.com/maccman/omniauth-humanapi).

You can pass the token through to every API method call, or set it globally:

    HumanAPI::Human.token = token

## Methods

Here are all the supported API methods. For more information, please see the [HumanAPI docs](http://humanapi.co/explorer).

    HumanAPI::Human.profile
    HumanAPI::Human.summary
    HumanAPI::Human.all_activity
    HumanAPI::Human.activity
    HumanAPI::Human.daily_activity
    HumanAPI::Human.series_activity
    HumanAPI::Human.blood_glucose
    HumanAPI::Human.all_blood_glucose
    HumanAPI::Human.daily_blood_glucose
    HumanAPI::Human.blood_pressure
    HumanAPI::Human.all_blood_pressures
    HumanAPI::Human.daily_blood_pressure
    HumanAPI::Human.bmi
    HumanAPI::Human.all_bmis
    HumanAPI::Human.daily_bmi
    HumanAPI::Human.body_fat
    HumanAPI::Human.all_body_fats
    HumanAPI::Human.daily_body_fat
    HumanAPI::Human.genetic_traits
    HumanAPI::Human.heart_rate
    HumanAPI::Human.all_heart_rates
    HumanAPI::Human.daily_heart_rate
    HumanAPI::Human.height
    HumanAPI::Human.all_heights
    HumanAPI::Human.daily_height
    HumanAPI::Human.all_locations
    HumanAPI::Human.daily_location
    HumanAPI::Human.sleep
    HumanAPI::Human.all_sleep
    HumanAPI::Human.daily_sleep
    HumanAPI::Human.weight
    HumanAPI::Human.all_weight
    HumanAPI::Human.daily_weight

## Contributing
