require 'pry'

class Startup
    @@all = []

    attr_reader :founder
    attr_accessor :name, :domain

    def initialize (name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end

    def pivot(domain_new, name_new)
        @domain = domain_new
        @name = name_new
    end

    def self.all
        @@all
    end

    def self.find_by_founder (name)
        Startup.all.find{|name| startup.name = name}
        binding.pry
    end


end
