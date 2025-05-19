-- Hero: Mythic  Elm (Red Beast Flying)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    obtain_method, release_date,
    hp, atk, spd, def, res,
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Elm', 'Beast', 'FLYING', 'Red', 'Mythic',
    'SUMMON 5 STAR', '2025-04-28',
    41, 43, 48, 33, 30,
    'BANE', 'BANE', 'BOON', 'NONE', 'BANE'
);

-- Link Mythic Elm's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Jaws of Closure')
WHERE name = 'Elm' AND variant = 'Mythic';

-- Link Mythic Elm's skills
INSERT INTO hero_skill (hero_id, skill_id)
SELECT h.hero_id, s.skill_id
FROM heroes h, skills s
WHERE h.name = 'Elm' AND h.variant = 'Mythic'
AND s.name IN ('Nimble Beast', 'New Opening', 'Bestial Agility', 'Preempt Screech');

-- Link Mythic Elm's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem Heroes')
WHERE name = 'Elm' AND variant = 'Mythic';