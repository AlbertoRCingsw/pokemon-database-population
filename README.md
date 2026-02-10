This is a personal project that aims to automatically populate a Pokémon database I designed using MySQL and Python.

The Pokémon IP is owned by Nintendo, Game Freak and Creatures Inc. This is not an official project and all assets belong to their respective owners. 

## Main goal and scope

This project aims to represent the Pokémon world in a scalable SQL database that contains all necessary information to build and store Pokémon teams. The idea is to store every single Pokémon, move, type, ability… and the relationships between them, across generations.

The database should be able to answer questions such as these:

    • Can Mewtwo learn Psystrike in Gen IV?
    • Which game was the last one to feature less than 16 types?
    • Which moves can a specific Pokémon learn in a given generation or game.
    • Is this specific team legal in Gen VI?
    • Can Scizor learn Bullet Punch in Diamond and Pearl?

The database, however, will not be able to answer this kind of questions:

    • Which Smogon tier does Chansey belong to in Gen VI?
    • Is this specific team legal in Gen V OU?

Later, this could be used to create applications such as a Pokémon damage calculator, a battle simulator, an application where you can store your teams according to their generation...

## The design 

The design is changing as the database is populated to better adapt to the extracted data, to better reflect the domain and to make the design cleaner. Since the database has a lot of tables, the most important details are explained below:

- I found three tables to be enough for modeling Pokémon. A Pokémon species may have multiple forms and a Pokémon instance is needed to deal with Pokémon teams, since it's likely that you will need more than one instance of the same Pokémon in the same form. For instance, you may have two teams, with a different Rotom-Wash each. Stats are in a separate table to allow multiple stats sets to be associated with a Pokémon, since some Pokémon stats have changed in recent generations.

- The table form_learned_moves has proven to be one of the most complex tables in the database, but its complexity is warranted. It's responsible for storing which moves are learned by each Pokémon in each game/version group and, in turn, in each generation. This was deemed necessary because some moves may be added to the movepool, and some of them may be removed from it, in each generation and version group.

- Move have a lot of information to store, so they are the entity with the highest number of tables. They are needed to store different versions and effects, because moves may have more than one effect (for example, increasing more than one stat) or their characteristics (power, accuracy...) may change when a new generation is introduced.

- Generation is vital to the database becaause it allows it to store different versions of things like base stats, move versions, abilities...

## State of development

Successfully retrieved generations, types, Pokémon, which types belong to which generations, moves and the moves each Pokémon is able to learn in each generation, along with the corresponding learning method. Also, used web scraping to obtain the base special stat value for each Gen I Pokémon. The latest addition was the typing and base stats change data, because some Pokémon's typing or base stats changed in a generational transition.

Right now, the database can answer questions such as when does a specific Pokémon learn a given move or by which method. Via the learned moves, it can be known the moves featured in a specific generation. It also includes information about the Pokémon typing and their base stats changes across multiple generations when appropriate. For example: Magnemite's and Clefable's typing changed in Generation II and Generation VI, respectively.

It also includes some information about how moves have changed over time (see implementation notes) and some flags. The flags are useful to store specific information that goes beyond basic parameters like power or accuracy.

Additionally, it includes items, abilities and their availability across some generations (see implementation notes).

Some refactoring was done after adding items and abilities to the database.

Natures and gender ratios were added.

## Acomplished tasks in the last commit

Some clean up: 

- find_move_by_index function in moves_by_pokemon.py and added a docstring
- Finished adding docstrings in utils.py
- Deleted some empty tables in the database. Those tables were deemed unnecessary because
even if they stored data, their data could be inferred.
- All tables in the database now feature a primary key that is not a combination of multiple
foreign keys.
- Created fixes.py. See the "Implementation notes" section.
- Removed all code pertaining to the automated SQL scripts generation. See the "Implementation notes" section.

## To Do

    • Create a small script to run both pokemon_db_script.sql and views.sql.
    • Retrieve a sprite for each type.
    • Insert whether or not the forms are switchable in combat. For instance, Rotom cannot change forms 
    in the middle of combat, but both Meloetta and Darmanitan can.
    • Insert some abilities availability changes. For instance, Gengar lost Levitate in Gen VII. 
    Reflect that change in the database. 
    • Create tables for managing Pokémon teams and trainers.

    • More refactoring. Mainly to improve readability, consistency and performance. Also to clean 
    up some duplicate code and encapsulate repeated select and insert operations in a single function 
    (one for each).

    • Implementing a more robust approach to handle requests and multi-threading is also planned.

## Future work

    • Using parquet files to improve performance.
    • Containerize the database.
    • Deploy the database in a cloud environment.
    • Create an API to better access the contents of the database.

## Implementation notes

Pokémon teams and trainers are not present in the database right now, but they will be. Right now, the focus is on modeling the different Pokémon species, forms, moves... correctly to have a solid foundation. The same can be said about Z-Moves, which are absent from the main data source, and teratypes. Megaevolutions are an exception because they are more readily available.

The special stat was featured in Gen I, but it was replaced in Gen II by the special attack and special defense stats. Web scraping was used to retrieve its value for each Gen I Pokémon. Exceptions, like the Pokémon whose type or others stats changed were dealt with manually because information about those changes isn't as readily available as the special stat.

Move versioning was introduced, but the versions of each effect were not present in the resources I extracted the information from, so the database only contains the information I could automatically extract. It would need case-by-case adjustments because that information is not missing, but rather incomplete. I will add fixes as I come across them.

There are flags associated with each move, and they are used to register some key information such as if the move will always crit or if the move is affected by Protect. They were extracted from Pokémon Showdown's data and thus, some of them were not included because they are specific to the Showdown implementation and not that relevant to this project.

Items availability across generations is poorly documented in both the primary and secondary sources. Automating the extraction of items availability outside of Generations III-VIII is currently not feasible. This will be revisited in the future, since items availability is important for the database's main goal.

Likewise, there doesn't seem to be a source where it is documented when Pokémon gain new abilities. All the current abilities can be easily retrieved, as well as important changes like Chandelure's Shadow Tag in Gen V --> Chandelure's Infiltrator in Gen VI, but a more granular approach is desirable. This will be revisited, since there is a lot of documentation available in natural language.

fixes.py is a file where I update and store some missing data manually. It is there so that I can add missing information as I come across it.

Initially, I thought that it would be a good idea to generate the .sql scripts necessary to populate the database, but it soon proved to be extremely inefficient. That's why they are included in the .gitignore file. Same goes for the .bat files, since I will no longer be needing to develop a script that executes the .sql scripts in the correct order. This will be done using the MySQL Python library. The code that generated the .sql files was ultimately removed.

Right now, the project uses relative paths, so main.py should be executed from the root directory.
