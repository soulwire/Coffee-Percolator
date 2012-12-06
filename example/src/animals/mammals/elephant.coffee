
#import animals.mammal
#import bodyparts.tail
#import bodyparts.trunk

class Elephant extends Mammal

    constructor: ->

        super

        @name = 'Elephant'

        @body.head.bits.push new Trunk()
        @body.tail = new Tail()

        @addLegs 4



