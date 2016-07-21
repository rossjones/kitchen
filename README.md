# Kitchen

Tools I find useful for working with [Registers](http://www.openregister.org/).


## Build

1. Install Erlang and [Elixir](http://elixir-lang.org/)
2. git clone https://github.com/rossjones/kitchen.git && cd kitchen 
3. ```mix deps.get```
4. ```MIX_ENV=prod mix escript.build ```

## Database

Currently tries to use a user called ```register``` to write to a database called ```registers```.  You can change this by setting env vars at compile time (for now).  See [config.exs](https://github.com/rossjones/kitchen/blob/master/config/config.exs) for names.  This will change eventually.

## Local Import

To import a register as a single table (currently without relationships) in a local postgres:

```
./kitchen --import URL_OF_REGISTER
```

## Sync 


## Generate FKs