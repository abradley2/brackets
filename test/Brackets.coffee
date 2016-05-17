sinon  = require 'sinon'
chai   = require 'chai'

Brackets = require '../src/Brackets'


describe 'Single Elimination', ->

    it 'should create instance of Single Elimination', ->

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
        
        sut = new Brackets.SingleElimination entrants

        chai.assert.isObject sut