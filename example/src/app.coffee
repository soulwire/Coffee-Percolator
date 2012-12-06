
#import places.zoo
#import utils.*

App =
    
    zoo: new Zoo()
    
    init: ->

        Logger.log 'init', @zoo
        Printer.print JSON.stringify @zoo, null, 4

do App.init