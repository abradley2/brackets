chai = require 'chai'

isPowerOf = require '../src/util/isPowerOf'

describe 'isPowerOf', ->

    it 'should tell if a number is a power of a given input', ->
        chai.assert.isTrue isPowerOf(8, 2)
        chai.assert.isFalse isPowerOf(2, 8)
        chai.assert.isTrue isPowerOf(9, 3)

uid = require '../src/util/uid'

describe 'uid', ->

    it 'should auto-increment', ->
        chai.assert.equal ( uid() + 1), uid()
        chai.assert.notEqual uid(), uid()


    it 'should give an integer id', ->
        chai.assert.isNumber uid()

        