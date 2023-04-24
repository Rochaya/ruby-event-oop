require 'pry'
require 'date'

class Event
    
    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees

    @@all_events = Array.new

    def initialize(start_date, duration, title, attendees)
        @start_date = DateTime.strptime(start_date, "%Y-%m-%d %H:%M")
        @duration = duration * 60
        @title = title
        @attendees = [attendees]
        @@all_events.push(self)
    end

    def postpone
        @start_date += (1440*60)
        puts "L'evenement a ete reporter de 24h, soit prévu pour le #{@date_and_hour.day}/#{@date_and_hour.month}/#{@date_and_hour.year} prochain à #{@date_and_hour.hour}h#{@date_and_hour.min}."
    end
end

binding.pry