# check if <num> is a power of <base>
isPowerOf = (num, base, i = 0) ->
    return switch
        when Math.pow(base, i) is num then true
        when Math.pow(base, i) > num then false
        else isPowerOf(num, base, i+1)

module.exports = isPowerOf