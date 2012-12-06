### Coffee Percolator

Coffee Percolator is a [CoffeeScript](http://coffeescript.org/) [CakeFile](http://coffeescript.org/#cake) which allows you to use `import` directives to easily manage dependancies in your CoffeeScript project.

	#import core.base
	#import utils.*

	class App extends Base
		constructor: -> utils.hello()

Just edit the [CakeFile](https://github.com/soulwire/Coffee-Percolator/blob/master/CakeFile) to point to your main source file and it will use topological sort to concatenate and compile all required sources in the correct order.

#### Syntax

You can define imports using CoffeeScript comments in any `.coffee` file

    #import thing

and import sources from any depth

    #import bits.bobs.stuff.thing

or use wildcards to import entire directories

    #import stuff.*

and if you prefer slashes to dots, that's fine

    #import bits/bobs/stuff/*

Check out the [example](https://github.com/soulwire/Coffee-Percolator/tree/master/example/src) for a ridiculous hypothetical project that makes use of imports.

### Usage

You probably just want the CakeFile, so grab that first

	curl -o CakeFile https://raw.github.com/soulwire/Coffee-Percolator/master/CakeFile

then use it in the usual cakey manner: `cake {task name}`

Currently there are two tasks available, `build` and `watch` and you've probably already guessed what they do.

`cake build` will process your main source and follow all dependancies, concatenate them into a single file in the correct order required to run your app then compile this merged file into JavaScript using the CoffeeScript compiler.

`cake watch` will watch all source files for changes and invoke the `build` command when it detects them.

So that's it! It's just a CakeFile - grab the code, add any funky business you like that you would normally use and enjoy CoffeeScripting...
