CREATE VIEW generations AS 
SELECT g.number as generation, main_region, vg.name as version_group 
FROM generation g 
JOIN version_group vg ON (g.pk_generation = vg.fk_generation);

CREATE VIEW pokemon_base_stats AS
SELECT ps.pokedex_index AS 'Number', f.name AS 'Pokémon', bs.fk_generation AS 'Generation', 
bs.base_attack AS 'Base Attack', bs.base_defense AS 'Base Defense', bs.base_special AS 'Base Special', 
bs.base_special_attack AS 'Base Special Attack', bs.base_special_defense AS 'Base Special Defense', 
bs.base_speed AS 'Base Speed'
FROM pokemon.form f 
JOIN pokemon.base_stats bs ON (f.pk_form = bs.fk_form)
JOIN pokemon.pokemon_species ps ON (f.fk_pokemon_species = ps.pk_pokemon_species)
ORDER BY ps.pokedex_index;

CREATE VIEW form_types AS
SELECT f.name as form_name, t.name as type_name, g.number as gen_number, g.main_region as main_region
FROM pokemon.form f
JOIN pokemon.form_has_type_per_generation ftpg ON (ftpg.fk_form = f.pk_form)
JOIN pokemon.type t ON (ftpg.fk_type = t.pk_type)
JOIN pokemon.generation g ON (ftpg.fk_generation = g.pk_generation);

CREATE VIEW learned_moves AS
SELECT f.name AS form_name, m.name AS move_name, vgroup.name AS version_group, flm.method, flm.level, gen.main_region
FROM pokemon.form f
JOIN pokemon.form_learned_moves flm ON (f.pk_form = flm.fk_form)
JOIN pokemon.move m ON (m.pk_move = flm.fk_move)
JOIN pokemon.version_group vgroup ON (vgroup.pk_version_group = flm.fk_version_group)
JOIN pokemon.generation gen ON (vgroup.fk_generation = gen.pk_generation);