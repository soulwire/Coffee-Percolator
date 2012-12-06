
Printer =

    print: ( message ) ->

        container = document.createElement 'pre'
        container.innerHTML = message
        document.body.appendChild container