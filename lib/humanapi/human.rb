module HumanAPI
  class Human < Nestful::Resource
    endpoint 'https://api.humanapi.co'
    path '/v1/human'

    def self.token=(value)
      @token = value
    end

    def self.token
      @token
    end

    # Profile

    def self.profile(token = token)
      get('profile', :access_token => token)
    end

    def self.summary(token = token)
      get('', :access_token => token)
    end

    # Activity

    def self.all_activity(token = token)
      get("activity/readings", :access_token => token)
    end

    def self.activity(id, token = token)
      get("activity/#{id}", :access_token => token)
    end

    def self.daily_activity(date, token = token)
      get("activity/daily/#{date.strftime('%F')}", :access_token => token)
    end

    def self.series_activity(date, token = token)
      get("activity/series/#{date.strftime('%F')}", :access_token => token)
    end

    # Blood Glucose

    def self.blood_glucose(id, token = token)
      get("blood_glucose/#{id}", :access_token => token)
    end

    def self.all_blood_glucose(token = token)
      get('blood_glucose/readings', :access_token => token)
    end

    def self.daily_blood_glucose(date, token = token)
      get("blood_glucose/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Blood presure

    def self.blood_pressure(id, token = token)
      get("blood_pressure/#{id}", :access_token => token)
    end

    def self.all_blood_pressures(token = token)
      get('blood_pressure/readings', :access_token => token)
    end

    def self.daily_blood_pressure(date, token = token)
      get("blood_pressure/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # BMI

    def self.bmi(id, token = token)
      get("bmi/#{id}", :access_token => token)
    end

    def self.all_bmis(token = token)
      get('bmi/readings', :access_token => token)
    end

    def self.daily_bmi(date, token = token)
      get("bmi/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Body fat

    def self.body_fat(id, token = token)
      get("body_fat/#{id}", :access_token => token)
    end

    def self.all_body_fats(token = token)
      get('body_fat/readings', :access_token => token)
    end

    def self.daily_body_fat(date, token = token)
      get("body_fat/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Genetics

    def self.genetic_traits(token = token)
      get('genetic/traits', :access_token => token)
    end

    # Heart rate

    def self.heart_rate(id, token = token)
      get("heart_rate/#{id}", :access_token => token)
    end

    def self.all_heart_rates(token = token)
      get('heart_rate/readings', :access_token => token)
    end

    def self.daily_heart_rate(date, token = token)
      get("heart_rate/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Height

    def self.height(id, token = token)
      get("height/#{id}", :access_token => token)
    end

    def self.all_heights(token = token)
      get('height/readings', :access_token => token)
    end

    def self.daily_height(date, token = token)
      get("height/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Location

    def self.all_locations(token = token)
      get('location/readings', :access_token => token)
    end

    def self.daily_location(date, token = token)
      get("location/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Sleep

    def self.sleep(id, token = token)
      get("sleep/#{id}", :access_token => token)
    end

    def self.all_sleep(token = token)
      get('sleep/readings', :access_token => token)
    end

    def self.daily_sleep(date, token = token)
      get("sleep/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Weight

    def self.weight(id, token = token)
      get("weight/#{id}", :access_token => token)
    end

    def self.all_weight(token = token)
      get('weight/readings', :access_token => token)
    end

    def self.daily_weight(date, token = token)
      get("weight/daily/#{date.strftime('%F')}", :access_token => token)
    end
  end
end