require 'pry'
class User
    attr_accessor :email
    attr_accessor :age
    @@all_users = Array.new

    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_users.push(self)
    end

    def self.all
        return @@all_users
    end
end

binding.pry
#julie = User.new("julie@gmail.com", 32)

