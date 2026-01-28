-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bulbasaur', 1);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bulbasaur', True, 1);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 49, 49, 65, 65, 45, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('charmander', 4);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charmander', True, 2);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (39, 52, 43, 60, 50, 65, 1, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (2, 10, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('squirtle', 7);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('squirtle', True, 3);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 48, 65, 50, 64, 43, 1, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (3, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('caterpie', 10);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('caterpie', True, 4);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 35, 20, 20, 45, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (4, 7, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('weedle', 13);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('weedle', True, 5);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 35, 30, 20, 20, 50, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (5, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (5, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pidgey', 16);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pidgey', True, 6);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 40, 35, 35, 56, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (6, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (6, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rattata', 19);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rattata', True, 7);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 56, 35, 25, 35, 72, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (7, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rattata-alola', False, 7);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 56, 35, 25, 35, 72, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (8, 17, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (8, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spearow', 21);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spearow', True, 8);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 60, 30, 31, 31, 70, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (9, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (9, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ekans', 23);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ekans', True, 9);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 60, 44, 40, 54, 55, 1, 10);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (10, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandshrew', 27);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandshrew', True, 10);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 85, 20, 30, 40, 1, 11);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (11, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandshrew-alola', False, 10);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 90, 10, 35, 40, 7, 12);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (12, 15, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (12, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidoran-f', 29);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidoran-f', True, 11);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 47, 52, 40, 40, 41, 1, 13);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (13, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidoran-m', 32);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidoran-m', True, 12);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (46, 57, 40, 40, 40, 50, 1, 14);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (14, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vulpix', 37);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vulpix', True, 13);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 41, 40, 50, 65, 65, 1, 15);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (15, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vulpix-alola', False, 13);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 41, 40, 50, 65, 65, 7, 16);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (16, 15, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zubat', 41);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zubat', True, 14);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 35, 30, 40, 55, 1, 17);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (17, 4, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (17, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('oddish', 43);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oddish', True, 15);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 50, 55, 75, 65, 30, 1, 18);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (18, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (18, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('paras', 46);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('paras', True, 16);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 70, 55, 45, 55, 25, 1, 19);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (19, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (19, 12, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('venonat', 48);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venonat', True, 17);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 50, 40, 55, 45, 1, 20);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (20, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (20, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('diglett', 50);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('diglett', True, 18);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (10, 55, 25, 35, 45, 95, 1, 21);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (21, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('diglett-alola', False, 18);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (10, 55, 30, 35, 45, 90, 7, 22);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (22, 5, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (22, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meowth', 52);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowth', True, 19);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 35, 40, 40, 90, 1, 23);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (23, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowth-alola', False, 19);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 35, 35, 50, 40, 90, 7, 24);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (24, 17, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowth-galar', False, 19);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 55, 40, 40, 40, 8, 25);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (25, 9, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowth-gmax', False, 19);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 35, 40, 40, 90, 8, 26);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (26, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('psyduck', 54);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('psyduck', True, 20);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 52, 48, 65, 50, 55, 1, 27);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (27, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mankey', 56);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mankey', True, 21);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 80, 35, 35, 45, 70, 1, 28);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (28, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('growlithe', 58);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('growlithe', True, 22);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 70, 45, 70, 50, 60, 1, 29);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (29, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('growlithe-hisui', False, 22);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 75, 45, 65, 50, 55, 8, 30);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (30, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (30, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poliwag', 60);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poliwag', True, 23);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 50, 40, 40, 40, 90, 1, 31);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (31, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('abra', 63);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('abra', True, 24);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (25, 20, 15, 105, 55, 90, 1, 32);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (32, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('machop', 66);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('machop', True, 25);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 80, 50, 35, 35, 35, 1, 33);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (33, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bellsprout', 69);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bellsprout', True, 26);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 35, 70, 30, 40, 1, 34);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (34, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (34, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tentacool', 72);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tentacool', True, 27);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 35, 50, 100, 70, 1, 35);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (35, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (35, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('geodude', 74);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('geodude', True, 28);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 80, 100, 30, 30, 20, 1, 36);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (36, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (36, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('geodude-alola', False, 28);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 80, 100, 30, 30, 20, 7, 37);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (37, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (37, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('venusaur', 3);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venusaur', True, 29);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 82, 83, 100, 100, 80, 1, 38);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (38, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (38, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venusaur-mega', False, 29);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 123, 122, 120, 80, 6, 39);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (39, 12, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (39, 4, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venusaur-gmax', False, 29);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 82, 83, 100, 100, 80, 8, 40);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (40, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (40, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('charmeleon', 5);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charmeleon', True, 30);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 64, 58, 80, 65, 80, 1, 41);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (41, 10, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('charizard', 6);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charizard', True, 31);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 84, 78, 109, 85, 100, 1, 42);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (42, 10, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (42, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charizard-mega-x', False, 31);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 130, 111, 130, 85, 100, 6, 43);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (43, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (43, 16, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charizard-mega-y', False, 31);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 104, 78, 159, 115, 100, 6, 44);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (44, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (44, 3, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charizard-gmax', False, 31);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 84, 78, 109, 85, 100, 8, 45);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (45, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (45, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wartortle', 8);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wartortle', True, 32);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 63, 80, 65, 80, 58, 1, 46);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (46, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blastoise', 9);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blastoise', True, 33);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 83, 100, 85, 105, 78, 1, 47);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (47, 11, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blastoise-mega', False, 33);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 103, 120, 135, 115, 78, 6, 48);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (48, 11, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blastoise-gmax', False, 33);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 83, 100, 85, 105, 78, 8, 49);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (49, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('metapod', 11);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('metapod', True, 34);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 20, 55, 25, 25, 30, 1, 50);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (50, 7, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('butterfree', 12);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('butterfree', True, 35);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 50, 90, 80, 70, 1, 51);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (51, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (51, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('butterfree-gmax', False, 35);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 50, 90, 80, 70, 8, 52);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (52, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (52, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kakuna', 14);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kakuna', True, 36);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 25, 50, 25, 25, 35, 1, 53);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (53, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (53, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('beedrill', 15);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beedrill', True, 37);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 40, 45, 80, 75, 1, 54);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (54, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (54, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beedrill-mega', False, 37);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 150, 40, 15, 80, 145, 6, 55);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (55, 7, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (55, 4, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pidgeotto', 17);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pidgeotto', True, 38);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (63, 60, 55, 50, 50, 71, 1, 56);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (56, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (56, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pidgeot', 18);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pidgeot', True, 39);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (83, 80, 75, 70, 70, 101, 1, 57);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (57, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (57, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pidgeot-mega', False, 39);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (83, 80, 80, 135, 80, 121, 6, 58);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (58, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (58, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('raticate', 20);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raticate', True, 40);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 81, 60, 50, 70, 97, 1, 59);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (59, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raticate-alola', False, 40);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 71, 70, 40, 80, 77, 7, 60);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (60, 17, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (60, 1, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raticate-totem-alola', False, 40);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 71, 70, 40, 80, 77, 7, 61);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (61, 17, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (61, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fearow', 22);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fearow', True, 41);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 65, 61, 61, 100, 1, 62);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (62, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (62, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arbok', 24);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arbok', True, 42);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 95, 69, 65, 79, 80, 1, 63);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (63, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pikachu', 25);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu', True, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 64);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (64, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-rock-star', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 65);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (65, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-belle', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 66);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (66, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-pop-star', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 67);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (67, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-phd', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 68);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (68, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-libre', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 69);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (69, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-cosplay', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 70);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (70, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-original-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 71);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (71, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-hoenn-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 72);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (72, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-sinnoh-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 73);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (73, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-unova-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 74);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (74, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-kalos-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 75);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (75, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-alola-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 7, 76);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (76, 13, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-partner-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 77);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (77, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-starter', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 80, 50, 75, 60, 120, 1, 78);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (78, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-world-cap', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 1, 79);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (79, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikachu-gmax', False, 43);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 50, 50, 90, 8, 80);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (80, 13, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('raichu', 26);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raichu', True, 44);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 90, 55, 90, 80, 110, 1, 81);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (81, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raichu-alola', False, 44);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 50, 95, 85, 110, 7, 82);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (82, 13, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (82, 14, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandslash', 28);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandslash', True, 45);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 100, 110, 45, 55, 65, 1, 83);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (83, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandslash-alola', False, 45);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 100, 120, 25, 65, 65, 7, 84);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (84, 15, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (84, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidorina', 30);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidorina', True, 46);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 62, 67, 55, 55, 56, 1, 85);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (85, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidoqueen', 31);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidoqueen', True, 47);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 92, 87, 75, 85, 76, 1, 86);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (86, 4, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (86, 5, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidorino', 33);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidorino', True, 48);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 72, 57, 55, 55, 65, 1, 87);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (87, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nidoking', 34);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nidoking', True, 49);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (81, 102, 77, 85, 75, 85, 1, 88);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (88, 4, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (88, 5, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clefairy', 35);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clefairy', True, 50);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 45, 48, 60, 65, 35, 1, 89);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (89, 18, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clefable', 36);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clefable', True, 51);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 70, 73, 95, 90, 60, 1, 90);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (90, 18, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ninetales', 38);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ninetales', True, 52);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 76, 75, 81, 100, 100, 1, 91);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (91, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ninetales-alola', False, 52);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 67, 75, 81, 100, 109, 7, 92);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (92, 15, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (92, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jigglypuff', 39);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jigglypuff', True, 53);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 45, 20, 45, 25, 20, 1, 93);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (93, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (93, 18, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wigglytuff', 40);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wigglytuff', True, 54);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (140, 70, 45, 85, 50, 45, 1, 94);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (94, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (94, 18, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golbat', 42);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golbat', True, 55);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 70, 65, 75, 90, 1, 95);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (95, 4, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (95, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gloom', 44);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gloom', True, 56);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 70, 85, 75, 40, 1, 96);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (96, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (96, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vileplume', 45);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vileplume', True, 57);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 85, 110, 90, 50, 1, 97);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (97, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (97, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('parasect', 47);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('parasect', True, 58);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 95, 80, 60, 80, 30, 1, 98);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (98, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (98, 12, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('venomoth', 49);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venomoth', True, 59);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 65, 60, 90, 75, 90, 1, 99);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (99, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (99, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dugtrio', 51);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dugtrio', True, 60);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 100, 50, 50, 70, 120, 1, 100);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (100, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dugtrio-alola', False, 60);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 100, 60, 50, 70, 110, 7, 101);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (101, 5, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (101, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('persian', 53);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('persian', True, 61);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 70, 60, 65, 65, 115, 1, 102);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (102, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('persian-alola', False, 61);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 60, 75, 65, 115, 7, 103);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (103, 17, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golduck', 55);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golduck', True, 62);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 82, 78, 95, 80, 85, 1, 104);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (104, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('primeape', 57);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('primeape', True, 63);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 105, 60, 60, 70, 95, 1, 105);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (105, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arcanine', 59);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arcanine', True, 64);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 110, 80, 100, 80, 95, 1, 106);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (106, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arcanine-hisui', False, 64);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 115, 80, 95, 80, 90, 8, 107);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (107, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (107, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poliwhirl', 61);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poliwhirl', True, 65);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 65, 65, 50, 50, 90, 1, 108);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (108, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poliwrath', 62);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poliwrath', True, 66);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 95, 95, 70, 90, 70, 1, 109);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (109, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (109, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kadabra', 64);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kadabra', True, 67);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 35, 30, 120, 70, 105, 1, 110);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (110, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('alakazam', 65);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('alakazam', True, 68);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 50, 45, 135, 95, 120, 1, 111);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (111, 14, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('alakazam-mega', False, 68);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 50, 65, 175, 105, 150, 6, 112);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (112, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('machoke', 67);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('machoke', True, 69);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 70, 50, 60, 45, 1, 113);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (113, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('machamp', 68);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('machamp', True, 70);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 130, 80, 65, 85, 55, 1, 114);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (114, 2, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('machamp-gmax', False, 70);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 130, 80, 65, 85, 55, 8, 115);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (115, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('weepinbell', 70);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('weepinbell', True, 71);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 50, 85, 45, 55, 1, 116);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (116, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (116, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('victreebel', 71);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('victreebel', True, 72);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 105, 65, 100, 70, 70, 1, 117);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (117, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (117, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tentacruel', 73);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tentacruel', True, 73);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 70, 65, 80, 120, 100, 1, 118);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (118, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (118, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('graveler', 75);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('graveler', True, 74);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 95, 115, 45, 45, 35, 1, 119);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (119, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (119, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('graveler-alola', False, 74);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 95, 115, 45, 45, 35, 7, 120);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (120, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (120, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ponyta', 77);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ponyta', True, 75);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 85, 55, 65, 65, 90, 1, 121);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (121, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ponyta-galar', False, 75);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 85, 55, 65, 65, 90, 8, 122);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (122, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slowpoke', 79);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowpoke', True, 76);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 65, 65, 40, 40, 15, 1, 123);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (123, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (123, 14, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowpoke-galar', False, 76);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 65, 65, 40, 40, 15, 8, 124);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (124, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magnemite', 81);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magnemite', True, 77);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (25, 35, 70, 95, 55, 45, 1, 125);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (125, 13, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (125, 9, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('farfetchd', 83);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('farfetchd', True, 78);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 90, 55, 58, 62, 60, 1, 126);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (126, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (126, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('farfetchd-galar', False, 78);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 95, 55, 58, 62, 55, 8, 127);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (127, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('doduo', 84);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('doduo', True, 79);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 85, 45, 35, 35, 75, 1, 128);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (128, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (128, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seel', 86);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seel', True, 80);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 45, 55, 45, 70, 45, 1, 129);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (129, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grimer', 88);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grimer', True, 81);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 50, 40, 50, 25, 1, 130);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (130, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grimer-alola', False, 81);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 50, 40, 50, 25, 7, 131);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (131, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (131, 17, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shellder', 90);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shellder', True, 82);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 65, 100, 45, 25, 40, 1, 132);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (132, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gastly', 92);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gastly', True, 83);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 35, 30, 100, 35, 80, 1, 133);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (133, 8, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (133, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('onix', 95);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('onix', True, 84);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 45, 160, 30, 45, 70, 1, 134);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (134, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (134, 5, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drowzee', 96);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drowzee', True, 85);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 48, 45, 43, 90, 42, 1, 135);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (135, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('krabby', 98);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('krabby', True, 86);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 105, 90, 25, 25, 50, 1, 136);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (136, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('voltorb', 100);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('voltorb', True, 87);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 50, 55, 55, 100, 1, 137);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (137, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('voltorb-hisui', False, 87);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 50, 55, 55, 100, 8, 138);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (138, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (138, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('exeggcute', 102);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('exeggcute', True, 88);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 40, 80, 60, 45, 40, 1, 139);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (139, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (139, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cubone', 104);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cubone', True, 89);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 95, 40, 50, 35, 1, 140);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (140, 5, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lickitung', 108);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lickitung', True, 90);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 55, 75, 60, 75, 30, 1, 141);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (141, 1, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('koffing', 109);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koffing', True, 91);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 65, 95, 60, 45, 35, 1, 142);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (142, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rhyhorn', 111);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rhyhorn', True, 92);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 85, 95, 30, 30, 25, 1, 143);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (143, 5, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (143, 6, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tangela', 114);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tangela', True, 93);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 55, 115, 100, 40, 60, 1, 144);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (144, 12, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kangaskhan', 115);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kangaskhan', True, 94);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 95, 80, 40, 80, 90, 1, 145);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (145, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kangaskhan-mega', False, 94);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 125, 100, 60, 100, 100, 6, 146);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (146, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('horsea', 116);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('horsea', True, 95);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 40, 70, 70, 25, 60, 1, 147);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (147, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('goldeen', 118);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('goldeen', True, 96);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 67, 60, 35, 50, 63, 1, 148);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (148, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('staryu', 120);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('staryu', True, 97);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 45, 55, 70, 55, 85, 1, 149);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (149, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scyther', 123);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scyther', True, 98);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 80, 55, 80, 105, 1, 150);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (150, 7, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (150, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pinsir', 127);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pinsir', True, 99);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 125, 100, 55, 70, 85, 1, 151);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (151, 7, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pinsir-mega', False, 99);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 155, 120, 65, 90, 105, 6, 152);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (152, 7, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (152, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tauros', 128);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tauros', True, 100);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 100, 95, 40, 70, 110, 1, 153);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (153, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tauros-paldea-combat-breed', False, 100);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 105, 30, 70, 100, 9, 154);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (154, 2, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tauros-paldea-blaze-breed', False, 100);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 105, 30, 70, 100, 9, 155);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (155, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (155, 10, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tauros-paldea-aqua-breed', False, 100);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 105, 30, 70, 100, 9, 156);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (156, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (156, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magikarp', 129);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magikarp', True, 101);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 10, 55, 15, 20, 80, 1, 157);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (157, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lapras', 131);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lapras', True, 102);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 85, 80, 85, 95, 60, 1, 158);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (158, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (158, 15, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lapras-gmax', False, 102);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 85, 80, 85, 95, 60, 8, 159);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (159, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (159, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ditto', 132);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ditto', True, 103);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 48, 48, 48, 48, 48, 1, 160);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (160, 1, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eevee', 133);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eevee', True, 104);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 50, 45, 65, 55, 1, 161);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (161, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eevee-starter', False, 104);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 75, 70, 65, 85, 75, 1, 162);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (162, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eevee-gmax', False, 104);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 50, 45, 65, 55, 8, 163);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (163, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('porygon', 137);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('porygon', True, 105);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 70, 85, 75, 40, 1, 164);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (164, 1, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('omanyte', 138);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('omanyte', True, 106);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 40, 100, 90, 55, 35, 1, 165);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (165, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (165, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kabuto', 140);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kabuto', True, 107);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 80, 90, 55, 45, 55, 1, 166);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (166, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (166, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aerodactyl', 142);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aerodactyl', True, 108);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 105, 65, 60, 75, 130, 1, 167);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (167, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (167, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aerodactyl-mega', False, 108);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 135, 85, 70, 95, 150, 6, 168);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (168, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (168, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('articuno', 144);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('articuno', True, 109);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 85, 100, 95, 125, 85, 1, 169);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (169, 15, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (169, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('articuno-galar', False, 109);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 85, 85, 125, 100, 95, 8, 170);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (170, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (170, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zapdos', 145);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zapdos', True, 110);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 90, 85, 125, 90, 100, 1, 171);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (171, 13, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (171, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zapdos-galar', False, 110);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 125, 90, 85, 90, 100, 8, 172);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (172, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (172, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('moltres', 146);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('moltres', True, 111);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 90, 125, 85, 90, 1, 173);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (173, 10, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (173, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('moltres-galar', False, 111);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 85, 90, 100, 125, 90, 8, 174);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (174, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (174, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dratini', 147);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dratini', True, 112);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 64, 45, 50, 50, 50, 1, 175);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (175, 16, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mewtwo', 150);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mewtwo', True, 113);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 110, 90, 154, 90, 130, 1, 176);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (176, 14, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mewtwo-mega-x', False, 113);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 190, 100, 154, 100, 130, 6, 177);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (177, 14, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (177, 2, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mewtwo-mega-y', False, 113);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 150, 70, 194, 120, 140, 6, 178);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (178, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rapidash', 78);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rapidash', True, 114);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 100, 70, 80, 80, 105, 1, 179);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (179, 10, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rapidash-galar', False, 114);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 100, 70, 80, 80, 105, 8, 180);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (180, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (180, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slowbro', 80);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowbro', True, 115);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 75, 110, 100, 80, 30, 1, 181);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (181, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (181, 14, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowbro-mega', False, 115);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 75, 180, 130, 80, 30, 6, 182);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (182, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (182, 14, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowbro-galar', False, 115);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 100, 95, 100, 70, 30, 8, 183);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (183, 4, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (183, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magneton', 82);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magneton', True, 116);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 60, 95, 120, 70, 70, 1, 184);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (184, 13, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (184, 9, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dodrio', 85);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dodrio', True, 117);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 110, 70, 60, 60, 110, 1, 185);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (185, 1, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (185, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dewgong', 87);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dewgong', True, 118);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 70, 80, 70, 95, 70, 1, 186);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (186, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (186, 15, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('muk', 89);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('muk', True, 119);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 105, 75, 65, 100, 50, 1, 187);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (187, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('muk-alola', False, 119);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 105, 75, 65, 100, 50, 7, 188);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (188, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (188, 17, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cloyster', 91);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cloyster', True, 120);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 95, 180, 85, 45, 70, 1, 189);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (189, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (189, 15, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('haunter', 93);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('haunter', True, 121);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 50, 45, 115, 55, 95, 1, 190);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (190, 8, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (190, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gengar', 94);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gengar', True, 122);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 60, 130, 75, 110, 1, 191);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (191, 8, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (191, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gengar-mega', False, 122);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 80, 170, 95, 130, 6, 192);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (192, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (192, 4, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gengar-gmax', False, 122);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 60, 130, 75, 110, 8, 193);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (193, 8, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (193, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hypno', 97);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hypno', True, 123);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 73, 70, 73, 115, 67, 1, 194);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (194, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kingler', 99);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kingler', True, 124);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 130, 115, 50, 50, 75, 1, 195);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (195, 11, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kingler-gmax', False, 124);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 130, 115, 50, 50, 75, 8, 196);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (196, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('electrode', 101);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('electrode', True, 125);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 70, 80, 80, 150, 1, 197);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (197, 13, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('electrode-hisui', False, 125);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 70, 80, 80, 150, 8, 198);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (198, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (198, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('exeggutor', 103);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('exeggutor', True, 126);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 95, 85, 125, 75, 55, 1, 199);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (199, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (199, 14, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('exeggutor-alola', False, 126);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 105, 85, 125, 75, 45, 7, 200);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (200, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (200, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('marowak', 105);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marowak', True, 127);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 110, 50, 80, 45, 1, 201);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (201, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marowak-alola', False, 127);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 110, 50, 80, 45, 7, 202);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (202, 10, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (202, 8, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marowak-totem', False, 127);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 110, 50, 80, 45, 1, 203);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (203, 10, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (203, 8, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hitmonlee', 106);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hitmonlee', True, 128);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 120, 53, 35, 110, 87, 1, 204);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (204, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hitmonchan', 107);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hitmonchan', True, 129);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 105, 79, 35, 110, 76, 1, 205);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (205, 2, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('weezing', 110);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('weezing', True, 130);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 120, 85, 70, 60, 1, 206);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (206, 4, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('weezing-galar', False, 130);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 120, 85, 70, 60, 8, 207);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (207, 4, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (207, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rhydon', 112);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rhydon', True, 131);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 130, 120, 45, 45, 40, 1, 208);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (208, 5, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (208, 6, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chansey', 113);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chansey', True, 132);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (250, 5, 5, 35, 105, 50, 1, 209);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (209, 1, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seadra', 117);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seadra', True, 133);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 65, 95, 95, 45, 85, 1, 210);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (210, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seaking', 119);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seaking', True, 134);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 92, 65, 65, 80, 68, 1, 211);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (211, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('starmie', 121);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('starmie', True, 135);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 75, 85, 100, 85, 115, 1, 212);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (212, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (212, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mr-mime', 122);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mr-mime', True, 136);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 65, 100, 120, 90, 1, 213);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (213, 14, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (213, 18, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mr-mime-galar', False, 136);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 65, 90, 90, 100, 8, 214);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (214, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (214, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jynx', 124);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jynx', True, 137);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 50, 35, 115, 95, 95, 1, 215);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (215, 15, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (215, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('electabuzz', 125);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('electabuzz', True, 138);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 83, 57, 95, 85, 105, 1, 216);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (216, 13, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magmar', 126);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magmar', True, 139);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 95, 57, 100, 85, 93, 1, 217);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (217, 10, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gyarados', 130);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gyarados', True, 140);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 125, 79, 60, 100, 81, 1, 218);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (218, 11, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (218, 3, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gyarados-mega', False, 140);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 155, 109, 70, 130, 81, 6, 219);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (219, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (219, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vaporeon', 134);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vaporeon', True, 141);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 65, 60, 110, 95, 65, 1, 220);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (220, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jolteon', 135);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jolteon', True, 142);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 65, 60, 110, 95, 130, 1, 221);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (221, 13, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flareon', 136);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flareon', True, 143);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 130, 60, 95, 110, 65, 1, 222);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (222, 10, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('omastar', 139);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('omastar', True, 144);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 60, 125, 115, 70, 55, 1, 223);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (223, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (223, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kabutops', 141);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kabutops', True, 145);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 115, 105, 65, 70, 80, 1, 224);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (224, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (224, 11, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snorlax', 143);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snorlax', True, 146);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (160, 110, 65, 65, 110, 30, 1, 225);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (225, 1, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snorlax-gmax', False, 146);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (160, 110, 65, 65, 110, 30, 8, 226);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (226, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dragonair', 148);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dragonair', True, 147);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 84, 65, 70, 70, 70, 1, 227);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (227, 16, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dragonite', 149);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dragonite', True, 148);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 134, 95, 100, 100, 80, 1, 228);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (228, 16, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (228, 3, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mew', 151);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mew', True, 149);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 1, 229);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (229, 14, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ivysaur', 2);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ivysaur', True, 150);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 62, 63, 80, 80, 60, 1, 230);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (230, 12, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (230, 4, 1);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golem', 76);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golem', True, 151);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 130, 55, 65, 45, 1, 231);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (231, 6, 1);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (231, 5, 1);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golem-alola', False, 151);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 130, 55, 65, 45, 7, 232);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (232, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (232, 13, 7);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chikorita', 152);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chikorita', True, 152);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 49, 65, 49, 65, 45, 2, 233);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (233, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cyndaquil', 155);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cyndaquil', True, 153);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (39, 52, 43, 60, 50, 65, 2, 234);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (234, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('totodile', 158);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('totodile', True, 154);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 64, 44, 48, 43, 2, 235);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (235, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sentret', 161);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sentret', True, 155);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 46, 34, 35, 45, 20, 2, 236);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (236, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hoothoot', 163);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hoothoot', True, 156);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 30, 30, 36, 56, 50, 2, 237);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (237, 1, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (237, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ledyba', 165);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ledyba', True, 157);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 20, 30, 40, 80, 55, 2, 238);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (238, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (238, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spinarak', 167);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spinarak', True, 158);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 60, 40, 40, 40, 30, 2, 239);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (239, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (239, 4, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chinchou', 170);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chinchou', True, 159);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 38, 38, 56, 56, 67, 2, 240);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (240, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (240, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pichu', 172);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pichu', True, 160);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 40, 15, 35, 35, 60, 2, 241);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (241, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cleffa', 173);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cleffa', True, 161);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 25, 28, 45, 55, 15, 2, 242);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (242, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('igglybuff', 174);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('igglybuff', True, 162);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 30, 15, 40, 20, 15, 2, 243);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (243, 1, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (243, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('togepi', 175);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('togepi', True, 163);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 20, 65, 40, 65, 20, 2, 244);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (244, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('natu', 177);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('natu', True, 164);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 50, 45, 70, 45, 70, 2, 245);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (245, 14, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (245, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mareep', 179);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mareep', True, 165);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 40, 40, 65, 45, 35, 2, 246);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (246, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hoppip', 187);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hoppip', True, 166);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 35, 40, 35, 55, 50, 2, 247);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (247, 12, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (247, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aipom', 190);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aipom', True, 167);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 70, 55, 40, 55, 85, 2, 248);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (248, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sunkern', 191);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sunkern', True, 168);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 30, 30, 30, 30, 30, 2, 249);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (249, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yanma', 193);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yanma', True, 169);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 65, 45, 75, 45, 95, 2, 250);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (250, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (250, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wooper', 194);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wooper', True, 170);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 45, 45, 25, 25, 15, 2, 251);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (251, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (251, 5, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wooper-paldea', False, 170);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 45, 45, 25, 25, 15, 9, 252);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (252, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (252, 5, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('murkrow', 198);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('murkrow', True, 171);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 42, 85, 42, 91, 2, 253);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (253, 17, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (253, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('misdreavus', 200);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('misdreavus', True, 172);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 60, 85, 85, 85, 2, 254);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (254, 8, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('unown', 201);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('unown', True, 173);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 72, 48, 72, 48, 48, 2, 255);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (255, 14, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('girafarig', 203);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('girafarig', True, 174);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 80, 65, 90, 65, 85, 2, 256);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (256, 1, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (256, 14, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pineco', 204);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pineco', True, 175);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 90, 35, 35, 15, 2, 257);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (257, 7, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dunsparce', 206);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dunsparce', True, 176);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 70, 70, 65, 65, 45, 2, 258);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (258, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gligar', 207);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gligar', True, 177);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 75, 105, 35, 65, 85, 2, 259);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (259, 5, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (259, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snubbull', 209);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snubbull', True, 178);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 50, 40, 40, 30, 2, 260);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (260, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('qwilfish', 211);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('qwilfish', True, 179);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 95, 85, 55, 55, 85, 2, 261);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (261, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (261, 4, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('qwilfish-hisui', False, 179);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 95, 85, 55, 55, 85, 8, 262);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (262, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (262, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shuckle', 213);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shuckle', True, 180);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 10, 230, 10, 230, 5, 2, 263);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (263, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (263, 6, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('heracross', 214);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('heracross', True, 181);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 125, 75, 40, 95, 85, 2, 264);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (264, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (264, 2, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('heracross-mega', False, 181);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 185, 115, 40, 105, 75, 6, 265);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (265, 7, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (265, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sneasel', 215);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sneasel', True, 182);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 95, 55, 35, 75, 115, 2, 266);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (266, 17, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (266, 15, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sneasel-hisui', False, 182);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 95, 55, 35, 75, 115, 8, 267);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (267, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (267, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('teddiursa', 216);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('teddiursa', True, 183);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 50, 50, 50, 40, 2, 268);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (268, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slugma', 218);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slugma', True, 184);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 40, 70, 40, 20, 2, 269);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (269, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swinub', 220);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swinub', True, 185);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 40, 30, 30, 50, 2, 270);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (270, 15, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (270, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('corsola', 222);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corsola', True, 186);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 55, 95, 65, 95, 35, 2, 271);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (271, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (271, 6, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corsola-galar', False, 186);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 100, 65, 100, 30, 8, 272);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (272, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('remoraid', 223);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('remoraid', True, 187);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 65, 35, 65, 35, 65, 2, 273);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (273, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('delibird', 225);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('delibird', True, 188);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 55, 45, 65, 45, 75, 2, 274);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (274, 15, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (274, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meganium', 154);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meganium', True, 189);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 82, 100, 83, 100, 80, 2, 275);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (275, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quilava', 156);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quilava', True, 190);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 64, 58, 80, 65, 80, 2, 276);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (276, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('typhlosion', 157);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('typhlosion', True, 191);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 84, 78, 109, 85, 100, 2, 277);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (277, 10, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('typhlosion-hisui', False, 191);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 84, 78, 119, 85, 95, 8, 278);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (278, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (278, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('croconaw', 159);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('croconaw', True, 192);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 80, 80, 59, 63, 58, 2, 279);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (279, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('feraligatr', 160);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('feraligatr', True, 193);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 105, 100, 79, 83, 78, 2, 280);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (280, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('furret', 162);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('furret', True, 194);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 76, 64, 45, 55, 90, 2, 281);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (281, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('noctowl', 164);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('noctowl', True, 195);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 50, 50, 86, 96, 70, 2, 282);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (282, 1, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (282, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ledian', 166);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ledian', True, 196);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 35, 50, 55, 110, 85, 2, 283);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (283, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (283, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ariados', 168);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ariados', True, 197);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 70, 60, 70, 40, 2, 284);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (284, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (284, 4, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crobat', 169);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crobat', True, 198);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 90, 80, 70, 80, 130, 2, 285);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (285, 4, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (285, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lanturn', 171);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lanturn', True, 199);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 58, 58, 76, 76, 67, 2, 286);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (286, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (286, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('togetic', 176);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('togetic', True, 200);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 40, 85, 80, 105, 40, 2, 287);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (287, 18, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (287, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('xatu', 178);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('xatu', True, 201);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 75, 70, 95, 70, 95, 2, 288);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (288, 14, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (288, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flaaffy', 180);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flaaffy', True, 202);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 55, 55, 80, 60, 45, 2, 289);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (289, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ampharos', 181);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ampharos', True, 203);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 75, 85, 115, 90, 55, 2, 290);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (290, 13, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ampharos-mega', False, 203);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 95, 105, 165, 110, 45, 6, 291);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (291, 13, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (291, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bellossom', 182);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bellossom', True, 204);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 95, 90, 100, 50, 2, 292);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (292, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('marill', 183);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marill', True, 205);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 20, 50, 20, 50, 40, 2, 293);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (293, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (293, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('azumarill', 184);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('azumarill', True, 206);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 50, 80, 60, 80, 50, 2, 294);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (294, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (294, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sudowoodo', 185);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sudowoodo', True, 207);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 100, 115, 30, 65, 30, 2, 295);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (295, 6, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('politoed', 186);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('politoed', True, 208);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 75, 75, 90, 100, 70, 2, 296);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (296, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skiploom', 188);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skiploom', True, 209);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 45, 50, 45, 65, 80, 2, 297);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (297, 12, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (297, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jumpluff', 189);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jumpluff', True, 210);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 55, 70, 55, 95, 110, 2, 298);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (298, 12, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (298, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sunflora', 192);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sunflora', True, 211);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 75, 55, 105, 85, 30, 2, 299);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (299, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quagsire', 195);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quagsire', True, 212);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 85, 85, 65, 65, 35, 2, 300);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (300, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (300, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('espeon', 196);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('espeon', True, 213);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 65, 60, 130, 95, 110, 2, 301);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (301, 14, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('umbreon', 197);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('umbreon', True, 214);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 65, 110, 60, 130, 65, 2, 302);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (302, 17, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slowking', 199);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowking', True, 215);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 75, 80, 100, 110, 30, 2, 303);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (303, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (303, 14, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slowking-galar', False, 215);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 65, 80, 110, 110, 30, 8, 304);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (304, 4, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (304, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wobbuffet', 202);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wobbuffet', True, 216);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (190, 33, 58, 33, 58, 33, 2, 305);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (305, 14, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('forretress', 205);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('forretress', True, 217);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 90, 140, 60, 60, 40, 2, 306);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (306, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (306, 9, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('steelix', 208);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('steelix', True, 218);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 85, 200, 55, 65, 30, 2, 307);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (307, 9, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (307, 5, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('steelix-mega', False, 218);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 230, 55, 95, 30, 6, 308);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (308, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (308, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('granbull', 210);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('granbull', True, 219);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 120, 75, 60, 60, 45, 2, 309);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (309, 18, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scizor', 212);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scizor', True, 220);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 130, 100, 55, 80, 65, 2, 310);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (310, 7, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (310, 9, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scizor-mega', False, 220);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 150, 140, 65, 100, 75, 6, 311);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (311, 7, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (311, 9, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ursaring', 217);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ursaring', True, 221);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 130, 75, 75, 75, 55, 2, 312);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (312, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magcargo', 219);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magcargo', True, 222);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 120, 90, 80, 30, 2, 313);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (313, 10, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (313, 6, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('piloswine', 221);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('piloswine', True, 223);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 80, 60, 60, 50, 2, 314);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (314, 15, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (314, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('octillery', 224);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('octillery', True, 224);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 105, 75, 105, 75, 45, 2, 315);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (315, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skarmory', 227);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skarmory', True, 225);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 80, 140, 40, 70, 70, 2, 316);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (316, 9, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (316, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('houndour', 228);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('houndour', True, 226);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 60, 30, 80, 50, 65, 2, 317);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (317, 17, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (317, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('phanpy', 231);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('phanpy', True, 227);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 60, 60, 40, 40, 40, 2, 318);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (318, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stantler', 234);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stantler', True, 228);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 95, 62, 85, 65, 85, 2, 319);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (319, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('smeargle', 235);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('smeargle', True, 229);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 20, 35, 20, 45, 75, 2, 320);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (320, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tyrogue', 236);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tyrogue', True, 230);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 35, 35, 35, 35, 35, 2, 321);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (321, 2, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('smoochum', 238);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('smoochum', True, 231);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 15, 85, 65, 65, 2, 322);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (322, 15, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (322, 14, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('elekid', 239);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('elekid', True, 232);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 63, 37, 65, 55, 95, 2, 323);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (323, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magby', 240);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magby', True, 233);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 75, 37, 70, 55, 83, 2, 324);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (324, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('miltank', 241);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miltank', True, 234);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 80, 105, 40, 70, 100, 2, 325);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (325, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('raikou', 243);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raikou', True, 235);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 85, 75, 115, 100, 115, 2, 326);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (326, 13, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('entei', 244);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('entei', True, 236);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 115, 85, 90, 75, 100, 2, 327);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (327, 10, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('suicune', 245);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('suicune', True, 237);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 75, 115, 90, 115, 85, 2, 328);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (328, 11, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('larvitar', 246);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('larvitar', True, 238);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 64, 50, 45, 50, 41, 2, 329);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (329, 6, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (329, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lugia', 249);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lugia', True, 239);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 90, 130, 90, 154, 110, 2, 330);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (330, 14, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (330, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ho-oh', 250);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ho-oh', True, 240);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 130, 90, 110, 154, 90, 2, 331);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (331, 10, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (331, 3, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('celebi', 251);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('celebi', True, 241);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 2, 332);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (332, 14, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (332, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('houndoom', 229);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('houndoom', True, 242);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 90, 50, 110, 80, 95, 2, 333);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (333, 17, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (333, 10, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('houndoom-mega', False, 242);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 90, 90, 140, 90, 115, 6, 334);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (334, 17, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (334, 10, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kingdra', 230);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kingdra', True, 243);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 95, 95, 95, 95, 85, 2, 335);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (335, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (335, 16, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('donphan', 232);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('donphan', True, 244);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 120, 120, 60, 60, 50, 2, 336);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (336, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('porygon2', 233);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('porygon2', True, 245);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 80, 90, 105, 95, 60, 2, 337);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (337, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hitmontop', 237);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hitmontop', True, 246);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 95, 95, 35, 110, 70, 2, 338);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (338, 2, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blissey', 242);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blissey', True, 247);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (255, 10, 10, 75, 135, 55, 2, 339);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (339, 1, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pupitar', 247);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pupitar', True, 248);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 84, 70, 65, 70, 51, 2, 340);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (340, 6, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (340, 5, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tyranitar', 248);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tyranitar', True, 249);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 134, 110, 95, 100, 61, 2, 341);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (341, 6, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (341, 17, 2);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tyranitar-mega', False, 249);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 164, 150, 95, 120, 71, 6, 342);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (342, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (342, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bayleef', 153);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bayleef', True, 250);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 62, 80, 63, 80, 60, 2, 343);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (343, 12, 2);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mantine', 226);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mantine', True, 251);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 40, 70, 80, 140, 70, 2, 344);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (344, 11, 2);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (344, 3, 2);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('treecko', 252);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('treecko', True, 252);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 35, 65, 55, 70, 3, 345);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (345, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('torchic', 255);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('torchic', True, 253);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 60, 40, 70, 50, 45, 3, 346);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (346, 10, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mudkip', 258);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mudkip', True, 254);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 70, 50, 50, 50, 40, 3, 347);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (347, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poochyena', 261);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poochyena', True, 255);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 35, 30, 30, 35, 3, 348);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (348, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zigzagoon', 263);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zigzagoon', True, 256);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 30, 41, 30, 41, 60, 3, 349);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (349, 1, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zigzagoon-galar', False, 256);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 30, 41, 30, 41, 60, 8, 350);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (350, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (350, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wurmple', 265);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wurmple', True, 257);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 45, 35, 20, 30, 20, 3, 351);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (351, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lotad', 270);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lotad', True, 258);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 30, 40, 50, 30, 3, 352);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (352, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (352, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seedot', 273);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seedot', True, 259);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 50, 30, 30, 30, 3, 353);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (353, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('taillow', 276);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('taillow', True, 260);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 30, 30, 30, 85, 3, 354);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (354, 1, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (354, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wingull', 278);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wingull', True, 261);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 30, 55, 30, 85, 3, 355);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (355, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (355, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ralts', 280);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ralts', True, 262);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (28, 25, 25, 45, 35, 40, 3, 356);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (356, 14, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (356, 18, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('surskit', 283);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('surskit', True, 263);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 32, 50, 52, 65, 3, 357);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (357, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (357, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shroomish', 285);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shroomish', True, 264);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 40, 60, 40, 60, 35, 3, 358);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (358, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slakoth', 287);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slakoth', True, 265);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 60, 35, 35, 30, 3, 359);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (359, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nincada', 290);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nincada', True, 266);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (31, 45, 90, 30, 30, 40, 3, 360);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (360, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (360, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('whismur', 293);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('whismur', True, 267);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 51, 23, 51, 23, 28, 3, 361);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (361, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('makuhita', 296);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('makuhita', True, 268);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 60, 30, 20, 30, 25, 3, 362);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (362, 2, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('azurill', 298);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('azurill', True, 269);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 20, 40, 20, 40, 20, 3, 363);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (363, 1, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (363, 18, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nosepass', 299);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nosepass', True, 270);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 45, 135, 45, 90, 30, 3, 364);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (364, 6, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skitty', 300);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skitty', True, 271);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 45, 45, 35, 35, 50, 3, 365);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (365, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grovyle', 253);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grovyle', True, 272);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 45, 85, 65, 95, 3, 366);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (366, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sceptile', 254);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sceptile', True, 273);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 65, 105, 85, 120, 3, 367);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (367, 12, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sceptile-mega', False, 273);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 75, 145, 85, 145, 6, 368);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (368, 12, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (368, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('combusken', 256);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('combusken', True, 274);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 60, 85, 60, 55, 3, 369);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (369, 10, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (369, 2, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blaziken', 257);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blaziken', True, 275);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 70, 110, 70, 80, 3, 370);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (370, 10, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (370, 2, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blaziken-mega', False, 275);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 160, 80, 130, 80, 100, 6, 371);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (371, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (371, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('marshtomp', 259);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marshtomp', True, 276);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 70, 60, 70, 50, 3, 372);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (372, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (372, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swampert', 260);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swampert', True, 277);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 110, 90, 85, 90, 60, 3, 373);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (373, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (373, 5, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swampert-mega', False, 277);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 150, 110, 95, 110, 70, 6, 374);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (374, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (374, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mightyena', 262);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mightyena', True, 278);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 70, 60, 60, 70, 3, 375);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (375, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('linoone', 264);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('linoone', True, 279);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 70, 61, 50, 61, 100, 3, 376);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (376, 1, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('linoone-galar', False, 279);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 70, 61, 50, 61, 100, 8, 377);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (377, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (377, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('silcoon', 266);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('silcoon', True, 280);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 35, 55, 25, 25, 15, 3, 378);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (378, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('beautifly', 267);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beautifly', True, 281);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 70, 50, 100, 50, 65, 3, 379);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (379, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (379, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cascoon', 268);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cascoon', True, 282);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 35, 55, 25, 25, 15, 3, 380);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (380, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dustox', 269);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dustox', True, 283);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 70, 50, 90, 65, 3, 381);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (381, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (381, 4, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lombre', 271);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lombre', True, 284);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 50, 60, 70, 50, 3, 382);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (382, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (382, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ludicolo', 272);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ludicolo', True, 285);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 70, 70, 90, 100, 70, 3, 383);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (383, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (383, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nuzleaf', 274);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nuzleaf', True, 286);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 40, 60, 40, 60, 3, 384);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (384, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (384, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shiftry', 275);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shiftry', True, 287);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 60, 90, 60, 80, 3, 385);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (385, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (385, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swellow', 277);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swellow', True, 288);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 60, 75, 50, 125, 3, 386);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (386, 1, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (386, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pelipper', 279);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pelipper', True, 289);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 100, 95, 70, 65, 3, 387);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (387, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (387, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kirlia', 281);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kirlia', True, 290);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 35, 35, 65, 55, 50, 3, 388);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (388, 14, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (388, 18, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gardevoir', 282);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gardevoir', True, 291);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 65, 65, 125, 115, 80, 3, 389);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (389, 14, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (389, 18, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gardevoir-mega', False, 291);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 85, 65, 165, 135, 100, 6, 390);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (390, 14, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (390, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('masquerain', 284);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('masquerain', True, 292);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 60, 62, 100, 82, 80, 3, 391);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (391, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (391, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('breloom', 286);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('breloom', True, 293);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 130, 80, 60, 60, 70, 3, 392);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (392, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (392, 2, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vigoroth', 288);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vigoroth', True, 294);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 80, 55, 55, 90, 3, 393);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (393, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slaking', 289);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slaking', True, 295);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (150, 160, 100, 95, 65, 100, 3, 394);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (394, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ninjask', 291);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ninjask', True, 296);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 90, 45, 50, 50, 160, 3, 395);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (395, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (395, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shedinja', 292);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shedinja', True, 297);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (1, 90, 45, 30, 30, 40, 3, 396);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (396, 7, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (396, 8, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('loudred', 294);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('loudred', True, 298);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (84, 71, 43, 71, 43, 48, 3, 397);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (397, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('exploud', 295);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('exploud', True, 299);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (104, 91, 63, 91, 73, 68, 3, 398);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (398, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hariyama', 297);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hariyama', True, 300);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (144, 120, 60, 40, 60, 50, 3, 399);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (399, 2, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sableye', 302);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sableye', True, 301);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 75, 65, 65, 50, 3, 400);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (400, 17, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (400, 8, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sableye-mega', False, 301);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 85, 125, 85, 115, 20, 6, 401);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (401, 17, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (401, 8, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mawile', 303);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mawile', True, 302);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 85, 85, 55, 55, 50, 3, 402);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (402, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (402, 18, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mawile-mega', False, 302);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 105, 125, 55, 95, 50, 6, 403);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (403, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (403, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aron', 304);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aron', True, 303);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 70, 100, 40, 40, 30, 3, 404);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (404, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (404, 6, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meditite', 307);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meditite', True, 304);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 40, 55, 40, 55, 60, 3, 405);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (405, 2, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (405, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('electrike', 309);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('electrike', True, 305);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 40, 65, 40, 65, 3, 406);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (406, 13, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('plusle', 311);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('plusle', True, 306);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 40, 85, 75, 95, 3, 407);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (407, 13, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('minun', 312);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minun', True, 307);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 40, 50, 75, 85, 95, 3, 408);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (408, 13, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('volbeat', 313);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('volbeat', True, 308);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 73, 75, 47, 85, 85, 3, 409);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (409, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('illumise', 314);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('illumise', True, 309);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 47, 75, 73, 85, 85, 3, 410);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (410, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gulpin', 316);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gulpin', True, 310);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 43, 53, 43, 53, 40, 3, 411);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (411, 4, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('carvanha', 318);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('carvanha', True, 311);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 90, 20, 65, 20, 65, 3, 412);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (412, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (412, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wailmer', 320);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wailmer', True, 312);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 70, 35, 70, 35, 60, 3, 413);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (413, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('numel', 322);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('numel', True, 313);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 40, 65, 45, 35, 3, 414);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (414, 10, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (414, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('torkoal', 324);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('torkoal', True, 314);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 140, 85, 70, 20, 3, 415);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (415, 10, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spoink', 325);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spoink', True, 315);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 25, 35, 70, 80, 60, 3, 416);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (416, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spinda', 327);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spinda', True, 316);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 60, 60, 60, 60, 3, 417);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (417, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('trapinch', 328);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('trapinch', True, 317);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 100, 45, 45, 45, 10, 3, 418);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (418, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cacnea', 331);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cacnea', True, 318);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 85, 40, 85, 40, 35, 3, 419);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (419, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swablu', 333);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swablu', True, 319);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 40, 60, 40, 75, 50, 3, 420);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (420, 1, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (420, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zangoose', 335);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zangoose', True, 320);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 115, 60, 60, 60, 90, 3, 421);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (421, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seviper', 336);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seviper', True, 321);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 100, 60, 100, 60, 65, 3, 422);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (422, 4, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lunatone', 337);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lunatone', True, 322);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 55, 65, 95, 85, 70, 3, 423);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (423, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (423, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('solrock', 338);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('solrock', True, 323);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 95, 85, 55, 65, 70, 3, 424);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (424, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (424, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('barboach', 339);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('barboach', True, 324);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 48, 43, 46, 41, 60, 3, 425);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (425, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (425, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('corphish', 341);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corphish', True, 325);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (43, 80, 65, 50, 35, 35, 3, 426);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (426, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('baltoy', 343);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('baltoy', True, 326);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 55, 40, 70, 55, 3, 427);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (427, 5, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (427, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lileep', 345);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lileep', True, 327);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (66, 41, 77, 61, 87, 23, 3, 428);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (428, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (428, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('anorith', 347);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('anorith', True, 328);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 95, 50, 40, 50, 75, 3, 429);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (429, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (429, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('feebas', 349);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('feebas', True, 329);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 15, 20, 10, 55, 80, 3, 430);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (430, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('castform', 351);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('castform', True, 330);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 70, 70, 70, 70, 3, 431);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (431, 1, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('castform-sunny', False, 330);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 70, 70, 70, 70, 3, 432);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (432, 10, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('castform-rainy', False, 330);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 70, 70, 70, 70, 3, 433);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (433, 11, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('castform-snowy', False, 330);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 70, 70, 70, 70, 3, 434);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (434, 15, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kecleon', 352);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kecleon', True, 331);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 90, 70, 60, 120, 40, 3, 435);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (435, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shuppet', 353);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shuppet', True, 332);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 75, 35, 63, 33, 45, 3, 436);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (436, 8, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('duskull', 355);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('duskull', True, 333);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 40, 90, 30, 90, 25, 3, 437);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (437, 8, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tropius', 357);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tropius', True, 334);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (99, 68, 83, 72, 87, 51, 3, 438);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (438, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (438, 3, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('absol', 359);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('absol', True, 335);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 130, 60, 75, 60, 75, 3, 439);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (439, 17, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('absol-mega', False, 335);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 150, 60, 115, 60, 115, 6, 440);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (440, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wynaut', 360);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wynaut', True, 336);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 23, 48, 23, 48, 23, 3, 441);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (441, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snorunt', 361);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snorunt', True, 337);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 50, 50, 50, 50, 3, 442);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (442, 15, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spheal', 363);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spheal', True, 338);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 40, 50, 55, 50, 25, 3, 443);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (443, 15, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (443, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clamperl', 366);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clamperl', True, 339);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 64, 85, 74, 55, 32, 3, 444);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (444, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('relicanth', 369);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('relicanth', True, 340);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 90, 130, 45, 65, 55, 3, 445);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (445, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (445, 6, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('luvdisc', 370);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('luvdisc', True, 341);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (43, 30, 55, 40, 65, 97, 3, 446);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (446, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bagon', 371);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bagon', True, 342);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 75, 60, 40, 30, 50, 3, 447);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (447, 16, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('beldum', 374);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beldum', True, 343);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 80, 35, 60, 30, 3, 448);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (448, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (448, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lairon', 305);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lairon', True, 344);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 90, 140, 50, 50, 40, 3, 449);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (449, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (449, 6, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aggron', 306);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aggron', True, 345);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 180, 60, 60, 50, 3, 450);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (450, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (450, 6, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aggron-mega', False, 345);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 140, 230, 60, 80, 50, 6, 451);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (451, 9, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('medicham', 308);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('medicham', True, 346);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 75, 60, 75, 80, 3, 452);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (452, 2, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (452, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('medicham-mega', False, 346);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 85, 80, 85, 100, 6, 453);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (453, 2, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (453, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('manectric', 310);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('manectric', True, 347);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 75, 60, 105, 60, 105, 3, 454);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (454, 13, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('manectric-mega', False, 347);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 75, 80, 135, 80, 135, 6, 455);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (455, 13, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('roselia', 315);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('roselia', True, 348);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 60, 45, 100, 80, 65, 3, 456);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (456, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (456, 4, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swalot', 317);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swalot', True, 349);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 73, 83, 73, 83, 55, 3, 457);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (457, 4, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sharpedo', 319);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sharpedo', True, 350);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 120, 40, 95, 40, 95, 3, 458);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (458, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (458, 17, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sharpedo-mega', False, 350);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 140, 70, 110, 65, 105, 6, 459);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (459, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (459, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wailord', 321);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wailord', True, 351);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (170, 90, 45, 90, 45, 60, 3, 460);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (460, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('camerupt', 323);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('camerupt', True, 352);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 100, 70, 105, 75, 40, 3, 461);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (461, 10, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (461, 5, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('camerupt-mega', False, 352);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 120, 100, 145, 105, 20, 6, 462);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (462, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (462, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grumpig', 326);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grumpig', True, 353);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 45, 65, 90, 110, 80, 3, 463);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (463, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vibrava', 329);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vibrava', True, 354);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 70, 50, 50, 50, 70, 3, 464);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (464, 5, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (464, 16, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flygon', 330);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flygon', True, 355);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 80, 80, 80, 100, 3, 465);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (465, 5, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (465, 16, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cacturne', 332);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cacturne', True, 356);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 115, 60, 115, 60, 55, 3, 466);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (466, 12, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (466, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('altaria', 334);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('altaria', True, 357);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 70, 90, 70, 105, 80, 3, 467);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (467, 16, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (467, 3, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('altaria-mega', False, 357);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 110, 110, 105, 80, 6, 468);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (468, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (468, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('whiscash', 340);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('whiscash', True, 358);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 78, 73, 76, 71, 60, 3, 469);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (469, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (469, 5, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crawdaunt', 342);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crawdaunt', True, 359);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (63, 120, 85, 90, 55, 55, 3, 470);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (470, 11, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (470, 17, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('claydol', 344);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('claydol', True, 360);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 70, 105, 70, 120, 75, 3, 471);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (471, 5, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (471, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cradily', 346);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cradily', True, 361);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (86, 81, 97, 81, 107, 43, 3, 472);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (472, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (472, 12, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('armaldo', 348);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('armaldo', True, 362);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 100, 70, 80, 45, 3, 473);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (473, 6, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (473, 7, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('milotic', 350);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('milotic', True, 363);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 60, 79, 100, 125, 81, 3, 474);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (474, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('banette', 354);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('banette', True, 364);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 115, 65, 83, 63, 65, 3, 475);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (475, 8, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('banette-mega', False, 364);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 165, 75, 93, 83, 75, 6, 476);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (476, 8, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dusclops', 356);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dusclops', True, 365);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 70, 130, 60, 130, 25, 3, 477);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (477, 8, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chimecho', 358);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chimecho', True, 366);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 50, 80, 95, 90, 65, 3, 478);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (478, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glalie', 362);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glalie', True, 367);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 80, 80, 80, 80, 3, 479);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (479, 15, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glalie-mega', False, 367);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 80, 120, 80, 100, 6, 480);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (480, 15, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sealeo', 364);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sealeo', True, 368);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 60, 70, 75, 70, 45, 3, 481);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (481, 15, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (481, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('walrein', 365);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('walrein', True, 369);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 80, 90, 95, 90, 65, 3, 482);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (482, 15, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (482, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('huntail', 367);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('huntail', True, 370);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 104, 105, 94, 75, 52, 3, 483);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (483, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gorebyss', 368);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gorebyss', True, 371);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 84, 105, 114, 75, 52, 3, 484);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (484, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shelgon', 372);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shelgon', True, 372);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 95, 100, 60, 50, 50, 3, 485);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (485, 16, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('salamence', 373);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('salamence', True, 373);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 135, 80, 110, 80, 100, 3, 486);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (486, 16, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (486, 3, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('salamence-mega', False, 373);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 145, 130, 120, 90, 120, 6, 487);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (487, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (487, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('metang', 375);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('metang', True, 374);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 75, 100, 55, 80, 50, 3, 488);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (488, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (488, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('regirock', 377);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('regirock', True, 375);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 200, 50, 100, 50, 3, 489);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (489, 6, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('regice', 378);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('regice', True, 376);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 50, 100, 100, 200, 50, 3, 490);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (490, 15, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('registeel', 379);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('registeel', True, 377);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 75, 150, 75, 150, 50, 3, 491);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (491, 9, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('latias', 380);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('latias', True, 378);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 90, 110, 130, 110, 3, 492);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (492, 16, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (492, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('latias-mega', False, 378);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 120, 140, 150, 110, 6, 493);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (493, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (493, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('latios', 381);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('latios', True, 379);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 90, 80, 130, 110, 110, 3, 494);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (494, 16, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (494, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('latios-mega', False, 379);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 130, 100, 160, 120, 110, 6, 495);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (495, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (495, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kyogre', 382);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kyogre', True, 380);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 90, 150, 140, 90, 3, 496);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (496, 11, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kyogre-primal', False, 380);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 150, 90, 180, 160, 90, 3, 497);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (497, 11, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('groudon', 383);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('groudon', True, 381);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 150, 140, 100, 90, 90, 3, 498);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (498, 5, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('groudon-primal', False, 381);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 180, 160, 150, 90, 90, 3, 499);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (499, 5, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (499, 10, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rayquaza', 384);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rayquaza', True, 382);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 150, 90, 150, 90, 95, 3, 500);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (500, 16, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (500, 3, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rayquaza-mega', False, 382);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 180, 100, 180, 100, 115, 6, 501);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (501, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (501, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jirachi', 385);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jirachi', True, 383);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 3, 502);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (502, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (502, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('deoxys', 386);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deoxys-normal', False, 384);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 150, 50, 150, 50, 150, 3, 503);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (503, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deoxys-attack', False, 384);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 180, 20, 180, 20, 150, 3, 504);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (504, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deoxys-defense', False, 384);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 70, 160, 70, 160, 90, 3, 505);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (505, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deoxys-speed', False, 384);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 95, 90, 95, 90, 180, 3, 506);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (506, 14, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('delcatty', 301);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('delcatty', True, 385);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 65, 65, 55, 55, 90, 3, 507);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (507, 1, 3);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('metagross', 376);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('metagross', True, 386);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 135, 130, 95, 90, 70, 3, 508);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (508, 9, 3);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (508, 14, 3);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('metagross-mega', False, 386);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 145, 150, 105, 110, 110, 6, 509);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (509, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (509, 14, 6);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('turtwig', 387);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('turtwig', True, 387);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 68, 64, 45, 55, 31, 4, 510);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (510, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chimchar', 390);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chimchar', True, 388);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 58, 44, 58, 44, 61, 4, 511);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (511, 10, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('piplup', 393);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('piplup', True, 389);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (53, 51, 53, 61, 56, 40, 4, 512);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (512, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('starly', 396);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('starly', True, 390);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 30, 30, 30, 60, 4, 513);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (513, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (513, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bidoof', 399);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bidoof', True, 391);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 45, 40, 35, 40, 31, 4, 514);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (514, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kricketot', 401);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kricketot', True, 392);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (37, 25, 41, 25, 41, 25, 4, 515);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (515, 7, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shinx', 403);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shinx', True, 393);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 65, 34, 40, 34, 45, 4, 516);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (516, 13, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('budew', 406);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('budew', True, 394);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 35, 50, 70, 55, 4, 517);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (517, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (517, 4, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cranidos', 408);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cranidos', True, 395);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 125, 40, 30, 30, 58, 4, 518);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (518, 6, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shieldon', 410);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shieldon', True, 396);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 42, 118, 42, 88, 30, 4, 519);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (519, 6, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (519, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('burmy', 412);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('burmy', True, 397);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 29, 45, 29, 45, 36, 4, 520);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (520, 7, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('combee', 415);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('combee', True, 398);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 30, 42, 30, 42, 70, 4, 521);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (521, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (521, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pachirisu', 417);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pachirisu', True, 399);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 70, 45, 90, 95, 4, 522);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (522, 13, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('buizel', 418);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('buizel', True, 400);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 65, 35, 60, 30, 85, 4, 523);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (523, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cherubi', 420);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cherubi', True, 401);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 35, 45, 62, 53, 35, 4, 524);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (524, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shellos', 422);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shellos', True, 402);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 48, 48, 57, 62, 34, 4, 525);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (525, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drifloon', 425);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drifloon', True, 403);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 50, 34, 60, 44, 70, 4, 526);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (526, 8, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (526, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('buneary', 427);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('buneary', True, 404);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 66, 44, 44, 56, 85, 4, 527);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (527, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glameow', 431);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glameow', True, 405);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (49, 55, 42, 42, 37, 85, 4, 528);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (528, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chingling', 433);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chingling', True, 406);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 50, 65, 50, 45, 4, 529);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (529, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stunky', 434);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stunky', True, 407);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (63, 63, 47, 41, 41, 74, 4, 530);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (530, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (530, 17, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bronzor', 436);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bronzor', True, 408);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 24, 86, 24, 86, 23, 4, 531);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (531, 9, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (531, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bonsly', 438);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bonsly', True, 409);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 80, 95, 10, 45, 10, 4, 532);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (532, 6, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mime-jr', 439);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mime-jr', True, 410);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (20, 25, 45, 70, 90, 60, 4, 533);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (533, 14, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (533, 18, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('happiny', 440);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('happiny', True, 411);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 5, 5, 15, 65, 30, 4, 534);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (534, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chatot', 441);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chatot', True, 412);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 65, 45, 92, 42, 91, 4, 535);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (535, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (535, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spiritomb', 442);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spiritomb', True, 413);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 92, 108, 92, 108, 35, 4, 536);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (536, 8, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (536, 17, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gible', 443);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gible', True, 414);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 70, 45, 40, 45, 42, 4, 537);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (537, 16, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (537, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('munchlax', 446);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('munchlax', True, 415);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (135, 85, 40, 40, 85, 5, 4, 538);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (538, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('riolu', 447);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('riolu', True, 416);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 70, 40, 35, 40, 60, 4, 539);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (539, 2, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hippopotas', 449);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hippopotas', True, 417);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 72, 78, 38, 42, 32, 4, 540);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (540, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skorupi', 451);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skorupi', True, 418);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 50, 90, 30, 55, 65, 4, 541);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (541, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (541, 7, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('croagunk', 453);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('croagunk', True, 419);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 61, 40, 61, 40, 50, 4, 542);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (542, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (542, 2, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grotle', 388);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grotle', True, 420);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 89, 85, 55, 65, 36, 4, 543);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (543, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('torterra', 389);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('torterra', True, 421);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 109, 105, 75, 85, 56, 4, 544);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (544, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (544, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('infernape', 392);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('infernape', True, 422);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 104, 71, 104, 71, 108, 4, 545);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (545, 10, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (545, 2, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('prinplup', 394);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('prinplup', True, 423);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 66, 68, 81, 76, 50, 4, 546);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (546, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('empoleon', 395);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('empoleon', True, 424);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (84, 86, 88, 111, 101, 60, 4, 547);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (547, 11, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (547, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('staravia', 397);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('staravia', True, 425);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 75, 50, 40, 40, 80, 4, 548);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (548, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (548, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('staraptor', 398);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('staraptor', True, 426);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 120, 70, 50, 60, 100, 4, 549);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (549, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (549, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bibarel', 400);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bibarel', True, 427);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 85, 60, 55, 60, 71, 4, 550);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (550, 1, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (550, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kricketune', 402);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kricketune', True, 428);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (77, 85, 51, 55, 51, 65, 4, 551);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (551, 7, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('luxio', 404);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('luxio', True, 429);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 49, 60, 49, 60, 4, 552);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (552, 13, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('luxray', 405);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('luxray', True, 430);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 79, 95, 79, 70, 4, 553);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (553, 13, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('roserade', 407);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('roserade', True, 431);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 70, 65, 125, 105, 90, 4, 554);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (554, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (554, 4, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rampardos', 409);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rampardos', True, 432);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 165, 60, 65, 50, 58, 4, 555);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (555, 6, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bastiodon', 411);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bastiodon', True, 433);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 52, 168, 47, 138, 30, 4, 556);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (556, 6, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (556, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wormadam', 413);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wormadam-plant', False, 434);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 59, 85, 79, 105, 36, 4, 557);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (557, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (557, 12, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wormadam-sandy', False, 434);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 79, 105, 59, 85, 36, 4, 558);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (558, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (558, 5, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wormadam-trash', False, 434);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 69, 95, 69, 95, 36, 4, 559);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (559, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (559, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mothim', 414);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mothim', True, 435);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 94, 50, 94, 50, 66, 4, 560);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (560, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (560, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vespiquen', 416);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vespiquen', True, 436);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 80, 102, 80, 102, 40, 4, 561);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (561, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (561, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('floatzel', 419);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('floatzel', True, 437);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 105, 55, 85, 50, 115, 4, 562);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (562, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cherrim', 421);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cherrim', True, 438);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 60, 70, 87, 78, 85, 4, 563);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (563, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ambipom', 424);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ambipom', True, 439);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 100, 66, 60, 66, 115, 4, 564);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (564, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drifblim', 426);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drifblim', True, 440);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (150, 80, 44, 90, 54, 80, 4, 565);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (565, 8, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (565, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lopunny', 428);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lopunny', True, 441);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 76, 84, 54, 96, 105, 4, 566);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (566, 1, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lopunny-mega', False, 441);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 136, 94, 54, 96, 135, 6, 567);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (567, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (567, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mismagius', 429);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mismagius', True, 442);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 60, 105, 105, 105, 4, 568);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (568, 8, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('honchkrow', 430);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('honchkrow', True, 443);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 125, 52, 105, 52, 71, 4, 569);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (569, 17, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (569, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('purugly', 432);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('purugly', True, 444);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 82, 64, 64, 59, 112, 4, 570);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (570, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skuntank', 435);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skuntank', True, 445);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (103, 93, 67, 71, 61, 84, 4, 571);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (571, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (571, 17, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bronzong', 437);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bronzong', True, 446);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 89, 116, 79, 116, 33, 4, 572);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (572, 9, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (572, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gabite', 444);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gabite', True, 447);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 90, 65, 50, 55, 82, 4, 573);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (573, 16, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (573, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('garchomp', 445);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('garchomp', True, 448);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 130, 95, 80, 85, 102, 4, 574);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (574, 16, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (574, 5, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('garchomp-mega', False, 448);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 170, 115, 120, 95, 92, 6, 575);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (575, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (575, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lucario', 448);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lucario', True, 449);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 70, 115, 70, 90, 4, 576);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (576, 2, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (576, 9, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lucario-mega', False, 449);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 145, 88, 140, 70, 112, 6, 577);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (577, 2, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (577, 9, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hippowdon', 450);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hippowdon', True, 450);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 112, 118, 68, 72, 47, 4, 578);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (578, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drapion', 452);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drapion', True, 451);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 110, 60, 75, 95, 4, 579);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (579, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (579, 17, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('carnivine', 455);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('carnivine', True, 452);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 100, 72, 90, 72, 46, 4, 580);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (580, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('finneon', 456);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('finneon', True, 453);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (49, 49, 56, 49, 61, 66, 4, 581);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (581, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mantyke', 458);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mantyke', True, 454);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 20, 50, 60, 120, 50, 4, 582);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (582, 11, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (582, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snover', 459);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snover', True, 455);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 62, 50, 62, 60, 40, 4, 583);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (583, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (583, 15, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rotom', 479);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom', True, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 77, 95, 77, 91, 4, 584);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (584, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (584, 8, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom-heat', False, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 107, 105, 107, 86, 4, 585);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (585, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (585, 10, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom-wash', False, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 107, 105, 107, 86, 4, 586);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (586, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (586, 11, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom-frost', False, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 107, 105, 107, 86, 4, 587);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (587, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (587, 15, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom-fan', False, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 107, 105, 107, 86, 4, 588);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (588, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (588, 3, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rotom-mow', False, 456);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 107, 105, 107, 86, 4, 589);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (589, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (589, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('uxie', 480);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('uxie', True, 457);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 75, 130, 75, 130, 95, 4, 590);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (590, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mesprit', 481);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mesprit', True, 458);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 105, 105, 105, 105, 80, 4, 591);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (591, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('azelf', 482);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('azelf', True, 459);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 70, 125, 70, 115, 4, 592);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (592, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dialga', 483);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dialga', True, 460);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 120, 120, 150, 100, 90, 4, 593);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (593, 9, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (593, 16, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dialga-origin', False, 460);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 120, 150, 120, 90, 4, 594);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (594, 9, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (594, 16, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('palkia', 484);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palkia', True, 461);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 120, 100, 150, 120, 100, 4, 595);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (595, 11, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (595, 16, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palkia-origin', False, 461);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 100, 150, 120, 120, 4, 596);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (596, 11, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (596, 16, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('heatran', 485);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('heatran', True, 462);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 90, 106, 130, 106, 77, 4, 597);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (597, 10, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (597, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('regigigas', 486);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('regigigas', True, 463);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 160, 110, 80, 110, 100, 4, 598);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (598, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('giratina', 487);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('giratina-altered', False, 464);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (150, 100, 120, 100, 120, 90, 4, 599);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (599, 8, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (599, 16, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('giratina-origin', False, 464);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (150, 120, 100, 120, 100, 90, 4, 600);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (600, 8, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (600, 16, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cresselia', 488);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cresselia', True, 465);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 70, 110, 75, 120, 85, 4, 601);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (601, 14, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('phione', 489);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('phione', True, 466);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 80, 80, 80, 80, 4, 602);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (602, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('manaphy', 490);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('manaphy', True, 467);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 4, 603);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (603, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('darkrai', 491);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darkrai', True, 468);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 90, 135, 90, 125, 4, 604);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (604, 17, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shaymin', 492);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shaymin-land', False, 469);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 4, 605);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (605, 12, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shaymin-sky', False, 469);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 103, 75, 120, 75, 127, 4, 606);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (606, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (606, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arceus', 493);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arceus', True, 470);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 120, 120, 120, 120, 120, 4, 607);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (607, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lumineon', 457);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lumineon', True, 471);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (69, 69, 76, 69, 86, 91, 4, 608);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (608, 11, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('abomasnow', 460);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('abomasnow', True, 472);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 92, 75, 92, 85, 60, 4, 609);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (609, 12, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (609, 15, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('abomasnow-mega', False, 472);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 132, 105, 132, 105, 30, 6, 610);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (610, 12, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (610, 15, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('weavile', 461);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('weavile', True, 473);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 120, 65, 45, 85, 125, 4, 611);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (611, 17, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (611, 15, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magnezone', 462);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magnezone', True, 474);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 115, 130, 90, 60, 4, 612);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (612, 13, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (612, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lickilicky', 463);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lickilicky', True, 475);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 85, 95, 80, 95, 50, 4, 613);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (613, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rhyperior', 464);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rhyperior', True, 476);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 140, 130, 55, 55, 40, 4, 614);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (614, 5, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (614, 6, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tangrowth', 465);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tangrowth', True, 477);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 125, 110, 50, 50, 4, 615);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (615, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('electivire', 466);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('electivire', True, 478);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 123, 67, 95, 85, 95, 4, 616);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (616, 13, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magmortar', 467);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magmortar', True, 479);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 95, 67, 125, 95, 83, 4, 617);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (617, 10, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('togekiss', 468);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('togekiss', True, 480);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 50, 95, 120, 115, 80, 4, 618);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (618, 18, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (618, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yanmega', 469);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yanmega', True, 481);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (86, 76, 86, 116, 56, 95, 4, 619);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (619, 7, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (619, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('leafeon', 470);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('leafeon', True, 482);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 110, 130, 60, 65, 95, 4, 620);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (620, 12, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glaceon', 471);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glaceon', True, 483);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 110, 130, 95, 65, 4, 621);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (621, 15, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gliscor', 472);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gliscor', True, 484);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 95, 125, 45, 75, 95, 4, 622);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (622, 5, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (622, 3, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('porygon-z', 474);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('porygon-z', True, 485);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 80, 70, 135, 75, 90, 4, 623);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (623, 1, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gallade', 475);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gallade', True, 486);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 125, 65, 65, 115, 80, 4, 624);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (624, 14, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (624, 2, 4);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gallade-mega', False, 486);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 165, 95, 65, 115, 110, 6, 625);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (625, 14, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (625, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('probopass', 476);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('probopass', True, 487);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 145, 75, 150, 40, 4, 626);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (626, 6, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (626, 9, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dusknoir', 477);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dusknoir', True, 488);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 100, 135, 65, 135, 45, 4, 627);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (627, 8, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('froslass', 478);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('froslass', True, 489);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 80, 70, 80, 70, 110, 4, 628);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (628, 15, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (628, 8, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('monferno', 391);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('monferno', True, 490);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 78, 52, 78, 52, 81, 4, 629);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (629, 10, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (629, 2, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gastrodon', 423);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gastrodon', True, 491);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (111, 83, 68, 92, 82, 39, 4, 630);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (630, 11, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (630, 5, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toxicroak', 454);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxicroak', True, 492);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (83, 106, 65, 86, 65, 85, 4, 631);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (631, 4, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (631, 2, 4);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mamoswine', 473);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mamoswine', True, 493);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 130, 80, 70, 60, 80, 4, 632);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (632, 15, 4);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (632, 5, 4);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('victini', 494);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('victini', True, 494);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 100, 100, 100, 100, 5, 633);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (633, 14, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (633, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snivy', 495);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snivy', True, 495);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 45, 55, 45, 55, 63, 5, 634);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (634, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tepig', 498);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tepig', True, 496);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 63, 45, 45, 45, 45, 5, 635);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (635, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('oshawott', 501);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oshawott', True, 497);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 45, 63, 45, 45, 5, 636);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (636, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('patrat', 504);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('patrat', True, 498);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 55, 39, 35, 39, 42, 5, 637);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (637, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lillipup', 506);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lillipup', True, 499);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 60, 45, 25, 45, 55, 5, 638);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (638, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('purrloin', 509);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('purrloin', True, 500);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 50, 37, 50, 37, 66, 5, 639);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (639, 17, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pansage', 511);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pansage', True, 501);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 53, 48, 53, 48, 64, 5, 640);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (640, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pansear', 513);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pansear', True, 502);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 53, 48, 53, 48, 64, 5, 641);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (641, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('panpour', 515);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('panpour', True, 503);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 53, 48, 53, 48, 64, 5, 642);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (642, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('munna', 517);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('munna', True, 504);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 25, 45, 67, 55, 24, 5, 643);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (643, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pidove', 519);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pidove', True, 505);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 55, 50, 36, 30, 43, 5, 644);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (644, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (644, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blitzle', 522);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blitzle', True, 506);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 60, 32, 50, 32, 76, 5, 645);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (645, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('roggenrola', 524);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('roggenrola', True, 507);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 75, 85, 25, 25, 15, 5, 646);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (646, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('woobat', 527);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('woobat', True, 508);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 45, 43, 55, 43, 72, 5, 647);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (647, 14, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (647, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drilbur', 529);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drilbur', True, 509);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 40, 30, 45, 68, 5, 648);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (648, 5, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('audino', 531);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('audino', True, 510);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (103, 60, 86, 60, 86, 50, 5, 649);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (649, 1, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('audino-mega', False, 510);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (103, 60, 126, 80, 126, 50, 6, 650);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (650, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (650, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('servine', 496);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('servine', True, 511);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 75, 60, 75, 83, 5, 651);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (651, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('serperior', 497);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('serperior', True, 512);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 75, 95, 75, 95, 113, 5, 652);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (652, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pignite', 499);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pignite', True, 513);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 93, 55, 70, 55, 55, 5, 653);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (653, 10, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (653, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('emboar', 500);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('emboar', True, 514);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 123, 65, 100, 65, 65, 5, 654);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (654, 10, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (654, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dewott', 502);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dewott', True, 515);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 75, 60, 83, 60, 60, 5, 655);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (655, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('samurott', 503);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('samurott', True, 516);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 100, 85, 108, 70, 70, 5, 656);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (656, 11, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('samurott-hisui', False, 516);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 108, 80, 100, 65, 85, 8, 657);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (657, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (657, 17, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('watchog', 505);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('watchog', True, 517);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 85, 69, 60, 69, 77, 5, 658);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (658, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stoutland', 508);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stoutland', True, 518);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 110, 90, 45, 90, 80, 5, 659);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (659, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('liepard', 510);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('liepard', True, 519);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (64, 88, 50, 88, 50, 106, 5, 660);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (660, 17, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('simisage', 512);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('simisage', True, 520);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 63, 98, 63, 101, 5, 661);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (661, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('simisear', 514);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('simisear', True, 521);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 63, 98, 63, 101, 5, 662);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (662, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('simipour', 516);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('simipour', True, 522);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 63, 98, 63, 101, 5, 663);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (663, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('musharna', 518);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('musharna', True, 523);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (116, 55, 85, 107, 95, 29, 5, 664);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (664, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tranquill', 520);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tranquill', True, 524);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 77, 62, 50, 42, 65, 5, 665);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (665, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (665, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('unfezant', 521);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('unfezant', True, 525);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 115, 80, 65, 55, 93, 5, 666);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (666, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (666, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zebstrika', 523);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zebstrika', True, 526);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 100, 63, 80, 63, 116, 5, 667);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (667, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('boldore', 525);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('boldore', True, 527);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 105, 105, 50, 40, 20, 5, 668);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (668, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gigalith', 526);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gigalith', True, 528);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 135, 130, 60, 80, 25, 5, 669);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (669, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swoobat', 528);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swoobat', True, 529);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 57, 55, 77, 55, 114, 5, 670);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (670, 14, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (670, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('excadrill', 530);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('excadrill', True, 530);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 135, 60, 50, 65, 88, 5, 671);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (671, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (671, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('timburr', 532);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('timburr', True, 531);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 55, 25, 35, 35, 5, 672);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (672, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tympole', 535);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tympole', True, 532);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 40, 50, 40, 64, 5, 673);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (673, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('throh', 538);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('throh', True, 533);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 100, 85, 30, 85, 45, 5, 674);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (674, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sawk', 539);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sawk', True, 534);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 75, 30, 75, 85, 5, 675);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (675, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sewaddle', 540);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sewaddle', True, 535);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 53, 70, 40, 60, 42, 5, 676);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (676, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (676, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('venipede', 543);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('venipede', True, 536);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 45, 59, 30, 39, 57, 5, 677);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (677, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (677, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cottonee', 546);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cottonee', True, 537);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 27, 60, 37, 50, 66, 5, 678);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (678, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (678, 18, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('petilil', 548);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('petilil', True, 538);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 35, 50, 70, 50, 30, 5, 679);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (679, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('basculin', 550);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('basculin-red-striped', False, 539);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 92, 65, 80, 55, 98, 5, 680);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (680, 11, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('basculin-blue-striped', False, 539);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 92, 65, 80, 55, 98, 5, 681);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (681, 11, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('basculin-white-striped', False, 539);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 92, 65, 80, 55, 98, 5, 682);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (682, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandile', 551);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandile', True, 540);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 72, 35, 35, 35, 65, 5, 683);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (683, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (683, 17, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('darumaka', 554);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darumaka', True, 541);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 45, 15, 45, 50, 5, 684);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (684, 10, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darumaka-galar', False, 541);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 90, 45, 15, 45, 50, 8, 685);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (685, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('maractus', 556);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('maractus', True, 542);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 86, 67, 106, 67, 60, 5, 686);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (686, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dwebble', 557);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dwebble', True, 543);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 85, 35, 35, 55, 5, 687);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (687, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (687, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scraggy', 559);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scraggy', True, 544);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 70, 35, 70, 48, 5, 688);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (688, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (688, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sigilyph', 561);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sigilyph', True, 545);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 58, 80, 103, 80, 97, 5, 689);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (689, 14, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (689, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yamask', 562);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yamask', True, 546);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 30, 85, 55, 65, 30, 5, 690);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (690, 8, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yamask-galar', False, 546);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 55, 85, 30, 65, 30, 8, 691);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (691, 5, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (691, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tirtouga', 564);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tirtouga', True, 547);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 78, 103, 53, 45, 22, 5, 692);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (692, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (692, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('archen', 566);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('archen', True, 548);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 112, 45, 74, 45, 70, 5, 693);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (693, 6, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (693, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('trubbish', 568);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('trubbish', True, 549);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 62, 40, 62, 65, 5, 694);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (694, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zorua', 570);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zorua', True, 550);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 65, 40, 80, 40, 65, 5, 695);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (695, 17, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zorua-hisui', False, 550);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 60, 40, 85, 40, 70, 8, 696);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (696, 1, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (696, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('minccino', 572);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minccino', True, 551);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 50, 40, 40, 40, 75, 5, 697);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (697, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gothita', 574);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gothita', True, 552);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 50, 55, 65, 45, 5, 698);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (698, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('solosis', 577);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('solosis', True, 553);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 40, 105, 50, 20, 5, 699);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (699, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ducklett', 580);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ducklett', True, 554);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 44, 50, 44, 50, 55, 5, 700);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (700, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (700, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vanillite', 582);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vanillite', True, 555);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (36, 50, 50, 65, 60, 44, 5, 701);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (701, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('deerling', 585);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deerling', True, 556);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 50, 40, 50, 75, 5, 702);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (702, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (702, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('emolga', 587);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('emolga', True, 557);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 75, 60, 75, 60, 103, 5, 703);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (703, 13, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (703, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('karrablast', 588);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('karrablast', True, 558);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 75, 45, 40, 45, 60, 5, 704);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (704, 7, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('foongus', 590);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('foongus', True, 559);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (69, 55, 45, 55, 55, 15, 5, 705);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (705, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (705, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('frillish', 592);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('frillish', True, 560);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 40, 50, 65, 85, 40, 5, 706);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (706, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (706, 8, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('alomomola', 594);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('alomomola', True, 561);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (165, 75, 80, 40, 45, 65, 5, 707);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (707, 11, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('joltik', 595);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('joltik', True, 562);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 47, 50, 57, 50, 65, 5, 708);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (708, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (708, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ferroseed', 597);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ferroseed', True, 563);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 50, 91, 24, 86, 10, 5, 709);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (709, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (709, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('klink', 599);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('klink', True, 564);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 70, 45, 60, 30, 5, 710);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (710, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tynamo', 602);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tynamo', True, 565);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 55, 40, 45, 40, 60, 5, 711);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (711, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('elgyem', 605);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('elgyem', True, 566);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 55, 85, 55, 30, 5, 712);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (712, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('litwick', 607);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('litwick', True, 567);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 30, 55, 65, 55, 20, 5, 713);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (713, 8, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (713, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('conkeldurr', 534);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('conkeldurr', True, 568);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 140, 95, 55, 65, 45, 5, 714);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (714, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('palpitoad', 536);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palpitoad', True, 569);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 65, 55, 65, 55, 69, 5, 715);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (715, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (715, 5, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('seismitoad', 537);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('seismitoad', True, 570);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 95, 75, 85, 75, 74, 5, 716);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (716, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (716, 5, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swadloon', 541);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swadloon', True, 571);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 63, 90, 50, 80, 42, 5, 717);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (717, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (717, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('leavanny', 542);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('leavanny', True, 572);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 103, 80, 70, 80, 92, 5, 718);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (718, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (718, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('whirlipede', 544);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('whirlipede', True, 573);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 99, 40, 79, 47, 5, 719);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (719, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (719, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scolipede', 545);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scolipede', True, 574);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 89, 55, 69, 112, 5, 720);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (720, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (720, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('whimsicott', 547);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('whimsicott', True, 575);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 67, 85, 77, 75, 116, 5, 721);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (721, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (721, 18, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lilligant', 549);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lilligant', True, 576);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 60, 75, 110, 75, 90, 5, 722);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (722, 12, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lilligant-hisui', False, 576);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 105, 75, 50, 75, 105, 8, 723);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (723, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (723, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('krokorok', 552);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('krokorok', True, 577);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 82, 45, 45, 45, 74, 5, 724);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (724, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (724, 17, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('krookodile', 553);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('krookodile', True, 578);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 117, 80, 65, 70, 92, 5, 725);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (725, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (725, 17, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('darmanitan', 555);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darmanitan-standard', False, 579);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 140, 55, 30, 55, 95, 5, 726);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (726, 10, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darmanitan-zen', False, 579);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 30, 105, 140, 105, 55, 5, 727);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (727, 10, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (727, 14, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darmanitan-galar-standard', False, 579);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 140, 55, 30, 55, 95, 8, 728);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (728, 15, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('darmanitan-galar-zen', False, 579);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 160, 55, 30, 55, 135, 8, 729);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (729, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (729, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crustle', 558);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crustle', True, 580);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 105, 125, 65, 75, 45, 5, 730);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (730, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (730, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scrafty', 560);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scrafty', True, 581);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 115, 45, 115, 58, 5, 731);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (731, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (731, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('carracosta', 565);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('carracosta', True, 582);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 108, 133, 83, 65, 32, 5, 732);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (732, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (732, 6, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('archeops', 567);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('archeops', True, 583);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 140, 65, 112, 65, 110, 5, 733);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (733, 6, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (733, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('garbodor', 569);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('garbodor', True, 584);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 95, 82, 60, 82, 75, 5, 734);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (734, 4, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('garbodor-gmax', False, 584);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 95, 82, 60, 82, 75, 8, 735);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (735, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zoroark', 571);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zoroark', True, 585);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 105, 60, 120, 60, 105, 5, 736);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (736, 17, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zoroark-hisui', False, 585);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 100, 60, 125, 60, 110, 8, 737);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (737, 1, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (737, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cinccino', 573);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cinccino', True, 586);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 95, 60, 65, 60, 115, 5, 738);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (738, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gothorita', 575);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gothorita', True, 587);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 70, 75, 85, 55, 5, 739);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (739, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gothitelle', 576);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gothitelle', True, 588);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 55, 95, 95, 110, 65, 5, 740);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (740, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('duosion', 578);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('duosion', True, 589);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 40, 50, 125, 60, 30, 5, 741);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (741, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('reuniclus', 579);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('reuniclus', True, 590);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 65, 75, 125, 85, 30, 5, 742);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (742, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swanna', 581);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swanna', True, 591);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 87, 63, 87, 63, 98, 5, 743);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (743, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (743, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vanillish', 583);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vanillish', True, 592);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (51, 65, 65, 80, 75, 59, 5, 744);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (744, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vanilluxe', 584);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vanilluxe', True, 593);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 95, 85, 110, 95, 79, 5, 745);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (745, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sawsbuck', 586);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sawsbuck', True, 594);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 70, 60, 70, 95, 5, 746);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (746, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (746, 12, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('escavalier', 589);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('escavalier', True, 595);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 135, 105, 60, 105, 20, 5, 747);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (747, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (747, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('amoonguss', 591);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('amoonguss', True, 596);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (114, 85, 70, 85, 80, 30, 5, 748);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (748, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (748, 4, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jellicent', 593);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jellicent', True, 597);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 60, 70, 85, 105, 60, 5, 749);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (749, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (749, 8, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('galvantula', 596);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('galvantula', True, 598);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 77, 60, 97, 60, 108, 5, 750);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (750, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (750, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ferrothorn', 598);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ferrothorn', True, 599);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 94, 131, 54, 116, 20, 5, 751);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (751, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (751, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('klang', 600);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('klang', True, 600);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 80, 95, 70, 85, 50, 5, 752);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (752, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eelektrik', 603);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eelektrik', True, 601);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 85, 70, 75, 70, 40, 5, 753);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (753, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eelektross', 604);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eelektross', True, 602);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 115, 80, 105, 80, 50, 5, 754);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (754, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('beheeyem', 606);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beheeyem', True, 603);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 75, 75, 125, 95, 40, 5, 755);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (755, 14, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lampent', 608);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lampent', True, 604);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 40, 60, 95, 60, 55, 5, 756);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (756, 8, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (756, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('axew', 610);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('axew', True, 605);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (46, 87, 60, 30, 40, 57, 5, 757);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (757, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cubchoo', 613);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cubchoo', True, 606);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 70, 40, 60, 40, 40, 5, 758);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (758, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cryogonal', 615);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cryogonal', True, 607);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 50, 50, 95, 135, 105, 5, 759);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (759, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shelmet', 616);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shelmet', True, 608);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 40, 85, 40, 65, 25, 5, 760);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (760, 7, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stunfisk', 618);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stunfisk', True, 609);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (109, 66, 84, 81, 99, 32, 5, 761);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (761, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (761, 13, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stunfisk-galar', False, 609);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (109, 81, 99, 66, 84, 32, 8, 762);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (762, 5, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (762, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mienfoo', 619);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mienfoo', True, 610);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 85, 50, 55, 50, 65, 5, 763);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (763, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('druddigon', 621);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('druddigon', True, 611);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (77, 120, 90, 60, 90, 48, 5, 764);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (764, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golett', 622);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golett', True, 612);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 74, 50, 35, 50, 35, 5, 765);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (765, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (765, 8, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pawniard', 624);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pawniard', True, 613);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 85, 70, 40, 40, 60, 5, 766);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (766, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (766, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bouffalant', 626);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bouffalant', True, 614);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 110, 95, 40, 95, 55, 5, 767);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (767, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rufflet', 627);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rufflet', True, 615);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 83, 50, 37, 50, 60, 5, 768);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (768, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (768, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vullaby', 629);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vullaby', True, 616);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 55, 75, 45, 65, 60, 5, 769);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (769, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (769, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('heatmor', 631);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('heatmor', True, 617);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 97, 66, 105, 66, 65, 5, 770);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (770, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('durant', 632);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('durant', True, 618);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 109, 112, 48, 48, 109, 5, 771);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (771, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (771, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('deino', 633);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('deino', True, 619);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 65, 50, 45, 50, 38, 5, 772);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (772, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (772, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('larvesta', 636);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('larvesta', True, 620);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 85, 55, 50, 55, 60, 5, 773);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (773, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (773, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cobalion', 638);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cobalion', True, 621);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 90, 129, 90, 72, 108, 5, 774);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (774, 9, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (774, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('terrakion', 639);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('terrakion', True, 622);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 129, 90, 72, 90, 108, 5, 775);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (775, 6, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (775, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('virizion', 640);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('virizion', True, 623);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 90, 72, 90, 129, 108, 5, 776);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (776, 12, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (776, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tornadus', 641);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tornadus-incarnate', False, 624);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 115, 70, 125, 80, 111, 5, 777);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (777, 3, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tornadus-therian', False, 624);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 100, 80, 110, 90, 121, 5, 778);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (778, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('thundurus', 642);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('thundurus-incarnate', False, 625);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 115, 70, 125, 80, 111, 5, 779);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (779, 13, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (779, 3, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('thundurus-therian', False, 625);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (79, 105, 70, 145, 80, 101, 5, 780);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (780, 13, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (780, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('reshiram', 643);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('reshiram', True, 626);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 120, 100, 150, 120, 90, 5, 781);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (781, 16, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (781, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zekrom', 644);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zekrom', True, 627);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 150, 120, 120, 100, 90, 5, 782);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (782, 16, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (782, 13, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('landorus', 645);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('landorus-incarnate', False, 628);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (89, 125, 90, 115, 80, 101, 5, 783);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (783, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (783, 3, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('landorus-therian', False, 628);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (89, 145, 90, 105, 80, 91, 5, 784);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (784, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (784, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kyurem', 646);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kyurem', True, 629);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 130, 90, 130, 90, 95, 5, 785);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (785, 16, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (785, 15, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kyurem-black', False, 629);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 170, 100, 120, 90, 95, 5, 786);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (786, 16, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (786, 15, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kyurem-white', False, 629);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 120, 90, 170, 100, 95, 5, 787);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (787, 16, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (787, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('keldeo', 647);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('keldeo-ordinary', False, 630);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 72, 90, 129, 90, 108, 5, 788);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (788, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (788, 2, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('keldeo-resolute', False, 630);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (91, 72, 90, 129, 90, 108, 5, 789);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (789, 11, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (789, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meloetta', 648);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meloetta-aria', False, 631);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 77, 77, 128, 128, 90, 5, 790);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (790, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (790, 14, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meloetta-pirouette', False, 631);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 128, 90, 77, 77, 128, 5, 791);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (791, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (791, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('genesect', 649);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('genesect', True, 632);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 120, 95, 120, 95, 99, 5, 792);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (792, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (792, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fraxure', 611);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fraxure', True, 633);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (66, 117, 70, 40, 50, 67, 5, 793);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (793, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('haxorus', 612);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('haxorus', True, 634);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 147, 90, 60, 70, 97, 5, 794);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (794, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('beartic', 614);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('beartic', True, 635);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 130, 80, 70, 80, 50, 5, 795);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (795, 15, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('accelgor', 617);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('accelgor', True, 636);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 70, 40, 100, 60, 145, 5, 796);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (796, 7, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golurk', 623);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golurk', True, 637);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (89, 124, 80, 55, 80, 55, 5, 797);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (797, 5, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (797, 8, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bisharp', 625);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bisharp', True, 638);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 125, 100, 60, 70, 70, 5, 798);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (798, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (798, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('braviary', 628);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('braviary', True, 639);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 123, 75, 57, 75, 80, 5, 799);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (799, 1, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (799, 3, 5);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('braviary-hisui', False, 639);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 83, 70, 112, 70, 65, 8, 800);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (800, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (800, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mandibuzz', 630);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mandibuzz', True, 640);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 65, 105, 55, 95, 80, 5, 801);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (801, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (801, 3, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zweilous', 634);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zweilous', True, 641);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 85, 70, 65, 70, 58, 5, 802);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (802, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (802, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hydreigon', 635);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hydreigon', True, 642);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (92, 105, 90, 125, 90, 98, 5, 803);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (803, 17, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (803, 16, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('volcarona', 637);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('volcarona', True, 643);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 60, 65, 135, 105, 100, 5, 804);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (804, 7, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (804, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('herdier', 507);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('herdier', True, 644);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 80, 65, 35, 65, 60, 5, 805);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (805, 1, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gurdurr', 533);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gurdurr', True, 645);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 105, 85, 40, 50, 40, 5, 806);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (806, 2, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cofagrigus', 563);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cofagrigus', True, 646);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 50, 145, 95, 105, 30, 5, 807);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (807, 8, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('klinklang', 601);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('klinklang', True, 647);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 115, 70, 85, 90, 5, 808);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (808, 9, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chandelure', 609);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chandelure', True, 648);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 90, 145, 90, 80, 5, 809);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (809, 8, 5);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (809, 10, 5);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mienshao', 620);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mienshao', True, 649);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 125, 60, 95, 60, 105, 5, 810);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (810, 2, 5);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chespin', 650);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chespin', True, 650);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (56, 61, 65, 48, 45, 38, 6, 811);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (811, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fennekin', 653);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fennekin', True, 651);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 40, 62, 60, 60, 6, 812);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (812, 10, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('froakie', 656);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('froakie', True, 652);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 56, 40, 62, 44, 71, 6, 813);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (813, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bunnelby', 659);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bunnelby', True, 653);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 36, 38, 32, 36, 57, 6, 814);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (814, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fletchling', 661);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fletchling', True, 654);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 50, 43, 40, 38, 62, 6, 815);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (815, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (815, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scatterbug', 664);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scatterbug', True, 655);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 35, 40, 27, 25, 35, 6, 816);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (816, 7, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('litleo', 667);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('litleo', True, 656);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 50, 58, 73, 54, 72, 6, 817);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (817, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (817, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flabebe', 669);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flabebe', True, 657);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 38, 39, 61, 79, 42, 6, 818);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (818, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skiddo', 672);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skiddo', True, 658);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (66, 65, 48, 62, 57, 52, 6, 819);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (819, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pancham', 674);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pancham', True, 659);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 82, 62, 46, 48, 43, 6, 820);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (820, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('furfrou', 676);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('furfrou', True, 660);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 60, 65, 90, 102, 6, 821);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (821, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('espurr', 677);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('espurr', True, 661);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 48, 54, 63, 60, 68, 6, 822);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (822, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('honedge', 679);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('honedge', True, 662);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 80, 100, 35, 37, 28, 6, 823);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (823, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (823, 8, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spritzee', 682);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spritzee', True, 663);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 52, 60, 63, 65, 23, 6, 824);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (824, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('swirlix', 684);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('swirlix', True, 664);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 48, 66, 59, 57, 49, 6, 825);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (825, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('inkay', 686);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('inkay', True, 665);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (53, 54, 53, 37, 46, 45, 6, 826);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (826, 17, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (826, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quilladin', 651);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quilladin', True, 666);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 78, 95, 56, 58, 57, 6, 827);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (827, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chesnaught', 652);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chesnaught', True, 667);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 107, 122, 74, 75, 64, 6, 828);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (828, 12, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (828, 2, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('braixen', 654);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('braixen', True, 668);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 59, 58, 90, 70, 73, 6, 829);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (829, 10, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('delphox', 655);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('delphox', True, 669);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 69, 72, 114, 100, 104, 6, 830);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (830, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (830, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('frogadier', 657);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('frogadier', True, 670);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 63, 52, 83, 56, 97, 6, 831);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (831, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('greninja', 658);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('greninja', True, 671);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 95, 67, 103, 71, 122, 6, 832);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (832, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (832, 17, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('greninja-battle-bond', False, 671);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 95, 67, 103, 71, 122, 6, 833);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (833, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (833, 17, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('greninja-ash', False, 671);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 145, 67, 153, 71, 132, 6, 834);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (834, 11, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (834, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('diggersby', 660);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('diggersby', True, 672);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 56, 77, 50, 77, 78, 6, 835);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (835, 1, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (835, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fletchinder', 662);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fletchinder', True, 673);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 73, 55, 56, 52, 84, 6, 836);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (836, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (836, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('talonflame', 663);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('talonflame', True, 674);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 81, 71, 74, 69, 126, 6, 837);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (837, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (837, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spewpa', 665);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spewpa', True, 675);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 22, 60, 27, 30, 29, 6, 838);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (838, 7, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pyroar', 668);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pyroar', True, 676);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (86, 68, 72, 109, 66, 106, 6, 839);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (839, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (839, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('floette', 670);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('floette', True, 677);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 45, 47, 75, 98, 52, 6, 840);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (840, 18, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('floette-eternal', False, 677);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 65, 67, 125, 128, 92, 6, 841);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (841, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('florges', 671);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('florges', True, 678);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 65, 68, 112, 154, 75, 6, 842);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (842, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gogoat', 673);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gogoat', True, 679);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (123, 100, 62, 97, 81, 68, 6, 843);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (843, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pangoro', 675);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pangoro', True, 680);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 124, 78, 69, 71, 58, 6, 844);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (844, 2, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (844, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meowstic', 678);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowstic-male', False, 681);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 48, 76, 83, 81, 104, 6, 845);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (845, 14, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowstic-female', False, 681);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 48, 76, 83, 81, 104, 6, 846);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (846, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('doublade', 680);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('doublade', True, 682);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 110, 150, 45, 49, 35, 6, 847);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (847, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (847, 8, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aegislash', 681);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aegislash-shield', False, 683);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 140, 50, 140, 60, 6, 848);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (848, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (848, 8, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aegislash-blade', False, 683);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 140, 50, 140, 50, 60, 6, 849);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (849, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (849, 8, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aromatisse', 683);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aromatisse', True, 684);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (101, 72, 72, 99, 89, 29, 6, 850);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (850, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slurpuff', 685);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slurpuff', True, 685);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 80, 86, 85, 75, 72, 6, 851);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (851, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('binacle', 688);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('binacle', True, 686);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (42, 52, 67, 39, 56, 50, 6, 852);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (852, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (852, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skrelp', 690);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skrelp', True, 687);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 60, 60, 60, 60, 30, 6, 853);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (853, 4, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (853, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clauncher', 692);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clauncher', True, 688);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 53, 62, 58, 63, 44, 6, 854);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (854, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('helioptile', 694);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('helioptile', True, 689);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 38, 33, 61, 43, 70, 6, 855);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (855, 13, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (855, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tyrunt', 696);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tyrunt', True, 690);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 89, 77, 45, 45, 48, 6, 856);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (856, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (856, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('amaura', 698);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('amaura', True, 691);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (77, 59, 50, 67, 63, 46, 6, 857);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (857, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (857, 15, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hawlucha', 701);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hawlucha', True, 692);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 92, 75, 74, 63, 118, 6, 858);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (858, 2, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (858, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dedenne', 702);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dedenne', True, 693);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 58, 57, 81, 67, 101, 6, 859);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (859, 13, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (859, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('carbink', 703);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('carbink', True, 694);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 150, 50, 150, 50, 6, 860);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (860, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (860, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('goomy', 704);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('goomy', True, 695);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 50, 35, 55, 75, 40, 6, 861);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (861, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('klefki', 707);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('klefki', True, 696);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 80, 91, 80, 87, 75, 6, 862);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (862, 9, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (862, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('phantump', 708);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('phantump', True, 697);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (43, 70, 48, 50, 60, 38, 6, 863);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (863, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (863, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pumpkaboo', 710);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pumpkaboo-average', False, 698);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (49, 66, 70, 44, 55, 51, 6, 864);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (864, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (864, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pumpkaboo-small', False, 698);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (44, 66, 70, 44, 55, 56, 6, 865);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (865, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (865, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pumpkaboo-large', False, 698);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 66, 70, 44, 55, 46, 6, 866);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (866, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (866, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pumpkaboo-super', False, 698);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 66, 70, 44, 55, 41, 6, 867);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (867, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (867, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bergmite', 712);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bergmite', True, 699);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 69, 85, 32, 35, 28, 6, 868);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (868, 15, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('noibat', 714);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('noibat', True, 700);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 30, 35, 45, 40, 55, 6, 869);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (869, 3, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (869, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('xerneas', 716);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('xerneas', True, 701);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (126, 131, 95, 131, 98, 99, 6, 870);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (870, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yveltal', 717);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yveltal', True, 702);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (126, 131, 95, 131, 98, 99, 6, 871);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (871, 17, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (871, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zygarde', 718);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zygarde-50', False, 703);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 100, 121, 81, 95, 95, 6, 872);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (872, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (872, 5, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zygarde-10-power-construct', False, 703);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 100, 71, 61, 85, 115, 6, 873);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (873, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (873, 5, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zygarde-50-power-construct', False, 703);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 100, 121, 81, 95, 95, 6, 874);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (874, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (874, 5, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zygarde-complete', False, 703);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (216, 100, 121, 91, 95, 85, 6, 875);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (875, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (875, 5, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zygarde-10', False, 703);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 100, 71, 61, 85, 115, 6, 876);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (876, 16, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (876, 5, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('diancie', 719);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('diancie', True, 704);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 100, 150, 100, 150, 50, 6, 877);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (877, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (877, 18, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('diancie-mega', False, 704);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 160, 110, 160, 110, 110, 6, 878);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (878, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (878, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hoopa', 720);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hoopa', True, 705);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 110, 60, 150, 130, 70, 6, 879);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (879, 14, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (879, 8, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hoopa-unbound', False, 705);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 160, 60, 170, 130, 80, 6, 880);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (880, 14, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (880, 17, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('volcanion', 721);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('volcanion', True, 706);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 110, 120, 130, 90, 70, 6, 881);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (881, 10, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (881, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('barbaracle', 689);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('barbaracle', True, 707);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 105, 115, 54, 86, 68, 6, 882);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (882, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (882, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dragalge', 691);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dragalge', True, 708);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 75, 90, 97, 123, 44, 6, 883);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (883, 4, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (883, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clawitzer', 693);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clawitzer', True, 709);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 73, 88, 120, 89, 59, 6, 884);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (884, 11, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('heliolisk', 695);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('heliolisk', True, 710);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 55, 52, 109, 94, 109, 6, 885);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (885, 13, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (885, 1, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('aurorus', 699);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('aurorus', True, 711);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (123, 77, 72, 99, 92, 58, 6, 886);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (886, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (886, 15, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sylveon', 700);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sylveon', True, 712);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 65, 65, 110, 130, 60, 6, 887);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (887, 18, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sliggoo', 705);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sliggoo', True, 713);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 75, 53, 83, 113, 60, 6, 888);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (888, 16, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sliggoo-hisui', False, 713);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 75, 83, 83, 113, 40, 8, 889);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (889, 9, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (889, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('goodra', 706);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('goodra', True, 714);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 70, 110, 150, 80, 6, 890);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (890, 16, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('goodra-hisui', False, 714);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 100, 110, 150, 60, 8, 891);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (891, 9, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (891, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('trevenant', 709);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('trevenant', True, 715);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 110, 76, 65, 82, 56, 6, 892);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (892, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (892, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gourgeist', 711);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gourgeist-average', False, 716);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 90, 122, 58, 75, 84, 6, 893);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (893, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (893, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gourgeist-small', False, 716);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 85, 122, 58, 75, 99, 6, 894);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (894, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (894, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gourgeist-large', False, 716);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 95, 122, 58, 75, 69, 6, 895);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (895, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (895, 12, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gourgeist-super', False, 716);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 100, 122, 58, 75, 54, 6, 896);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (896, 8, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (896, 12, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('avalugg', 713);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('avalugg', True, 717);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 117, 184, 44, 46, 28, 6, 897);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (897, 15, 6);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('avalugg-hisui', False, 717);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 127, 184, 34, 36, 38, 8, 898);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (898, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (898, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('noivern', 715);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('noivern', True, 718);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 70, 80, 97, 80, 123, 6, 899);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (899, 3, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (899, 16, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vivillon', 666);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vivillon', True, 719);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 52, 50, 90, 50, 89, 6, 900);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (900, 7, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (900, 3, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('malamar', 687);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('malamar', True, 720);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (86, 92, 88, 68, 75, 73, 6, 901);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (901, 17, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (901, 14, 6);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tyrantrum', 697);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tyrantrum', True, 721);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 121, 119, 69, 59, 71, 6, 902);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (902, 6, 6);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (902, 16, 6);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rowlet', 722);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rowlet', True, 722);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 55, 55, 50, 50, 42, 7, 903);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (903, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (903, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('litten', 725);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('litten', True, 723);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 65, 40, 60, 40, 70, 7, 904);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (904, 10, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('popplio', 728);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('popplio', True, 724);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 54, 54, 66, 56, 40, 7, 905);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (905, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pikipek', 731);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pikipek', True, 725);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 75, 30, 30, 30, 65, 7, 906);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (906, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (906, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yungoos', 734);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yungoos', True, 726);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 70, 30, 30, 30, 45, 7, 907);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (907, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grubbin', 736);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grubbin', True, 727);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (47, 62, 45, 55, 45, 46, 7, 908);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (908, 7, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crabrawler', 739);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crabrawler', True, 728);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (47, 82, 57, 42, 47, 63, 7, 909);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (909, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('oricorio', 741);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oricorio-baile', False, 729);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 70, 70, 98, 70, 93, 7, 910);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (910, 10, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (910, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oricorio-pom-pom', False, 729);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 70, 70, 98, 70, 93, 7, 911);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (911, 13, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (911, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oricorio-pau', False, 729);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 70, 70, 98, 70, 93, 7, 912);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (912, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (912, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oricorio-sensu', False, 729);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 70, 70, 98, 70, 93, 7, 913);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (913, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (913, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cutiefly', 742);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cutiefly', True, 730);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 40, 55, 40, 84, 7, 914);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (914, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (914, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rockruff', 744);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rockruff', True, 731);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 65, 40, 30, 40, 60, 7, 915);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (915, 6, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rockruff-own-tempo', False, 731);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 65, 40, 30, 40, 60, 7, 916);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (916, 6, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wishiwashi', 746);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wishiwashi-solo', False, 732);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 20, 20, 25, 25, 40, 7, 917);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (917, 11, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wishiwashi-school', False, 732);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 140, 130, 140, 135, 30, 7, 918);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (918, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mareanie', 747);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mareanie', True, 733);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 53, 62, 43, 52, 45, 7, 919);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (919, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (919, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mudbray', 749);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mudbray', True, 734);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 100, 70, 45, 55, 45, 7, 920);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (920, 5, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dewpider', 751);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dewpider', True, 735);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 40, 52, 40, 72, 27, 7, 921);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (921, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (921, 7, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fomantis', 753);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fomantis', True, 736);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 55, 35, 50, 35, 35, 7, 922);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (922, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('morelull', 755);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('morelull', True, 737);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 35, 55, 65, 75, 15, 7, 923);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (923, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (923, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('salandit', 757);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('salandit', True, 738);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 44, 40, 71, 40, 77, 7, 924);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (924, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (924, 10, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stufful', 759);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stufful', True, 739);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 75, 50, 45, 50, 50, 7, 925);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (925, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (925, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bounsweet', 761);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bounsweet', True, 740);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (42, 30, 38, 30, 38, 32, 7, 926);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (926, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('comfey', 764);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('comfey', True, 741);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (51, 52, 90, 82, 110, 100, 7, 927);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (927, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dartrix', 723);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dartrix', True, 742);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 75, 75, 70, 70, 52, 7, 928);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (928, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (928, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('decidueye', 724);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('decidueye', True, 743);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 107, 75, 100, 100, 70, 7, 929);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (929, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (929, 8, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('decidueye-hisui', False, 743);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 112, 80, 95, 95, 60, 8, 930);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (930, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (930, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('torracat', 726);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('torracat', True, 744);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 85, 50, 80, 50, 90, 7, 931);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (931, 10, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('incineroar', 727);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('incineroar', True, 745);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 115, 90, 80, 90, 60, 7, 932);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (932, 10, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (932, 17, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('primarina', 730);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('primarina', True, 746);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 74, 74, 126, 116, 60, 7, 933);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (933, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (933, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('trumbeak', 732);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('trumbeak', True, 747);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 85, 50, 40, 50, 75, 7, 934);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (934, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (934, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toucannon', 733);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toucannon', True, 748);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 75, 75, 75, 60, 7, 935);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (935, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (935, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gumshoos', 735);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gumshoos', True, 749);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 110, 60, 55, 60, 45, 7, 936);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (936, 1, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gumshoos-totem', False, 749);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 110, 60, 55, 60, 45, 7, 937);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (937, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('charjabug', 737);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charjabug', True, 750);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 82, 95, 55, 75, 36, 7, 938);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (938, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (938, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('vikavolt', 738);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vikavolt', True, 751);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (77, 70, 90, 145, 75, 43, 7, 939);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (939, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (939, 13, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('vikavolt-totem', False, 751);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (77, 70, 90, 145, 75, 43, 7, 940);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (940, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (940, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crabominable', 740);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crabominable', True, 752);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 132, 77, 62, 67, 43, 7, 941);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (941, 2, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (941, 15, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ribombee', 743);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ribombee', True, 753);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 60, 95, 70, 124, 7, 942);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (942, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (942, 18, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ribombee-totem', False, 753);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 55, 60, 95, 70, 124, 7, 943);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (943, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (943, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lycanroc', 745);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lycanroc-midday', False, 754);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 115, 65, 55, 65, 112, 7, 944);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (944, 6, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lycanroc-midnight', False, 754);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 115, 75, 55, 75, 82, 7, 945);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (945, 6, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lycanroc-dusk', False, 754);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 117, 65, 55, 65, 110, 7, 946);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (946, 6, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toxapex', 748);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxapex', True, 755);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 63, 152, 53, 142, 35, 7, 947);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (947, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (947, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mudsdale', 750);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mudsdale', True, 756);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 125, 100, 55, 85, 35, 7, 948);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (948, 5, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('araquanid', 752);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('araquanid', True, 757);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 70, 92, 50, 132, 42, 7, 949);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (949, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (949, 7, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('araquanid-totem', False, 757);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 70, 92, 50, 132, 42, 7, 950);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (950, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (950, 7, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lurantis', 754);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lurantis', True, 758);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 105, 90, 80, 90, 45, 7, 951);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (951, 12, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lurantis-totem', False, 758);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 105, 90, 80, 90, 45, 7, 952);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (952, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shiinotic', 756);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shiinotic', True, 759);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 80, 90, 100, 30, 7, 953);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (953, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (953, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('salazzle', 758);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('salazzle', True, 760);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 64, 60, 111, 60, 117, 7, 954);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (954, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (954, 10, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('salazzle-totem', False, 760);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 64, 60, 111, 60, 117, 7, 955);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (955, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (955, 10, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bewear', 760);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bewear', True, 761);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 125, 80, 55, 60, 60, 7, 956);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (956, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (956, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('steenee', 762);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('steenee', True, 762);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 40, 48, 40, 48, 62, 7, 957);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (957, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('oranguru', 765);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oranguru', True, 763);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 60, 80, 90, 110, 60, 7, 958);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (958, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (958, 14, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('passimian', 766);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('passimian', True, 764);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 120, 90, 40, 60, 80, 7, 959);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (959, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wimpod', 767);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wimpod', True, 765);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (25, 35, 40, 20, 30, 80, 7, 960);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (960, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (960, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandygast', 769);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandygast', True, 766);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 80, 70, 45, 15, 7, 961);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (961, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (961, 5, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pyukumuku', 771);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pyukumuku', True, 767);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 60, 130, 30, 130, 5, 7, 962);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (962, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('type-null', 772);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('type-null', True, 768);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 95, 95, 95, 95, 59, 7, 963);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (963, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('minior', 774);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-red-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 964);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (964, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (964, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-orange-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 965);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (965, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (965, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-yellow-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 966);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (966, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (966, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-green-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 967);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (967, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (967, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-blue-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 968);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (968, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (968, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-indigo-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 969);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (969, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (969, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-violet-meteor', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 60, 100, 60, 7, 970);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (970, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (970, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-red', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 971);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (971, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (971, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-orange', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 972);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (972, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (972, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-yellow', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 973);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (973, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (973, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-green', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 974);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (974, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (974, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-blue', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 975);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (975, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (975, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-indigo', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 976);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (976, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (976, 3, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('minior-violet', False, 769);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 100, 60, 100, 60, 120, 7, 977);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (977, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (977, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('komala', 775);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('komala', True, 770);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 115, 65, 75, 95, 65, 7, 978);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (978, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('turtonator', 776);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('turtonator', True, 771);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 78, 135, 91, 85, 36, 7, 979);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (979, 10, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (979, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('togedemaru', 777);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('togedemaru', True, 772);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 98, 63, 40, 73, 96, 7, 980);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (980, 13, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (980, 9, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('togedemaru-totem', False, 772);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 98, 63, 40, 73, 96, 7, 981);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (981, 13, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (981, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mimikyu', 778);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mimikyu-disguised', False, 773);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 90, 80, 50, 105, 96, 7, 982);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (982, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (982, 18, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mimikyu-busted', False, 773);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 90, 80, 50, 105, 96, 7, 983);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (983, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (983, 18, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mimikyu-totem-disguised', False, 773);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 90, 80, 50, 105, 96, 7, 984);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (984, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (984, 18, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mimikyu-totem-busted', False, 773);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 90, 80, 50, 105, 96, 7, 985);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (985, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (985, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bruxish', 779);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bruxish', True, 774);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 105, 70, 70, 70, 92, 7, 986);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (986, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (986, 14, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drampa', 780);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drampa', True, 775);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 60, 85, 135, 91, 36, 7, 987);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (987, 1, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (987, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dhelmise', 781);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dhelmise', True, 776);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 131, 100, 86, 90, 40, 7, 988);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (988, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (988, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('jangmo-o', 782);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('jangmo-o', True, 777);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 55, 65, 45, 45, 45, 7, 989);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (989, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tapu-koko', 785);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tapu-koko', True, 778);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 115, 85, 95, 75, 130, 7, 990);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (990, 13, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (990, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tapu-lele', 786);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tapu-lele', True, 779);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 75, 130, 115, 95, 7, 991);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (991, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (991, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tapu-bulu', 787);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tapu-bulu', True, 780);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 130, 115, 85, 95, 75, 7, 992);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (992, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (992, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tapu-fini', 788);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tapu-fini', True, 781);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 75, 115, 95, 130, 85, 7, 993);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (993, 11, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (993, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cosmog', 789);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cosmog', True, 782);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (43, 29, 31, 29, 31, 37, 7, 994);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (994, 14, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nihilego', 793);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nihilego', True, 783);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (109, 53, 47, 127, 131, 103, 7, 995);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (995, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (995, 4, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('buzzwole', 794);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('buzzwole', True, 784);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (107, 139, 139, 53, 53, 79, 7, 996);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (996, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (996, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pheromosa', 795);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pheromosa', True, 785);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 137, 37, 137, 37, 151, 7, 997);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (997, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (997, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('xurkitree', 796);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('xurkitree', True, 786);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (83, 89, 71, 173, 71, 83, 7, 998);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (998, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('celesteela', 797);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('celesteela', True, 787);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 101, 103, 107, 101, 61, 7, 999);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (999, 9, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (999, 3, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kartana', 798);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kartana', True, 788);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 181, 131, 59, 31, 109, 7, 1000);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1000, 12, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1000, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('guzzlord', 799);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('guzzlord', True, 789);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (223, 101, 53, 97, 53, 43, 7, 1001);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1001, 17, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1001, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('necrozma', 800);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('necrozma', True, 790);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 107, 101, 127, 89, 79, 7, 1002);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1002, 14, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('necrozma-dusk', False, 790);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 157, 127, 113, 109, 77, 7, 1003);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1003, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1003, 9, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('necrozma-dawn', False, 790);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 113, 109, 157, 127, 77, 7, 1004);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1004, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1004, 8, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('necrozma-ultra', False, 790);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (97, 167, 97, 167, 97, 129, 7, 1005);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1005, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1005, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('magearna', 801);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magearna', True, 791);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 95, 115, 130, 115, 65, 7, 1006);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1006, 9, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1006, 18, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('magearna-original', False, 791);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 95, 115, 130, 115, 65, 7, 1007);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1007, 9, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1007, 18, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('marshadow', 802);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('marshadow', True, 792);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 125, 80, 90, 90, 125, 7, 1008);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1008, 2, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1008, 8, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poipole', 803);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poipole', True, 793);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 73, 67, 73, 67, 73, 7, 1009);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1009, 4, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stakataka', 805);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stakataka', True, 794);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 131, 211, 53, 101, 13, 7, 1010);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1010, 6, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1010, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blacephalon', 806);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blacephalon', True, 795);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (53, 127, 53, 151, 79, 107, 7, 1011);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1011, 10, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1011, 8, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zeraora', 807);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zeraora', True, 796);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 112, 75, 102, 80, 143, 7, 1012);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1012, 13, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meltan', 808);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meltan', True, 797);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (46, 65, 65, 55, 35, 34, 7, 1013);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1013, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('silvally', 773);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('silvally', True, 798);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 95, 95, 95, 95, 95, 7, 1014);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1014, 1, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hakamo-o', 783);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hakamo-o', True, 799);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 75, 90, 65, 70, 65, 7, 1015);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1015, 16, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1015, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kommo-o', 784);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kommo-o', True, 800);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 125, 100, 105, 85, 7, 1016);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1016, 16, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1016, 2, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kommo-o-totem', False, 800);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 110, 125, 100, 105, 85, 7, 1017);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1017, 16, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1017, 2, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cosmoem', 790);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cosmoem', True, 801);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (43, 29, 131, 29, 131, 37, 7, 1018);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1018, 14, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('solgaleo', 791);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('solgaleo', True, 802);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (137, 137, 107, 113, 89, 97, 7, 1019);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1019, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1019, 9, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lunala', 792);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lunala', True, 803);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (137, 113, 89, 137, 107, 97, 7, 1020);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1020, 14, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1020, 8, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('naganadel', 804);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('naganadel', True, 804);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (73, 73, 73, 127, 73, 121, 7, 1021);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1021, 4, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1021, 16, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('melmetal', 809);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('melmetal', True, 805);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (135, 143, 143, 80, 65, 34, 7, 1022);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1022, 9, 7);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('melmetal-gmax', False, 805);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (135, 143, 143, 80, 65, 34, 8, 1023);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1023, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('brionne', 729);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('brionne', True, 806);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 69, 69, 91, 81, 50, 7, 1024);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1024, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tsareena', 763);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tsareena', True, 807);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 120, 98, 50, 98, 72, 7, 1025);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1025, 12, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('golisopod', 768);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('golisopod', True, 808);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 140, 60, 90, 40, 7, 1026);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1026, 7, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1026, 11, 7);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('palossand', 770);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palossand', True, 809);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 75, 110, 100, 75, 35, 7, 1027);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1027, 8, 7);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1027, 5, 7);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grookey', 810);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grookey', True, 810);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 50, 40, 40, 65, 8, 1028);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1028, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scorbunny', 813);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scorbunny', True, 811);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 71, 40, 40, 40, 69, 8, 1029);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1029, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sobble', 816);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sobble', True, 812);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 40, 40, 70, 40, 70, 8, 1030);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1030, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skwovet', 819);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skwovet', True, 813);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 55, 55, 35, 35, 25, 8, 1031);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1031, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rookidee', 821);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rookidee', True, 814);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (38, 47, 35, 33, 35, 57, 8, 1032);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1032, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('blipbug', 824);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('blipbug', True, 815);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (25, 20, 20, 25, 45, 45, 8, 1033);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1033, 7, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nickit', 827);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nickit', True, 816);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 28, 28, 47, 52, 50, 8, 1034);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1034, 17, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gossifleur', 829);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gossifleur', True, 817);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 60, 40, 60, 10, 8, 1035);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1035, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wooloo', 831);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wooloo', True, 818);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (42, 40, 55, 40, 45, 48, 8, 1036);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1036, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chewtle', 833);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chewtle', True, 819);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 64, 50, 38, 38, 44, 8, 1037);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1037, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('yamper', 835);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('yamper', True, 820);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (59, 45, 50, 40, 50, 26, 8, 1038);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1038, 13, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rolycoly', 837);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rolycoly', True, 821);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 40, 50, 40, 50, 30, 8, 1039);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1039, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('applin', 840);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('applin', True, 822);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 80, 40, 40, 20, 8, 1040);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1040, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1040, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('thwackey', 811);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('thwackey', True, 823);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 70, 55, 60, 80, 8, 1041);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1041, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rillaboom', 812);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rillaboom', True, 824);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 125, 90, 60, 70, 85, 8, 1042);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1042, 12, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rillaboom-gmax', False, 824);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 125, 90, 60, 70, 85, 8, 1043);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1043, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('raboot', 814);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raboot', True, 825);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 86, 60, 55, 60, 94, 8, 1044);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1044, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cinderace', 815);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cinderace', True, 826);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 116, 75, 65, 75, 119, 8, 1045);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1045, 10, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cinderace-gmax', False, 826);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 116, 75, 65, 75, 119, 8, 1046);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1046, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drizzile', 817);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drizzile', True, 827);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 55, 95, 55, 90, 8, 1047);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1047, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('inteleon', 818);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('inteleon', True, 828);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 65, 125, 65, 120, 8, 1048);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1048, 11, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('inteleon-gmax', False, 828);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 65, 125, 65, 120, 8, 1049);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1049, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('greedent', 820);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('greedent', True, 829);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 95, 95, 55, 75, 20, 8, 1050);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1050, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('corvisquire', 822);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corvisquire', True, 830);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 67, 55, 43, 55, 77, 8, 1051);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1051, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('corviknight', 823);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corviknight', True, 831);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (98, 87, 105, 53, 85, 67, 8, 1052);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1052, 3, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1052, 9, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('corviknight-gmax', False, 831);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (98, 87, 105, 53, 85, 67, 8, 1053);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1053, 3, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1053, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dottler', 825);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dottler', True, 832);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 35, 80, 50, 90, 30, 8, 1054);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1054, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1054, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('thievul', 828);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('thievul', True, 833);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 58, 58, 87, 92, 90, 8, 1055);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1055, 17, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eldegoss', 830);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eldegoss', True, 834);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 50, 90, 80, 120, 60, 8, 1056);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1056, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dubwool', 832);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dubwool', True, 835);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 80, 100, 60, 90, 88, 8, 1057);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1057, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drednaw', 834);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drednaw', True, 836);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 115, 90, 48, 68, 74, 8, 1058);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1058, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1058, 6, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drednaw-gmax', False, 836);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 115, 90, 48, 68, 74, 8, 1059);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1059, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1059, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('boltund', 836);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('boltund', True, 837);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (69, 90, 60, 90, 60, 121, 8, 1060);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1060, 13, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('carkol', 838);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('carkol', True, 838);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 60, 90, 60, 70, 50, 8, 1061);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1061, 6, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1061, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('coalossal', 839);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('coalossal', True, 839);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 80, 120, 80, 90, 30, 8, 1062);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1062, 6, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1062, 10, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('coalossal-gmax', False, 839);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 80, 120, 80, 90, 30, 8, 1063);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1063, 6, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1063, 10, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flapple', 841);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flapple', True, 840);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 80, 95, 60, 70, 8, 1064);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1064, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1064, 16, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flapple-gmax', False, 840);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 80, 95, 60, 70, 8, 1065);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1065, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1065, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('silicobra', 843);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('silicobra', True, 841);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 57, 75, 35, 50, 46, 8, 1066);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1066, 5, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cramorant', 845);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cramorant', True, 842);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 55, 85, 95, 85, 8, 1067);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1067, 3, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1067, 11, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cramorant-gulping', False, 842);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 55, 85, 95, 85, 8, 1068);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1068, 3, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1068, 11, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cramorant-gorging', False, 842);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 55, 85, 95, 85, 8, 1069);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1069, 3, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1069, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arrokuda', 846);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arrokuda', True, 843);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 63, 40, 40, 30, 66, 8, 1070);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1070, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toxel', 848);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxel', True, 844);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 38, 35, 54, 35, 40, 8, 1071);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1071, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1071, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sizzlipede', 850);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sizzlipede', True, 845);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 65, 45, 50, 50, 45, 8, 1072);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1072, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1072, 7, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clobbopus', 852);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clobbopus', True, 846);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 68, 60, 50, 50, 32, 8, 1073);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1073, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sinistea', 854);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sinistea', True, 847);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 45, 74, 54, 50, 8, 1074);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1074, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hatenna', 856);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hatenna', True, 848);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (42, 30, 45, 56, 53, 39, 8, 1075);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1075, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('impidimp', 859);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('impidimp', True, 849);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 45, 30, 55, 40, 50, 8, 1076);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1076, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1076, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('milcery', 868);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('milcery', True, 850);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 40, 40, 50, 61, 34, 8, 1077);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1077, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('falinks', 870);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('falinks', True, 851);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 100, 100, 70, 60, 75, 8, 1078);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1078, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pincurchin', 871);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pincurchin', True, 852);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 101, 95, 91, 85, 15, 8, 1079);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1079, 13, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('snom', 872);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('snom', True, 853);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 25, 35, 45, 30, 20, 8, 1080);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1080, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1080, 7, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('stonjourner', 874);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('stonjourner', True, 854);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 125, 135, 20, 20, 70, 8, 1081);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1081, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eiscue', 875);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eiscue-ice', False, 855);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 110, 65, 90, 50, 8, 1082);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1082, 15, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eiscue-noice', False, 855);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 80, 70, 65, 50, 130, 8, 1083);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1083, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('indeedee', 876);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('indeedee-male', False, 856);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 55, 105, 95, 95, 8, 1084);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1084, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1084, 1, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('indeedee-female', False, 856);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 55, 65, 95, 105, 85, 8, 1085);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1085, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1085, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('morpeko', 877);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('morpeko-full-belly', False, 857);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 95, 58, 70, 58, 97, 8, 1086);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1086, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1086, 17, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('morpeko-hangry', False, 857);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 95, 58, 70, 58, 97, 8, 1087);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1087, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1087, 17, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cufant', 878);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cufant', True, 858);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 80, 49, 40, 49, 40, 8, 1088);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1088, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dracozolt', 880);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dracozolt', True, 859);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 90, 80, 70, 75, 8, 1089);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1089, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1089, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arctozolt', 881);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arctozolt', True, 860);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 100, 90, 90, 80, 55, 8, 1090);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1090, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1090, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dracovish', 882);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dracovish', True, 861);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 90, 100, 70, 80, 75, 8, 1091);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1091, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1091, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arctovish', 883);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arctovish', True, 862);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 90, 100, 80, 90, 55, 8, 1092);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1092, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1092, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('duraludon', 884);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('duraludon', True, 863);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 95, 115, 120, 50, 85, 8, 1093);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1093, 9, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1093, 16, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('duraludon-gmax', False, 863);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 95, 115, 120, 50, 85, 8, 1094);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1094, 9, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1094, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dreepy', 885);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dreepy', True, 864);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (28, 60, 30, 40, 30, 82, 8, 1095);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1095, 16, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1095, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zacian', 888);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zacian', True, 865);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (92, 120, 115, 80, 115, 138, 8, 1096);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1096, 18, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zacian-crowned', False, 865);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (92, 150, 115, 80, 115, 148, 8, 1097);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1097, 18, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1097, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zamazenta', 889);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zamazenta', True, 866);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (92, 120, 115, 80, 115, 138, 8, 1098);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1098, 2, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zamazenta-crowned', False, 866);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (92, 120, 140, 80, 140, 128, 8, 1099);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1099, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1099, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('eternatus', 890);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eternatus', True, 867);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (140, 85, 95, 145, 95, 130, 8, 1100);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1100, 4, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1100, 16, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('eternatus-eternamax', False, 867);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (255, 115, 250, 125, 250, 130, 8, 1101);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1101, 4, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1101, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kubfu', 891);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kubfu', True, 868);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 90, 60, 53, 50, 72, 8, 1102);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1102, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('zarude', 893);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zarude', True, 869);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 120, 105, 70, 95, 105, 8, 1103);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1103, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1103, 12, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('zarude-dada', False, 869);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 120, 105, 70, 95, 105, 8, 1104);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1104, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1104, 12, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('regieleki', 894);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('regieleki', True, 870);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 100, 50, 100, 50, 200, 8, 1105);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1105, 13, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('regidrago', 895);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('regidrago', True, 871);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (200, 100, 50, 100, 50, 80, 8, 1106);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1106, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glastrier', 896);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glastrier', True, 872);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 145, 130, 65, 110, 30, 8, 1107);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1107, 15, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spectrier', 897);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spectrier', True, 873);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 65, 60, 145, 80, 130, 8, 1108);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1108, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('calyrex', 898);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('calyrex', True, 874);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 80, 80, 80, 80, 80, 8, 1109);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1109, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1109, 12, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('calyrex-ice', False, 874);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 165, 150, 85, 130, 50, 8, 1110);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1110, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1110, 15, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('calyrex-shadow', False, 874);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 80, 165, 100, 150, 8, 1111);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1111, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1111, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('enamorus', 905);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('enamorus-incarnate', False, 875);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 115, 70, 135, 80, 106, 8, 1112);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1112, 18, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1112, 3, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('enamorus-therian', False, 875);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 115, 110, 135, 100, 46, 8, 1113);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1113, 18, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1113, 3, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandaconda', 844);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandaconda', True, 876);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 107, 125, 65, 70, 71, 8, 1114);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1114, 5, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandaconda-gmax', False, 876);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 107, 125, 65, 70, 71, 8, 1115);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1115, 5, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('barraskewda', 847);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('barraskewda', True, 877);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 123, 60, 60, 50, 136, 8, 1116);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1116, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toxtricity', 849);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxtricity-amped', False, 878);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 70, 114, 70, 75, 8, 1117);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1117, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1117, 4, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxtricity-low-key', False, 878);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 70, 114, 70, 75, 8, 1118);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1118, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1118, 4, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxtricity-amped-gmax', False, 878);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 70, 114, 70, 75, 8, 1119);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1119, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1119, 4, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toxtricity-low-key-gmax', False, 878);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 98, 70, 114, 70, 75, 8, 1120);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1120, 13, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1120, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('centiskorch', 851);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('centiskorch', True, 879);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 115, 65, 90, 90, 65, 8, 1121);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1121, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1121, 7, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('centiskorch-gmax', False, 879);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 115, 65, 90, 90, 65, 8, 1122);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1122, 10, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1122, 7, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grapploct', 853);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grapploct', True, 880);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 118, 90, 70, 80, 42, 8, 1123);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1123, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('polteageist', 855);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('polteageist', True, 881);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 65, 65, 134, 114, 70, 8, 1124);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1124, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hattrem', 857);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hattrem', True, 882);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 40, 65, 86, 73, 49, 8, 1125);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1125, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hatterene', 858);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hatterene', True, 883);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 90, 95, 136, 103, 29, 8, 1126);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1126, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1126, 18, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hatterene-gmax', False, 883);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 90, 95, 136, 103, 29, 8, 1127);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1127, 14, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1127, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('morgrem', 860);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('morgrem', True, 884);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 45, 75, 55, 70, 8, 1128);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1128, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1128, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('obstagoon', 862);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('obstagoon', True, 885);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (93, 90, 101, 60, 81, 95, 8, 1129);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1129, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1129, 1, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('perrserker', 863);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('perrserker', True, 886);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 110, 100, 50, 60, 50, 8, 1130);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1130, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cursola', 864);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cursola', True, 887);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 95, 50, 145, 130, 30, 8, 1131);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1131, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sirfetchd', 865);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sirfetchd', True, 888);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (62, 135, 95, 68, 82, 65, 8, 1132);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1132, 2, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mr-rime', 866);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mr-rime', True, 889);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 85, 75, 110, 100, 70, 8, 1133);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1133, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1133, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('runerigus', 867);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('runerigus', True, 890);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (58, 95, 145, 50, 105, 30, 8, 1134);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1134, 5, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1134, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('alcremie', 869);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('alcremie', True, 891);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 75, 110, 121, 64, 8, 1135);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1135, 18, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('alcremie-gmax', False, 891);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 60, 75, 110, 121, 64, 8, 1136);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1136, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('frosmoth', 873);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('frosmoth', True, 892);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 65, 60, 125, 90, 65, 8, 1137);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1137, 15, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1137, 7, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('copperajah', 879);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('copperajah', True, 893);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (122, 130, 69, 80, 69, 30, 8, 1138);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1138, 9, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('copperajah-gmax', False, 893);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (122, 130, 69, 80, 69, 30, 8, 1139);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1139, 9, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('drakloak', 886);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('drakloak', True, 894);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 80, 50, 60, 50, 102, 8, 1140);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1140, 16, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1140, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dragapult', 887);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dragapult', True, 895);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 120, 75, 100, 75, 142, 8, 1141);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1141, 16, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1141, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('urshifu', 892);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('urshifu-single-strike', False, 896);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 130, 100, 63, 60, 97, 8, 1142);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1142, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1142, 17, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('urshifu-rapid-strike', False, 896);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 130, 100, 63, 60, 97, 8, 1143);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1143, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1143, 11, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('urshifu-single-strike-gmax', False, 896);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 130, 100, 63, 60, 97, 8, 1144);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1144, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1144, 17, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('urshifu-rapid-strike-gmax', False, 896);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 130, 100, 63, 60, 97, 8, 1145);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1145, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1145, 11, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wyrdeer', 899);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wyrdeer', True, 897);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (103, 105, 72, 105, 75, 65, 8, 1146);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1146, 1, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1146, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kleavor', 900);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kleavor', True, 898);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 135, 95, 45, 70, 85, 8, 1147);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1147, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1147, 6, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('basculegion', 902);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('basculegion-male', False, 899);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 112, 65, 80, 75, 78, 8, 1148);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1148, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1148, 8, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('basculegion-female', False, 899);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 92, 65, 100, 75, 78, 8, 1149);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1149, 11, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1149, 8, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sneasler', 903);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sneasler', True, 900);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 130, 60, 40, 80, 120, 8, 1150);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1150, 2, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1150, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('overqwil', 904);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('overqwil', True, 901);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 115, 95, 65, 65, 85, 8, 1151);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1151, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1151, 4, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('orbeetle', 826);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('orbeetle', True, 902);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 110, 80, 120, 90, 8, 1152);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1152, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1152, 14, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('orbeetle-gmax', False, 902);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 45, 110, 80, 120, 90, 8, 1153);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1153, 7, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1153, 14, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('appletun', 842);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('appletun', True, 903);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 85, 80, 100, 80, 30, 8, 1154);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1154, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1154, 16, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('appletun-gmax', False, 903);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 85, 80, 100, 80, 30, 8, 1155);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1155, 12, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1155, 16, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grimmsnarl', 861);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grimmsnarl', True, 904);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 120, 65, 95, 75, 60, 8, 1156);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1156, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1156, 18, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grimmsnarl-gmax', False, 904);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 120, 65, 95, 75, 60, 8, 1157);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1157, 17, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1157, 18, 8);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ursaluna', 901);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ursaluna', True, 905);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 140, 105, 45, 80, 50, 8, 1158);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1158, 5, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1158, 1, 8);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ursaluna-bloodmoon', False, 905);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (113, 70, 120, 135, 65, 52, 8, 1159);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1159, 5, 8);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1159, 1, 8);



-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
-- POKEMON-SPECIES, FORMS, ITS TYPES AND BASE_STATS
INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nymble', 919);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nymble', True, 906);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (33, 46, 40, 21, 25, 45, 9, 1160);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1160, 7, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sprigatito', 906);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sprigatito', True, 907);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 61, 54, 45, 45, 65, 9, 1161);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1161, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fuecoco', 909);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fuecoco', True, 908);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (67, 45, 59, 63, 40, 36, 9, 1162);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1162, 10, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quaxly', 912);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quaxly', True, 909);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 65, 45, 50, 45, 50, 9, 1163);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1163, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lechonk', 915);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lechonk', True, 910);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (54, 45, 40, 35, 45, 35, 9, 1164);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1164, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tarountula', 917);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tarountula', True, 911);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 41, 45, 29, 40, 20, 9, 1165);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1165, 7, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('floragato', 907);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('floragato', True, 912);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 80, 63, 60, 63, 83, 9, 1166);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1166, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('meowscarada', 908);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('meowscarada', True, 913);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (76, 110, 70, 81, 70, 123, 9, 1167);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1167, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1167, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('crocalor', 910);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('crocalor', True, 914);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (81, 55, 78, 90, 58, 49, 9, 1168);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1168, 10, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('skeledirge', 911);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('skeledirge', True, 915);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (104, 75, 100, 110, 75, 66, 9, 1169);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1169, 10, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1169, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quaxwell', 913);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quaxwell', True, 916);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 65, 65, 60, 65, 9, 1170);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1170, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('quaquaval', 914);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('quaquaval', True, 917);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 120, 80, 85, 75, 85, 9, 1171);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1171, 11, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1171, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('oinkologne', 916);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oinkologne-male', False, 918);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 100, 75, 59, 80, 65, 9, 1172);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1172, 1, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('oinkologne-female', False, 918);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 90, 70, 59, 90, 65, 9, 1173);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1173, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('spidops', 918);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('spidops', True, 919);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 79, 92, 52, 86, 35, 9, 1174);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1174, 7, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pawmi', 921);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pawmi', True, 920);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 50, 20, 40, 25, 60, 9, 1175);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1175, 13, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tandemaus', 924);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tandemaus', True, 921);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 50, 45, 40, 45, 75, 9, 1176);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1176, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fidough', 926);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fidough', True, 922);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (37, 55, 70, 30, 55, 65, 9, 1177);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1177, 18, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('smoliv', 928);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('smoliv', True, 923);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 35, 45, 58, 51, 30, 9, 1178);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1178, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1178, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('squawkabilly', 931);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('squawkabilly-green-plumage', False, 924);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 96, 51, 45, 51, 92, 9, 1179);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1179, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1179, 3, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('squawkabilly-blue-plumage', False, 924);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 96, 51, 45, 51, 92, 9, 1180);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1180, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1180, 3, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('squawkabilly-yellow-plumage', False, 924);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 96, 51, 45, 51, 92, 9, 1181);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1181, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1181, 3, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('squawkabilly-white-plumage', False, 924);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 96, 51, 45, 51, 92, 9, 1182);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1182, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1182, 3, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('nacli', 932);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('nacli', True, 925);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 75, 35, 35, 25, 9, 1183);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1183, 6, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('charcadet', 935);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('charcadet', True, 926);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 50, 40, 50, 40, 35, 9, 1184);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1184, 10, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tadbulb', 938);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tadbulb', True, 927);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (61, 31, 41, 59, 35, 45, 9, 1185);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1185, 13, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wattrel', 940);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wattrel', True, 928);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 35, 55, 40, 70, 9, 1186);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1186, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1186, 3, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('maschiff', 942);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('maschiff', True, 929);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 78, 60, 40, 51, 51, 9, 1187);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1187, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('shroodle', 944);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('shroodle', True, 930);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 65, 35, 40, 35, 75, 9, 1188);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1188, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1188, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bramblin', 946);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bramblin', True, 931);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 65, 30, 45, 35, 60, 9, 1189);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1189, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1189, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toedscool', 948);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toedscool', True, 932);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 40, 35, 50, 100, 70, 9, 1190);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1190, 5, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1190, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('klawf', 950);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('klawf', True, 933);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 100, 115, 35, 55, 75, 9, 1191);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1191, 6, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('capsakid', 951);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('capsakid', True, 934);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 62, 40, 62, 40, 50, 9, 1192);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1192, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rellor', 953);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rellor', True, 935);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (41, 50, 60, 31, 58, 30, 9, 1193);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1193, 7, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flittle', 955);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flittle', True, 936);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (30, 35, 30, 55, 30, 75, 9, 1194);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1194, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tinkatink', 957);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tinkatink', True, 937);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 45, 45, 35, 64, 58, 9, 1195);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1195, 18, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1195, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wiglett', 960);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wiglett', True, 938);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (10, 55, 25, 35, 25, 95, 9, 1196);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1196, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bombirdier', 962);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bombirdier', True, 939);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 103, 85, 60, 85, 82, 9, 1197);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1197, 3, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1197, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('finizen', 963);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('finizen', True, 940);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 45, 40, 45, 40, 75, 9, 1198);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1198, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('varoom', 965);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('varoom', True, 941);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 70, 63, 30, 45, 47, 9, 1199);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1199, 9, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1199, 4, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cyclizar', 967);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cyclizar', True, 942);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 95, 65, 85, 65, 121, 9, 1200);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1200, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1200, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('orthworm', 968);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('orthworm', True, 943);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 85, 145, 60, 55, 65, 9, 1201);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1201, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glimmet', 969);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glimmet', True, 944);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (48, 35, 42, 105, 60, 60, 9, 1202);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1202, 6, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1202, 4, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('greavard', 971);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('greavard', True, 945);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (50, 61, 60, 30, 55, 34, 9, 1203);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1203, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flamigo', 973);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flamigo', True, 946);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (82, 115, 74, 75, 64, 90, 9, 1204);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1204, 3, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1204, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cetoddle', 974);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cetoddle', True, 947);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (108, 68, 45, 30, 40, 43, 9, 1205);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1205, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('veluza', 976);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('veluza', True, 948);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 102, 73, 78, 65, 70, 9, 1206);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1206, 11, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1206, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dondozo', 977);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dondozo', True, 949);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (150, 100, 115, 65, 65, 35, 9, 1207);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1207, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tatsugiri', 978);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tatsugiri-curly', False, 950);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 50, 60, 120, 95, 82, 9, 1208);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1208, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1208, 11, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tatsugiri-droopy', False, 950);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 50, 60, 120, 95, 82, 9, 1209);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1209, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1209, 11, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tatsugiri-stretchy', False, 950);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (68, 50, 60, 120, 95, 82, 9, 1210);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1210, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1210, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('great-tusk', 984);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('great-tusk', True, 951);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 131, 131, 53, 53, 87, 9, 1211);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1211, 5, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1211, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scream-tail', 985);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scream-tail', True, 952);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 65, 99, 65, 115, 111, 9, 1212);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1212, 18, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1212, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('brute-bonnet', 986);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('brute-bonnet', True, 953);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (111, 127, 99, 79, 99, 55, 9, 1213);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1213, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1213, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('flutter-mane', 987);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('flutter-mane', True, 954);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 55, 55, 135, 135, 135, 9, 1214);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1214, 8, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1214, 18, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('slither-wing', 988);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('slither-wing', True, 955);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 135, 79, 85, 105, 81, 9, 1215);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1215, 7, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1215, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sandy-shocks', 989);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sandy-shocks', True, 956);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 81, 97, 121, 85, 101, 9, 1216);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1216, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1216, 5, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-treads', 990);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-treads', True, 957);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 112, 120, 72, 70, 106, 9, 1217);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1217, 5, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1217, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-bundle', 991);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-bundle', True, 958);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (56, 80, 114, 124, 60, 136, 9, 1218);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1218, 15, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1218, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-hands', 992);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-hands', True, 959);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (154, 140, 108, 50, 68, 50, 9, 1219);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1219, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1219, 13, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-jugulis', 993);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-jugulis', True, 960);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (94, 80, 86, 122, 80, 108, 9, 1220);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1220, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1220, 3, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-moth', 994);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-moth', True, 961);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 70, 60, 140, 110, 110, 9, 1221);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1221, 10, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1221, 4, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-thorns', 995);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-thorns', True, 962);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 134, 110, 70, 84, 72, 9, 1222);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1222, 6, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1222, 13, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('frigibax', 996);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('frigibax', True, 963);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 75, 45, 35, 45, 55, 9, 1223);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1223, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1223, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pawmo', 922);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pawmo', True, 964);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 75, 40, 50, 40, 85, 9, 1224);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1224, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1224, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pawmot', 923);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pawmot', True, 965);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 115, 70, 70, 60, 105, 9, 1225);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1225, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1225, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('maushold', 925);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('maushold-family-of-four', False, 966);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 75, 70, 65, 75, 111, 9, 1226);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1226, 1, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('maushold-family-of-three', False, 966);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 75, 70, 65, 75, 111, 9, 1227);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1227, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dachsbun', 927);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dachsbun', True, 967);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (57, 80, 115, 50, 80, 95, 9, 1228);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1228, 18, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dolliv', 929);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dolliv', True, 968);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (52, 53, 60, 78, 78, 33, 9, 1229);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1229, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1229, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('naclstack', 933);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('naclstack', True, 969);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (60, 60, 100, 35, 65, 35, 9, 1230);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1230, 6, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('garganacl', 934);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('garganacl', True, 970);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 100, 130, 45, 90, 35, 9, 1231);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1231, 6, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('armarouge', 936);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('armarouge', True, 971);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 60, 100, 125, 80, 75, 9, 1232);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1232, 10, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1232, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ceruledge', 937);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ceruledge', True, 972);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 125, 80, 60, 100, 85, 9, 1233);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1233, 10, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1233, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('bellibolt', 939);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('bellibolt', True, 973);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (109, 64, 91, 103, 83, 45, 9, 1234);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1234, 13, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kilowattrel', 941);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kilowattrel', True, 974);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (70, 70, 60, 105, 60, 125, 9, 1235);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1235, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1235, 3, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('mabosstiff', 943);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('mabosstiff', True, 975);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 90, 60, 70, 85, 9, 1236);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1236, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('grafaiai', 945);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('grafaiai', True, 976);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (63, 95, 65, 80, 72, 110, 9, 1237);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1237, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1237, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('brambleghast', 947);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('brambleghast', True, 977);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 115, 70, 80, 70, 90, 9, 1238);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1238, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1238, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('toedscruel', 949);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('toedscruel', True, 978);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 70, 65, 80, 120, 100, 9, 1239);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1239, 5, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1239, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('scovillain', 952);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('scovillain', True, 979);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 108, 65, 108, 65, 75, 9, 1240);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1240, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1240, 10, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('rabsca', 954);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('rabsca', True, 980);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (75, 50, 85, 115, 100, 45, 9, 1241);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1241, 7, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1241, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('espathra', 956);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('espathra', True, 981);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 60, 60, 101, 60, 105, 9, 1242);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1242, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tinkatuff', 958);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tinkatuff', True, 982);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (65, 55, 55, 45, 82, 78, 9, 1243);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1243, 18, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1243, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('tinkaton', 959);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('tinkaton', True, 983);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 75, 77, 70, 105, 94, 9, 1244);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1244, 18, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1244, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wugtrio', 961);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wugtrio', True, 984);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (35, 100, 50, 50, 70, 120, 9, 1245);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1245, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('palafin', 964);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palafin-zero', False, 985);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 70, 72, 53, 62, 100, 9, 1246);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1246, 11, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('palafin-hero', False, 985);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 160, 97, 106, 87, 100, 9, 1247);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1247, 11, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('glimmora', 970);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('glimmora', True, 986);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (83, 55, 90, 130, 81, 86, 9, 1248);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1248, 6, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1248, 4, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('houndstone', 972);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('houndstone', True, 987);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (72, 101, 100, 50, 97, 68, 9, 1249);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1249, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('cetitan', 975);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('cetitan', True, 988);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (170, 113, 65, 45, 55, 73, 9, 1250);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1250, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('annihilape', 979);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('annihilape', True, 989);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (110, 115, 80, 50, 90, 90, 9, 1251);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1251, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1251, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('clodsire', 980);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('clodsire', True, 990);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (130, 75, 60, 45, 100, 20, 9, 1252);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1252, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1252, 5, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('farigiraf', 981);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('farigiraf', True, 991);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (120, 90, 70, 110, 70, 60, 9, 1253);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1253, 1, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1253, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dudunsparce', 982);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dudunsparce-two-segment', False, 992);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 100, 80, 85, 75, 55, 9, 1254);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1254, 1, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dudunsparce-three-segment', False, 992);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 100, 80, 85, 75, 55, 9, 1255);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1255, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('kingambit', 983);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('kingambit', True, 993);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 120, 60, 85, 50, 9, 1256);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1256, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1256, 9, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gimmighoul', 999);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gimmighoul', True, 994);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 70, 75, 70, 10, 9, 1257);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1257, 8, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gimmighoul-roaming', False, 994);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (45, 30, 25, 75, 45, 80, 9, 1258);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1258, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('wo-chien', 1001);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('wo-chien', True, 995);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (85, 85, 100, 95, 135, 70, 9, 1259);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1259, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1259, 12, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chien-pao', 1002);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chien-pao', True, 996);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 80, 90, 65, 135, 9, 1260);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1260, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1260, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ting-lu', 1003);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ting-lu', True, 997);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (155, 110, 125, 55, 80, 45, 9, 1261);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1261, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1261, 5, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('chi-yu', 1004);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('chi-yu', True, 998);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (55, 80, 80, 135, 120, 100, 9, 1262);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1262, 17, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1262, 10, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('roaring-moon', 1005);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('roaring-moon', True, 999);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 139, 71, 55, 101, 119, 9, 1263);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1263, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1263, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-valiant', 1006);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-valiant', True, 1000);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (74, 130, 90, 120, 60, 116, 9, 1264);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1264, 18, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1264, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('koraidon', 1007);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koraidon', True, 1001);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 115, 85, 100, 135, 9, 1265);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1265, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1265, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koraidon-limited-build', False, 1001);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 115, 85, 100, 135, 9, 1266);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1266, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1266, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koraidon-sprinting-build', False, 1001);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 115, 85, 100, 135, 9, 1267);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1267, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1267, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koraidon-swimming-build', False, 1001);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 115, 85, 100, 135, 9, 1268);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1268, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1268, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('koraidon-gliding-build', False, 1001);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 135, 115, 85, 100, 135, 9, 1269);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1269, 2, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1269, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('miraidon', 1008);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miraidon', True, 1002);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 100, 135, 115, 135, 9, 1270);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1270, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1270, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miraidon-low-power-mode', False, 1002);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 100, 135, 115, 135, 9, 1271);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1271, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1271, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miraidon-drive-mode', False, 1002);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 100, 135, 115, 135, 9, 1272);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1272, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1272, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miraidon-aquatic-mode', False, 1002);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 100, 135, 115, 135, 9, 1273);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1273, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1273, 16, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('miraidon-glide-mode', False, 1002);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (100, 85, 100, 135, 115, 135, 9, 1274);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1274, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1274, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('walking-wake', 1009);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('walking-wake', True, 1003);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (99, 83, 91, 125, 83, 109, 9, 1275);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1275, 11, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1275, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-leaves', 1010);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-leaves', True, 1004);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 130, 88, 70, 108, 104, 9, 1276);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1276, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1276, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('poltchageist', 1012);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('poltchageist', True, 1005);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (40, 45, 45, 74, 54, 50, 9, 1277);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1277, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1277, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('okidogi', 1014);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('okidogi', True, 1006);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 128, 115, 58, 86, 80, 9, 1278);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1278, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1278, 2, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('munkidori', 1015);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('munkidori', True, 1007);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 75, 66, 130, 90, 106, 9, 1279);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1279, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1279, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('fezandipiti', 1016);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('fezandipiti', True, 1008);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 91, 82, 70, 125, 99, 9, 1280);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1280, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1280, 18, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('ogerpon', 1017);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ogerpon', True, 1009);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 84, 60, 96, 110, 9, 1281);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1281, 12, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ogerpon-wellspring-mask', False, 1009);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 84, 60, 96, 110, 9, 1282);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1282, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1282, 11, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ogerpon-hearthflame-mask', False, 1009);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 84, 60, 96, 110, 9, 1283);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1283, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1283, 10, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('ogerpon-cornerstone-mask', False, 1009);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 120, 84, 60, 96, 110, 9, 1284);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1284, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1284, 6, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gouging-fire', 1020);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gouging-fire', True, 1010);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (105, 115, 121, 65, 93, 91, 9, 1285);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1285, 10, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1285, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('raging-bolt', 1021);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('raging-bolt', True, 1011);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (125, 73, 91, 137, 89, 75, 9, 1286);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1286, 13, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1286, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-boulder', 1022);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-boulder', True, 1012);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 120, 80, 68, 108, 124, 9, 1287);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1287, 6, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1287, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('iron-crown', 1023);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('iron-crown', True, 1013);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 72, 100, 122, 108, 98, 9, 1288);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1288, 9, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1288, 14, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('terapagos', 1024);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('terapagos', True, 1014);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 65, 85, 65, 85, 60, 9, 1289);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1289, 1, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('terapagos-terastal', False, 1014);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (95, 95, 110, 105, 110, 85, 9, 1290);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1290, 1, 9);

INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('terapagos-stellar', False, 1014);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (160, 105, 110, 130, 110, 85, 9, 1291);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1291, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('pecharunt', 1025);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('pecharunt', True, 1015);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (88, 88, 160, 88, 88, 88, 9, 1292);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1292, 4, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1292, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('lokix', 920);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('lokix', True, 1016);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 102, 78, 52, 55, 92, 9, 1293);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1293, 7, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1293, 17, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arboliva', 930);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arboliva', True, 1017);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (78, 69, 90, 125, 109, 39, 9, 1294);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1294, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1294, 1, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('revavroom', 966);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('revavroom', True, 1018);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 119, 90, 54, 67, 90, 9, 1295);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1295, 9, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1295, 4, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('arctibax', 997);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('arctibax', True, 1019);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 95, 66, 45, 65, 62, 9, 1296);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1296, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1296, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('baxcalibur', 998);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('baxcalibur', True, 1020);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (115, 145, 92, 75, 86, 87, 9, 1297);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1297, 16, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1297, 15, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('gholdengo', 1000);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('gholdengo', True, 1021);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (87, 60, 95, 133, 91, 84, 9, 1298);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1298, 9, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1298, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('dipplin', 1011);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('dipplin', True, 1022);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (80, 80, 110, 95, 80, 40, 9, 1299);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1299, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1299, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('sinistcha', 1013);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('sinistcha', True, 1023);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (71, 60, 106, 121, 80, 70, 9, 1300);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1300, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1300, 8, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('archaludon', 1018);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('archaludon', True, 1024);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (90, 105, 130, 125, 65, 85, 9, 1301);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1301, 9, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1301, 16, 9);

INSERT INTO pokemon.pokemon_species (name, pokedex_index)
VALUES ('hydrapple', 1019);
INSERT INTO pokemon.form (name, is_default, fk_pokemon_species)
VALUES ('hydrapple', True, 1025);
INSERT INTO pokemon.base_stats (base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, fk_generation, fk_form)
VALUES (106, 80, 110, 120, 80, 44, 9, 1302);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1302, 12, 9);
INSERT INTO pokemon.form_has_type_per_generation (fk_form, fk_type, fk_generation)
VALUES (1302, 16, 9);



