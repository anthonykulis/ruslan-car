###
CarController

@description :: Server-side logic for managing Cars
@help        :: See http://links.sailsjs.org/docs/controllers
###

module.exports = 

  # i want cars to populate owners and mods
  findOne: (req, res) ->
    Car.findOne({id: req.params.id}).populate('owner').populate('mods').exec((err, record) =>
      if(err)
        res.json(500, err)
      else
        res.json(record)
    )

  # finding all of them with populated values, bad idea, would need a UX method to limit memory
  # whether that is paging, infinite scrolling, restructering data, etc. but for example. all good
  find: (req,res) ->
    Car.find().populate('owner').populate('mods').exec((err, records) =>
      if(err)
        res.json(500, err)
      else
        res.json(records)
    )


