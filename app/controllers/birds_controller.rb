# BirdsController with wrap parameters disabled
class BirdsController < ApplicationController
  wrap_parameters format: []
end
class BirdWatcher
  attr_accessor :name, :email, :bio, :favorite_species, :admin

  def initialize(args)
    @name = args[:name]
    @email = args[:email]
    @bio = args[:bio]
    @favorite_species = args[:favorite_species]
    @admin = args[:admin]
  end
end

# Creating a new BirdWatcher object
bird_watcher = BirdWatcher.new(
  name: "Reggie",
  email: "birdman5000@gmail.com",
  favorite_species: "Crow",
  bio: "Just a bird-loving guy",
  admin: false
)
