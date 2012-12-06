
#import animals.mammal
#import bodyparts.snout
#import bodyparts.tail

class Aardvark extends Mammal

    constructor: ->

        super

        @name = 'Aardvark'

        @body.head.bits.push new Snout()
        @body.tail = new Tail()

        @addLegs 4