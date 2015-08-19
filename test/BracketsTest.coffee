require './helpers.coffee'
Brackets = require '../src/Brackets.coffee'

describe 'Brackets Class', ->

  entrants = [
      {
        name: 'Tony'
        seeding: 12
      }
      {
        name: 'Chris'
        seeding: 17
      }
      {
        name: 'John'
        seeding: 5
      }
  ]

  it 'should export class', ->
    chai.assert.typeOf Brackets, 'function'
    return

  it 'should create round-robin', ->
    params = {
      type: 'round-robin'
      entrants: entrants
    }
    chai.assert.isArray (new Brackets params).matches
    return

  it 'should create single-elimination', ->
    params = {
      type: 'single-elimination'
      entrants: entrants
    }
    chai.assert.isArray (new Brackets params).matches
    return

  it 'should create double-elimination', ->
    params = {
      type: 'double-elimination'
      entrants: entrants
    }
    chai.assert.isArray (new Brackets params).matches
    return
