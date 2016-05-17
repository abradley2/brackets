isPowerOfTwo = (num, i = 0) ->
  if Math.pow(2, i) is num then true
  else if Math.pow(2, i) > num then false
  else isPowerOfTwo i+1

module.exports = isPowerOfTwo