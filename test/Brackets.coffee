sinon  = require 'sinon'
chai   = require 'chai'

Brackets = require '../src/Brackets.coffee'

describe 'Brackets Base', ->

    it 'should should have Double Elimination', ->
        chai.assert.property Brackets, 'DoubleElimination'



describe 'Double Elimination', ->

    it 'should create instance of DoubleElimination', ->

        entrants = [
            'tony',
            'austin',
            'david',
            'chuks',
            'smiley',
            'rebecca',
            'brandon',
            'catherine',
            'matt',
            'michael',
            'dasha'
        ]
        

        chai.assert.isObject new Brackets.DoubleElimination entrants