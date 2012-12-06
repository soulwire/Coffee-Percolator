
#import animals.animal
#import bodyparts.head
#import bodyparts.leg

class Mammal extends Animal

    constructor: ->

        super

        @body.legs = []
        @body.head = new Head()

    addLegs: ( howMany ) ->

        @body.legs.push new Leg "Leg #{i}" for i in [1..howMany]