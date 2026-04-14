from data_population import utils
from logger_config import logger
import db

def get_current_stats(cursor, form_id):
    select_string = 'base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, base_special'
    try:
        stats = db.simple_select(cursor, "base_stats", select_string, "fk_form", form_id)
    except Exception:
        logger.error("Error in SELECT, current_stats")
        raise
    return stats[0], stats[1], stats[2], stats[3], stats[4], stats[5], stats[6]

def update_stat_value(cursor, pokemon_name, stat_values_name, old_stat_values, generation, newest_generation):
    logger.debug(f"Updating {pokemon_name} stats")
    # Update the generation in the current row to the newest one
    form_id = db.get_pk_by_name(cursor, 'form', pokemon_name)

    db.simple_update(cursor, "base_stats", ("fk_generation",), (newest_generation,), ("fk_form",), (form_id,))

    # Create a new row to store its old stats = create new row + update old stats
    base_hp, base_attack, base_defense, base_spa, base_spd, base_speed, base_special = get_current_stats(cursor, form_id)
    
    attributes_tuple = '(base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed, base_special, fk_generation, fk_form)'
    insert_values = (base_hp, base_attack, base_defense, base_spa, base_spd, base_speed, base_special, generation, form_id)

    try:
        db.simple_insert(cursor, 'base_stats', attributes_tuple, insert_values)
    except Exception:
        logger.error("Error inserting base stats")

    for i in range(0, len(stat_values_name)):
        db.simple_update(cursor, "base_stats", (stat_values_name[i],), (old_stat_values[i],), ("fk_form", "fk_generation"), (form_id, generation))

def stat_changes(cursor):
    # There are Pokémon whose stats have changed
    base_hp = 'base_hp'
    base_attack = 'base_attack'
    base_defense = 'base_defense'
    base_spa = 'base_special_attack'
    base_spd = 'base_special_defense'
    base_speed = 'base_speed'

    # Pokémon feature the generation they were introduced in, but the corresponding stat is the newest one 

    # 1. Beedrill and Butterfree attack and special attack went from 80 to 90, respectively, in Gen VI
    update_stat_value(cursor, 'butterfree', [base_spa], [80], 1, 6)
    update_stat_value(cursor, 'beedrill', [base_attack], [80], 1, 6)

    # 2. Pidegot's speed was 91 before Gen VI
    update_stat_value(cursor, 'pidgeot', [base_speed], [91], 1, 6)

    # 3.  Arbok's attack is 95, but it was 85 prior to Gen VII
    #     Corsola's defenses changed in the same way
    # 23. Corsola's HP went from 55 to 65 in Gen VII
    #     Pelipper's HP went from 85 to 95 in Gen VII
    update_stat_value(cursor, 'arbok', [base_attack], [85], 1, 7)
    update_stat_value(cursor, 'corsola', [base_hp, base_defense, base_spd], [55, 85, 85], 2, 7)
    update_stat_value(cursor, 'pelipper', [base_spa], [85], 3, 7)

    # 4/5. Pikachu's defense and special defense increased in Gen VI
    update_stat_value(cursor, 'pikachu', [base_defense, base_spd], [30, 40], 1, 6)

    # 6. Raichu's speed went from 100 to 110 in Gen VI
    #    Vileplume's special attack stat changed in Gen VI (100 -> 110)
    update_stat_value(cursor, 'raichu', [base_speed], [100], 1, 6)
    update_stat_value(cursor, 'vileplume', [base_spa], [100], 1, 6)

    # 7. Nidoqueen's base attack stat was 82 before Gen VI
    update_stat_value(cursor, 'nidoqueen', [base_attack], [82], 1, 6)

    # 8. Nidoking's base attack stat was 92 before Gen VI
    update_stat_value(cursor, 'nidoking', [base_attack], [92], 1, 6)

    # 9. Clefable's special attack changed in Gen VI, from 85 to 95
    #    Poliwrath's attack changed in Gen VI, from 85 to 95
    #    Alakazam's special defense changed in Gen VI, from 85 to 95
    #    Bellosom's defense changed in Gen VI, from 85 to 95
    #    Jumpluff's special defense changed in Gen VI, from 85 to 95
    update_stat_value(cursor, 'clefable', [base_spa], [85], 1, 6)
    update_stat_value(cursor, 'poliwrath', [base_attack], [85], 1, 6)
    update_stat_value(cursor, 'alakazam', [base_spd], [85], 1, 6)
    update_stat_value(cursor, 'bellossom', [base_defense], [85], 2, 6)
    update_stat_value(cursor, 'jumpluff', [base_spd], [85], 2, 6)

    # 10. Wigglytuff's base special attack was 75 prior to Gen VI
    #     Ampharo's defense went from 75 to 85 in Gen VI
    update_stat_value(cursor, 'wigglytuff', [base_spa], [75], 1, 6)

    # 11. Dugtrio's base attack stat increased in Gen VII
    #     Magcargo's special attack stat increased in Gen VII from 80 to 90
    #     Masquerain's special attack went from 80 t 100 in Gen VII
    #     Masquerain's speed went from 60 to 80 in Gen VII
    #     Chimecho's special defense went from 80 to 90 in Gen VII
    # 15. Chimecho's hp went from 65 to 75 in Gen VII
    # 26. Chimecho's defense went from 70 to 80 in Gen VII
    # 22. Magcargo's HP increased in Gen VII
    update_stat_value(cursor, 'dugtrio', [base_attack], [80], 1, 7)
    update_stat_value(cursor, 'magcargo', [base_spa, base_hp], [80, 50], 2, 7)
    update_stat_value(cursor, 'masquerain', [base_spa, base_spd], [80, 60], 3, 7)
    update_stat_value(cursor, 'chimecho', [base_hp, base_defense, base_spd], [65, 70, 80], 3, 7)

    # 12. Mega Alakazam's special defense went from 95 to 105 in Gen VII
    #     Crustel's attack changed in the same way
    update_stat_value(cursor, 'alakazam-mega', [base_spd], [95], 6, 7)
    update_stat_value(cursor, 'crustle', [base_attack], [95], 5, 7)

    # 13. Victreebell's special defense went from 60 to 70 in Gen VI
    update_stat_value(cursor, 'victreebel', [base_spd], [60], 1, 6)

    # 14. Golem's attack. 110 -> 120 in Gen VI
    update_stat_value(cursor, 'golem', [base_attack], [110], 1, 6)

    # 15. Farfetch'd's attack: 65 -> 90 in Gen VII
    #     Exeggutor's spd 65 -> 75 in Gen VII
    #     Mantine's HP: 65 -> 85 in Gen VII
    #     Chimecho's HP from 65 to 75 in Gen VII -> Done
    update_stat_value(cursor, 'farfetchd', [base_attack], [65], 1, 7)
    update_stat_value(cursor, 'exeggutor', [base_attack], [65], 1, 7)
    update_stat_value(cursor, 'mantine', [base_attack], [65], 2, 7)

    # 16. Dodrio's speed increased in Gen VII (100 -> 110)
    update_stat_value(cursor, 'dodrio', [base_speed], [100], 1, 7)

    # 17. Electrode's speed in Gen VII (140 -> 150)
    update_stat_value(cursor, 'electrode', [base_speed], [140], 1, 7)
    
    # 18. Noctowl's special attack in Gen VII (76 -> 86)
    update_stat_value(cursor, 'noctowl', [base_spa], [76], 2, 7)

    # 19. Ariado's special defense in Gen VII (60 -> 70)
    #     Masquerain's speed (60 -> 80) -> done
    update_stat_value(cursor, 'ariados', [base_spa], [60], 2, 7)

    # 20. Preivous to Gen VI it was 50
    #     Azumarill's special attack
    #     Staraptor's special defense
    update_stat_value(cursor, 'azumarill', [base_spa], [50], 2, 6)
    update_stat_value(cursor, 'staraptor', [base_spd], [65], 4, 6)

    # 21. 75 before Gen VII
    #     Qwilfish's defense
    #     Volbeat's special defense
    #     Illumise's special defense
    # 23. Volbeat's and Illumise's defense went from 55 to 75 in Gen VII
    update_stat_value(cursor, 'volbeat', [base_defense, base_spd], [55, 75], 3, 7)
    update_stat_value(cursor, 'illumise', [base_defense, base_spd], [55, 75], 3, 7)
    
    # 22. Before Gen VII, it was 50
    #     Magacrgo's HP -> done
    #     Swellow's special attack
    update_stat_value(cursor, 'swellow', [base_spa], [50], 3, 7)

    # 23. Before Gen VII, it was 55
    #     Volbeat's and Illumise's defense -> done
    #     Corsola's HP -> done
    #     Woobat's HP 
    update_stat_value(cursor, 'woobat', [base_hp], [55], 5, 7)

    # 24. Before Gen VI, 90
    #     Beautifly's special attack (90 -> 100)
    update_stat_value(cursor, 'beautifly', [base_attack], [65], 3, 6)

    # 25. Exploud's special defense was 63 before Gen VI
    update_stat_value(cursor, 'exploud', [base_spd], [63], 3, 6)

    # 26. Before Gen VII, it was 70
    #     Delcatty's speed
    #     Lunatone's and Solrock's HP
    #     Chimecho's defense -> done
    #     Cryogonal's HP 
    # 36. Cryogonal's defense was 30 before Gen VII
    update_stat_value(cursor, 'solrock', [base_hp], [70], 3, 7)
    update_stat_value(cursor, 'lunatone', [base_hp], [70], 3, 7)
    update_stat_value(cursor, 'cryogonal', [base_hp, base_defense], [70, 30], 5, 7)

    # 27. Before Gen VI, Roserade's defense was 55
    update_stat_value(cursor, 'roserade', [base_defense], [55], 4, 6)

    # 28/29. Before Gen IX, Cresselia's defense was 120 and Cresselia's special defense was 130
    update_stat_value(cursor, 'cresselia', [base_defense, base_spa], [120, 130], 4, 9)

    # 29. Before Gen IX, it was 130
    #     Zacian's attack
    #     Zamazenta's attack
    #     Zacian's and Zamazenta's special forms stats (Zacian's attack, 170 -> 150 in Gen IX, Zamazenta's defenses 145 -> 140)
    update_stat_value(cursor, 'zacian', [base_attack], [130], 8, 9)
    update_stat_value(cursor, 'zamazenta', [base_attack], [130], 8, 9)
    update_stat_value(cursor, 'zacian-crowned', [base_attack], [170], 8, 9)
    update_stat_value(cursor, 'zamazenta-crowned', [base_defense, base_spd], [145, 145], 8, 9)

    # 30. Before Gen VI, it was 100
    update_stat_value(cursor, 'stoutland', [base_attack], [100], 5, 6)

    # 31. Before Gen VI, it was 105
    update_stat_value(cursor, 'unfezant', [base_attack], [105], 5, 6)

    # 32. In Gen V, it was 70
    update_stat_value(cursor, 'gigalith', [base_spd], [70], 5, 6)
    update_stat_value(cursor, 'leavanny', [base_spd], [70], 5, 6)
    update_stat_value(cursor, 'krookodile', [base_defense], [70], 5, 6)

    # 33. Seismitoad's attack (85 in Gen V)
    update_stat_value(cursor, 'seismitoad', [base_attack], [85], 5, 6)

    # 34. Scolipede's attack (90 in Gen V)
    update_stat_value(cursor, 'scolipede', [base_attack], [90], 5, 6)

    # 35. Beartic's attack (110 before Gen VII)
    update_stat_value(cursor, 'beartic', [base_attack], [110], 5, 7)

    # 36. Cryogonal's defense -> done

    # 150 before Gen VIII
    # Aegislash' attack and special attack
    # Aegislash defense and special defense
    update_stat_value(cursor, 'aegislash-shield', [base_defense, base_spd], [150, 150], 6, 8)
    update_stat_value(cursor, 'aegislash-blade', [base_attack, base_spa], [150, 150], 6, 8)

    # 38. Zacian's special form attack -> done
    # 39 Zamazenta's special form defenses -> done

def update_typing(cursor, pokemon_name, original_typing, new_typing, old_gen, new_gen):

    form_id = db.get_pk_by_name(cursor, 'form', pokemon_name)

    # Right now, Pokémon have the current typing, but it's related to the generation they were introduced in
    
    # Updates the generation, because the Pokémon have their current typings stored
    for i in range(0, len(new_typing)):
        db.simple_update(cursor, "form_has_type_per_generation",
                           ("fk_generation",), (new_gen,),
                           ("fk_form",), (form_id,))
    
    # Now, a new row is created for each type, related to the the first generation they appeared in
    for i in range(0, len(original_typing)):
        type_id = db.get_pk_by_name(cursor, "type", original_typing[i])
        db.simple_insert(cursor, 'form_has_type_per_generation', '(fk_form, fk_type, fk_generation)', (form_id, type_id, old_gen))

def type_changes(cursor):
    
    steel_type = 'steel'
    electric_type = 'electric'
    ghost_type = 'ghost'
    water_type = 'water'
    fire_type = 'fire'
    flying_type = 'flying'
    grass_type = 'grass'
    ice_type = 'ice'
    psychic_type = 'psychic'
    fairy_type = 'fairy'
    normal_type = 'normal'
    
    # Only 25 Pokémon have had their type changed over the years

    # Pokémon already have a type, the newest one, so it's a similar process to the previous one
    # Magnemite, for example, has electric and steel typing in Gen I, according to the database

    # Type changes in Gen II
    # Magnemite and Magneton: electric to electric-steel
    update_typing(cursor, 'magnemite', [electric_type], [electric_type, steel_type], 1, 2)
    update_typing(cursor, 'magneton', [electric_type], [electric_type, steel_type], 1, 2)

    # Type changes in Gen V
    # Rotom: always electric-ghost
    # Heat Rotom:  electric-ghost to electric-fire in Gen V
    # Wash Rotom:  electric-ghost to electric-water in Gen V
    # Frost Rotom: electric-ghost to electric-ice in Gen V
    # Fan Rotom:   electric-ghost to electric-flying in Gen V
    # Mow Rotom:   electric-ghost to electric-grass in Gen V
    update_typing(cursor, 'rotom-heat', [electric_type, ghost_type], [electric_type, fire_type], 4, 5)
    update_typing(cursor, 'rotom-wash', [electric_type, ghost_type], [electric_type, water_type], 4, 5)
    update_typing(cursor, 'rotom-frost', [electric_type, ghost_type], [electric_type, ice_type], 4, 5)
    update_typing(cursor, 'rotom-fan', [electric_type, ghost_type], [electric_type, flying_type], 4, 5)
    update_typing(cursor, 'rotom-mow', [electric_type, ghost_type], [electric_type, grass_type], 4, 5)

    # Type changes in Gen VI
    # Azurill, Marill, Azumarill -> normal to normal-fairy and water to water-fairy
    # Cleffa, Clefairy and Clefable: normal -> fairy
    # Cottonee and Whimsicott -> grass to grass-fairy
    # Ralts, Kirlia and Gardevoir: psychic to psychic-fairy
    # Snubbull and Granbull: normal to fairy
    # Igglybuff, Jigglypuff and Wigglytuff: normal to normal-fairy
    # Mime Jr. and Mr. Mime: psychic to psychic-fairy
    # Mawile: steel to steel-fairy
    # Togepi, Togetic, Togekiss: normal, normal-flying and normal-flying to fairy and fairy-flying
    update_typing(cursor, 'azurill', [normal_type], [normal_type, fairy_type], 3, 6)
    update_typing(cursor, 'marill', [water_type], [water_type, fairy_type], 2, 6)
    update_typing(cursor, 'azumarill', [water_type], [water_type, fairy_type], 2, 6)

    update_typing(cursor, 'cleffa', [normal_type], [fairy_type], 1, 6)
    update_typing(cursor, 'clefairy', [normal_type], [fairy_type], 1, 6)
    update_typing(cursor, 'clefable', [normal_type], [fairy_type], 1, 6)

    update_typing(cursor, 'cottonee', [grass_type], [grass_type, fairy_type], 5, 6)
    update_typing(cursor, 'whimsicott', [grass_type], [grass_type, fairy_type], 5, 6)

    update_typing(cursor, 'ralts', [psychic_type], [psychic_type, fairy_type], 3, 6)
    update_typing(cursor, 'kirlia', [psychic_type], [psychic_type, fairy_type], 3, 6)
    update_typing(cursor, 'gardevoir', [psychic_type], [psychic_type, fairy_type], 3, 6)

    update_typing(cursor, 'snubbull', [normal_type], [fairy_type], 2, 6)
    update_typing(cursor, 'granbull', [normal_type], [fairy_type], 2, 6)

    update_typing(cursor, 'igglybuff', [normal_type], [normal_type, fairy_type], 2, 6)
    update_typing(cursor, 'jigglypuff', [normal_type], [normal_type, fairy_type], 1, 6)
    update_typing(cursor, 'wigglytuff', [normal_type], [normal_type, fairy_type], 1, 6)

    update_typing(cursor, 'mime-jr', [psychic_type], [psychic_type, fairy_type], 4, 6)
    update_typing(cursor, 'mr-mime', [psychic_type], [psychic_type, fairy_type], 1, 6)

    update_typing(cursor, 'mawile', [steel_type], [steel_type, fairy_type], 3, 6)

    update_typing(cursor, 'togepi', [normal_type], [fairy_type], 2, 6)
    update_typing(cursor, 'togetic', [normal_type, flying_type], [fairy_type, flying_type], 2, 6)
    update_typing(cursor, 'togekiss', [normal_type, flying_type], [fairy_type, flying_type], 4, 6)