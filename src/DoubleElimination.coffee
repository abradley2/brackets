
class DoubleElimination

    constructor: (entrants) ->
        @entrants = entrants

        pairs = parseInt @entrants.length / 2

        remainder = @entrants.length %% 2

        console.log pairs, remainder

module.exports = DoubleElimination