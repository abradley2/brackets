class Brackets

  constructor: (params) ->
    if params.type == 'round-robin'
      @matches = params.entrants

    if params.type == 'single-elimination'
      @matches = params.entrants

    if params.type == 'double-elimination'
      @matches = params.entrants
      
module.exports = Brackets
