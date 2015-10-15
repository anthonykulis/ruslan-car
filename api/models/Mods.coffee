###
Mods.coffee

@description :: TODO: You might write a short summary of how this model works and what it represents here.
@docs        :: http://sailsjs.org/#!documentation/models
###

module.exports =

  attributes: 

    # mods belong to car
    car:
      model: 'car'
      required: true

    # attributes belonging to the mod
    # im just going to put name because I don't know the relevant ifno
    name: 
      type: 'string'


