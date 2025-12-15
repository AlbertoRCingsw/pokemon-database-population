CREATE VIEW generations AS 
SELECT g.number as generation, main_region, vg.name as version_group 
FROM generation g JOIN version_group vg 
WHERE g.pk_generation = vg.fk_generation;

CREATE VIEW pokemon_base_stats AS
SELECT ps.name AS species_name, f.name as form_name, 
       bs.base_hp AS hp, 
       bs.base_attack AS attack, 
       bs.base_defense AS defense,
       bs.base_special AS special,
       bs.base_special_attack AS special_attack,
       bs.base_special_defense AS special_defense,
       bs.base_speed AS speed
FROM pokemon.form f, pokemon.base_stats bs, pokemon.pokemon_species ps
WHERE f.pk_form = bs.fk_form AND
	  ps.pk_pokemon_species = f.fk_pokemon_species
ORDER BY pokedex_index;

CREATE VIEW form_types AS
SELECT f.name as form_name, t.name as type_name, g.number as gen_number, g.main_region as main_region
FROM pokemon.form f, pokemon.form_has_type_per_generation ftpg, pokemon.type t, pokemon.generation g
WHERE ftpg.fk_form = f.pk_form AND 
      ftpg.fk_type = t.pk_type AND
      ftpg.fk_generation = g.pk_generation;

CREATE VIEW learned_moves AS
SELECT f.name AS form_name, m.name AS move_name, vgroup.name AS version_group, trio.method, trio.level, gen.main_region
FROM pokemon.form f, pokemon.form_learned_moves trio, pokemon.move m, pokemon.version_group vgroup, pokemon.generation gen
WHERE f.pk_form = trio.fk_form AND
	  m.pk_move = trio.fk_move AND
      vgroup.pk_version_group = trio.fk_version_group AND
      vgroup.fk_generation = gen.pk_generation;