
#import places.place
#import animals.*

class Zoo extends Place

    constructor: ( @name = 'Zoo' ) ->

        super

        @animals = [
            new Aardvark()
            new Elephant()
        ]
