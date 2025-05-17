-- data/weapon_effects.sql

-- Weapon: Fell Child's Arts
INSERT INTO weapon_effect (weapon_id, effect_id)
SELECT w.weapon_id, e.effect_id
FROM weapons w, status_effects e
WHERE w.name = 'Fell Child''s Arts'
AND e.name IN ('Slaying -1', 'Brave', 'Adaptive Damage');

-- Weapon: Fell Child's Blade
INSERT INTO weapon_effect (weapon_id, effect_id)
SELECT w.weapon_id, e.effect_id
FROM weapons w, status_effects e
WHERE w.name = 'Fell Child''s Blade'
AND e.name IN ('Slaying -1', 'Null Bonuses');

-- Weapon: Arcane Crest
INSERT INTO weapon_effect (weapon_id, effect_id)
SELECT w.weapon_id, e.effect_id
FROM weapons w, status_effects e
WHERE w.name = 'Arcane Crest'
AND e.name IN ('Slaying -1', 'Null Penalties', 'Preempt Pulse');

-- Weapon: Martyr's Staff
INSERT INTO weapon_effect (weapon_id, effect_id)
SELECT w.weapon_id, e.effect_id
FROM weapons w, status_effects e
WHERE w.name = 'Martyr''s Staff'
AND e.name IN ('Slaying -1', 'Wrathful Staff', 'Bonus Doubler', 'Null Penalties', 'Guaranteed Follow-Up', 'Miracle');