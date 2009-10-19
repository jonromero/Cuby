# Cuby

A tiny C-like language built on top of Ruby, in less than 20 lines of code.

## Install

    $ sudo gem install cuby --source http://gemcutter.org/

## Useage

### Executing Cuby Files

    $ cuby path/to/file.cb

### Interactive Shell

Cuby comes with an interactive shell called `icb` (just like Ruby's `irb`) which you ran run for the command line.

The shell is currently considered to be in an Alpha state, as it doesn't fully work with all the quirks of Cuby.

## Examples

Basic, `example1.cb`:

    // This is an example of the Cuby Language
    main {
      printf "Hello world\n"
    }

Advanced(ish), `example4.cb`:

    // This is another example of the Cuby Language
    include "cuby/stdio"
    plea_for_merci_to {
      |name|
      shout "Please don't kill me " + name + "!"
    }
    main {
      plea_for_merci_to "Jon"
    }

`cuby/stdio.rb`:

    def shout argument
      puts argument.upcase
    end

## License

Released under GPL license 3.0.

Copyright (c) 2009 Jon Vlachoyiannis (jon@emotionull.com).