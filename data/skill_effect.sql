-- Fell Blast effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Fell Blast' 
AND e.name IN ('Fell Spirit', 'Distant Counter');

-- Scowling Fighter effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Scowling Fighter' 
AND e.name = 'Scowl';

-- Higher Ground effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Higher Ground' 
AND e.name IN ('Savior', 'Warp Bubble');

-- Bond Breaker effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Bond Breaker' 
AND e.name IN ('Distant Counter', 'Fell Spirit', 'Schism', 'Miracle');

-- S/D Spiked Wall effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'S/D Spiked Wall' 
AND e.name IN ('Bulwark', 'Tempo');

-- Odd Spd Wave 4 effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Odd Spd Wave 4' 
AND e.name = 'Null Follow-Up';

-- Atk/Def Fortune effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Atk/Def Fortune' 
AND e.name = 'Null Bonuses';

-- Assault Fighter effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Assault Fighter' 
AND e.name = 'Guaranteed Follow-Up';

-- For the True King effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'For the True King' 
AND e.name IN ('Savior', 'Preempt Pulse');

-- Magic Shield+ effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Magic Shield+' 
AND e.name IN ('Null Penalties', 'Gravity');

-- Holy Pressure effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Holy Pressure' 
AND e.name = 'Gravity';

-- Atk/Res Tidings effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Atk/Res Tidings' 
AND e.name = 'Null Counter';

-- Pulse Up: Ploy effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Pulse Up: Ploy' 
AND e.name IN ('Preempt Pulse', 'Ploy', 'Exposure');

-- Lull Spd/Def 3 effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Lull Spd/Def 3'
AND e.name IN ('Null Bonuses');

-- New Opening effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'New Opening'
AND e.name IN ('Tempo');

-- Bestial Agility effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Bestial Agility'
AND e.name IN ('Canto', 'Null Follow-Up');

-- Preempt Screech effects
INSERT INTO skill_effect (skill_id, effect_id)
SELECT s.skill_id, e.effect_id
FROM skills s, status_effects e
WHERE s.name = 'Preempt Screech'
AND e.name IN ('Feud', 'Preempt Pulse');