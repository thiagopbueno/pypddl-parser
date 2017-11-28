# pypddl-parser

PDDL's domain and problem file parser in Python3 using [ply](http://www.dabeaz.com/ply/) library. 

Please note it currently only supports the ```:requirements :strips, :typing, :equality, :probabilistic-effects```.


# Install

To boostrap your project simply follow either of the options.

### Option 1

Download a copy of the project at [https://github.com/thiagopbueno/pypddl-parser/archive/master.zip](https://github.com/thiagopbueno/pypddl-parser/archive/master.zip).

### Option 2

```bash
$ git clone https://github.com/thiagopbueno/pypddl-parser.git
```

Please make sure you have the ```ply``` library installed on your system. If you don't have it, you can use pip3 to install it.

```bash 
$ pip3 install ply
```


# Usage

Please refer to ```pypddl-parser/main.py``` for more usage information.

```bash
$ python3 main.py -h
usage: python3 main.py <DOMAIN> <INSTANCE>

pypddl-parser is a PDDL parser built on top of ply.

positional arguments:
  domain      path to PDDL domain file
  problem     path to PDDL problem file

optional arguments:
  -h, --help  show this help message and exit
```


# Example

```bash
$ python3 main.py pddl/blocksworld/domain.pddl pddl/blocksworld/problems/probBLOCKS-04-0.pddl

@ Domain: blocks
>> requirements: :strips, :typing, :equality
>> types: block
>> predicates: on(?x - block, ?y - block), ontable(?x - block), clear(?x - block), handempty, holding(?x - block)
>> operators:
    pick-up(?x - block)
    >> precond: clear(?x), ontable(?x), handempty
    >> effects: not ontable(?x), not clear(?x), not handempty, holding(?x)
    
    put-down(?x - block)
    >> precond: holding(?x)
    >> effects: not holding(?x), clear(?x), handempty, ontable(?x)
    
    stack(?x - block, ?y - block)
    >> precond: ?x != ?y, holding(?x), clear(?y)
    >> effects: not holding(?x), not clear(?y), clear(?x), handempty, on(?x, ?y)
    
    unstack(?x - block, ?y - block)
    >> precond: ?x != ?y, on(?x, ?y), clear(?x), handempty
    >> effects: holding(?x), clear(?y), not clear(?x), not handempty, not on(?x, ?y)
    

@ Problem: blocks-4-0
>> domain: blocks
>> objects:
block -> a, b, c, d
>> init:
clear(a), clear(b), clear(c), clear(d), handempty, ontable(a), ontable(b), ontable(c), ontable(d)
>> goal:
on(b, a), on(c, b), on(d, c)

```

# License

Copyright (c) 2017 Thiago Pereira Bueno All Rights Reserved.

pypddl-parser is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

pypddl-parser is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with pypddl-parser. If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).
