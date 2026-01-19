This is a personal project that aims to automatically populate a Pokémon database I designed using MySQL and Python.

## Main goal and scope

This project aims to represent the Pokémon world in a scalable SQL database that contains all necessary information to build and store Pokémon teams. The idea is to store every single Pokémon, move, type, ability… and the relationships between them, across generations.

The database should be able to answer questions such as these:

    • Can Mewtwo learn Psystrike in Gen IV?
    • Which game was the last to feature less than 16 types?
    • Which moves can a specific Pokémon learn in a given generation or game.
    • Is this specific team legal in Gen VI?
    • Can Scizor learn Bullet Punch in Diamond and Pearl?

The database, however, will not be able to answer this kind of questions:

    • Which Smogon tier does Chansey belong to in Gen VI?
    • Is this specific team legal in Gen V OU?

Later, this could be used to create applications such as a Pokémon damage calculator, a battle simulator, an application where you can store your teams according to their generation...

## State of development

Successfully retrieved generations, types, Pokémon, which types belong to which generations, moves and the moves each Pokémon is able to learn in each generation, along with the corresponding learning method. Also, used web scraping to obtain the base special stat value for each Gen I Pokémon.

Right now, the database can answer questions such as when does a specific Pokémon learn a given move or by which method. Via the learned moves, it can be known the moves featured in a specific generation.

## Acomplished tasks in the last commit

    • Making sure no potentially troublesome null values are stored in the database. 
    Mainly moves metadata. 
    • Added the base special stat for the 151 Pokémon featured in the first generation. 
    The base special stat for Pokémon in Gen II onwards is null because it is really undefined.

## To Do

    • Create a small script to run both Pokémon.sql and views.sql.
    • Right now, the only stats featured for each Pokémon are the current ones. Manage how they have 
    changed across generations.
    • Insert the Pokémon gender ratios.
    • Insert whether or not the forms are switchable in combat. For exmaple, Rotom cannot change forms 
    in the middle of combat, but Meloetta and Darmanitan both can.
    • Modify the database so that it includes all the moves metadata. 
    There are some specific fields missing.
    • Insert abilities and how some abilities themselves and their availability have changed 
    across generations.
    • Insert items and their availability across generations.
    • Create tables for managing Pokémon teams and trainers.

## Implementation notes

Pokémon teams and trainers are not present in the database right now, but they will be. Right now, the focus is on modeling the different Pokémon species, forms, moves... 

I found three tables to be enough for modeling Pokémon. A Pokémon species may have multiple forms and a Pokémon instance is needed to deal with Pokémon teams, since it's likely that you will need more than one instance of the same Pokémon in the same form. For instance, you may have two teams, with a different Rotom-Wash each. Stats are in a separate table to allow multiple stats sets to be associated with a Pokémon, since some Pokémon stats have changed in recent generations.

The table form_learned_moves has proven to be one of the most complex tables in the database, but its complexity is warranted. It's responsible for storing which moves are learned by each Pokémon in each game/version group and, in turn, in each generation. This was deemed necessary because some moves may be added to the movepool, and some of them may be removed from it, in each generation and version group.

Initially, I thought that it would be a good idea to generate the .sql scripts necessary to populate the database, but it soon proved to be extremely inefficient. That's why they are included in the .gitignore file. Same goes for the .bat files, since I will no longer be needing to develop a script that executes the .sql scripts in the correct order. This will be done using the MySQL Python library. The code is left there for completeness and development purposes, they let me experiment with bash scripts, even though they are not efficient in this particular scenario.
