isPowerOfTwo = require './util/isPowerOfTwo'

class SingleElimination

    constructor: (entrants) ->
        @entrants = entrants

        if isPowerOfTwo @entrants
            console.log 'no byes!'
        else
            console.log 'assign byes!'

module.exports = SingleElimination