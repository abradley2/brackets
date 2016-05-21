isPowerOf = require './util/isPowerOf'
uid = require './util/uid'

class SingleElimination

    constructor: (entrants) ->
        # give a unique id to each entrant
        @entrants = ( entrant: entrant, uid: uid() for entrant in entrants )
        @byes = 0

        @rounds = []

        # if the number of entrants is a power of 2
        # then we don't need to assign byes.
        # Otherwise, byes must be assigned
        unless isPowerOf @entrants.length, 2
            # number of byes is equal to the number of additional 
            # entrants needed to be a power of 2
            ++@byes until isPowerOf( @entrants.length + @byes, 2 ) is true
            
            console.log '# of byes = ',@byes
            console.log '# of first round entrants = ',@entrants.length - @byes
            
            console.log 'assign byes!'

module.exports = SingleElimination