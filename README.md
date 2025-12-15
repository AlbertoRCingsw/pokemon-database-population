This is a personal project that aims to automatically populate a Pokémon database I designed using MySQL and Python.

## Main goal and scope

This project aims to represent the Pokémon world in a scalable SQL database that contains all necessary information to build and store Pokémon teams. The idea is to store every single Pokémon, move, type, ability… and the relationships between them, across generations.

The database should be able to answer questions such as these:

    • Does Mewtwo learn Psystrike in Gen IV?
    • When was the last game to feature less than 16 types?
    • Showing the list of moves learned by a specific Pokémon in a specific generation or game.
    • Is this specific team legal in Gen VI?
    • Could Scizor learn Bullet Punch in Diamond and Pearl?

The database, however, will not be able to answer these questions:

    • Which Smogon tier does Chansey belong to in Gen VI?
    • Is this specific team legal in Gen V OU?

This could be used to create applications such as a Pokémon damage calculator, a battle simulator, an application where you can store your teams according to their generation.

## State of development

Successfully retrieved generations, types, Pokémon, which types belong to which generations, moves and the moves each Pokémon is able to learn in each generation, along with the corresponding learning method.

Right now, the database can answer questions such as when does a specific Pokémon learn a given move or by which method. Via the learned moves, it can be known the moves featured in a specific generation.

## To Do

    • Create a small script to run both Pokémon.sql and views.sql simultaneously.
    • Right now, the only stats featured for each Pokémon are the current ones. Manage how they have changed across generations.
    • Insert the Pokémon gender ratios.
    • Modify the database so that it includes all the moves metadata. There are some fields missing.
    • Insert abilities and how some abilities themselves and their availability have changed across generations.
    • Insert items and their availability across generations.
    • Making sure no null value is stored in the database. Especially moves metadata.
    • Insert whether or not the forms are switchable in combat.

## Implementation notes

Initially, I thought that it would be a good idea to generate the .sql scripts necessary to populate the database, but it soon proved to be extremely inefficient. That's why they are included in the .gitignore file. Same goes for the .bat files, since I will no longer be needing to develop a script that executes the .sql scripts in the correct order. This will be done via the code.

