###
Car.coffee

@description :: TODO: You might write a short summary of how this model works and what it represents here.
@docs        :: http://sailsjs.org/#!documentation/models
###

module.exports =

  attributes: 

    # a car has many mods
    mods:
      collection: 'mods'
      via: 'car'

    # car belongs to user
    owner:
      model: 'User'
      required: true

    # attributes regarding the car that are not mods
    brand: 
      type: 'string'
      required: true
    model: 
      type: 'string'
      required: true
    trim: 
      type: 'string'
    year: 
      type: 'integer'
    # you can add as many attributes as you want

