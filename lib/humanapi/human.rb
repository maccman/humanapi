module HumanAPI
  class Human < Nestful::Resource
    endpoint 'https://api.humanapi.co'
    path '/v1/human'

    def self.token=(value)
      options[:access_token] = value
    end

    # Profile

    def self.profile(token = nil)
      get('profile', :access_token => token)
    end

    def self.summary(token = nil)
      get('', :access_token => token)
    end

    # Activity

    def self.all_activity(token = nil)
      get("activity", :access_token => token)
    end

    def self.activity(id, token = nil)
      get("activity/#{id}", :access_token => token)
    end

    def self.daily_activity(date, token = nil)
      get("activity/daily/#{date.strftime('%F')}", :access_token => token)
    end

    def self.series_activity(date, token = nil)
      get("activity/series/#{date.strftime('%F')}", :access_token => token)
    end

    # Blood Glucose

    def self.blood_glucose(id, token = nil)
      get("blood_glucose/#{id}", :access_token => token)
    end

    def self.all_blood_glucose(token = nil)
      get('blood_glucose', :access_token => token)
    end

    def self.daily_blood_glucose(date, token = nil)
      get("blood_glucose/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Blood presure

    def self.blood_pressure(id, token = nil)
      get("blood_pressure/#{id}", :access_token => token)
    end

    def self.all_blood_pressures(token = nil)
      get('blood_pressure', :access_token => token)
    end

    def self.daily_blood_pressure(date, token = nil)
      get("blood_pressure/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # BMI

    def self.bmi(id, token = nil)
      get("bmi/#{id}", :access_token => token)
    end

    def self.all_bmis(token = nil)
      get('bmi', :access_token => token)
    end

    def self.daily_bmi(date, token = nil)
      get("bmi/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Body fat

    def self.body_fat(id, token = nil)
      get("body_fat/#{id}", :access_token => token)
    end

    def self.all_body_fats(token = nil)
      get('body_fat', :access_token => token)
    end

    def self.daily_body_fat(date, token = nil)
      get("body_fat/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Genetics

    def self.genetic_traits(token = nil)
      get('genetic/traits', :access_token => token)
    end

    # Heart rate

    def self.heart_rate(id, token = nil)
      get("heart_rate/#{id}", :access_token => token)
    end

    def self.all_heart_rates(token = nil)
      get('heart_rate', :access_token => token)
    end

    def self.daily_heart_rate(date, token = nil)
      get("heart_rate/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Height

    def self.height(id, token = nil)
      get("height/#{id}", :access_token => token)
    end

    def self.all_heights(token = nil)
      get('height', :access_token => token)
    end

    def self.daily_height(date, token = nil)
      get("height/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Location

    def self.all_locations(token = nil)
      get('location', :access_token => token)
    end

    def self.daily_location(date, token = nil)
      get("location/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Sleep

    def self.sleep(id, token = nil)
      get("sleep/#{id}", :access_token => token)
    end

    def self.all_sleep(token = nil)
      get('sleep', :access_token => token)
    end

    def self.daily_sleep(date, token = nil)
      get("sleep/daily/#{date.strftime('%F')}", :access_token => token)
    end

    # Weight

    def self.weight(id, token = nil)
      get("weight/#{id}", :access_token => token)
    end

    def self.all_weight(token = nil)
      get('weight', :access_token => token)
    end

    def self.daily_weight(date, token = nil)
      get("weight/daily/#{date.strftime('%F')}", :access_token => token)
    end
  end
end