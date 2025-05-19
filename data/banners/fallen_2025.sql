-- Hero: Fallen Female Alear (Green Dragon Armored)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    obtain_method, release_date,
    hp, atk, spd, def, res,
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Alear', 'Dragon', 'ARMORED', 'Green', 'Female Fallen',
    'SUMMON 5 STAR', '2025-05-07',
    51, 48, 18, 45, 49,
    'BOON', 'BOON', 'NONE', 'NONE', 'BOON'
);

-- Link F!F!Alear's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Fell Child''s Arts') -- Selecting the correct weapon
WHERE name = 'Alear' AND variant = 'Female Fallen';                          -- Ensure the weapon is linked to the correct hero

-- Link F!F!Alear's skills
INSERT INTO hero_skill (hero_id, skill_id)  --  Inserting the conections of id's from both tables
SELECT h.hero_id, s.skill_id                -- Where im getting the id's from
FROM heroes h, skills s
WHERE h.name = 'Alear' AND h.variant = 'Female Fallen' -- Selecting the hero
AND s.name IN ('Fell Blast', 'Diluvial Boost', 'Scowling Fighter', 'Higher Ground'); -- Selecting the skills

-- Link F!F!Alear's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem: Engage') -- Selecting the correct game
WHERE name = 'Alear' AND variant = 'Female Fallen';                      -- Ensure the game is linked to the correct hero

-- Hero: Fallen Male Alear (Red Sword Infantry)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    obtain_method, release_date,
    hp, atk, spd, def, res,
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Alear', 'Sword', 'INFANTRY', 'Red', 'Male Fallen',
    'SUMMON 5 STAR', '2025-05-07',
    40, 46, 47, 35, 31,
    'BANE', 'NONE', 'BOON', 'NONE', 'BANE'
);

-- Link M!F!Alear's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Fell Child''s Blade')
WHERE name = 'Alear' AND variant = 'Male Fallen';

-- Link M!F!Alear's skills
INSERT INTO hero_skill (hero_id, skill_id)
SELECT h.hero_id, s.skill_id
FROM heroes h, skills s
WHERE h.name = 'Alear' AND h.variant = 'Male Fallen'
AND s.name IN ('Gust', 'Bond Breaker', 'S/D Spiked Wall', 'Odd Spd Wave 4');

-- Link M!F!Alear's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem: Engage')
WHERE name = 'Alear' AND variant = 'Male Fallen';

-- Hero: Rearmed Fallen Dedue (Blue Beast Armored)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    obtain_method, release_date,
    hp, atk, spd, def, res,
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Dedue', 'Beast', 'ARMORED', 'Blue', 'Rearmed Fallen',
    'SUMMON 5 STAR', '2025-05-07',
    49, 49, 17, 49, 43,
    'NONE', 'NONE', 'BANE', 'BOON', 'BANE'
);

-- Link R!F!Dedue's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Arcane Crest')
WHERE name = 'Dedue' AND variant = 'Rearmed Fallen';

-- Link R!F!Dedue's skills
INSERT INTO hero_skill (hero_id, skill_id)
SELECT h.hero_id, s.skill_id
FROM heroes h, skills s
WHERE h.name = 'Dedue' AND h.variant = 'Rearmed Fallen'
AND s.name IN ('Sturdy Beast', 'Atk/Def Fortune', 'Assault Fighter', 'For the True King');

-- Link R!F!Dedue's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem: Three Houses')
WHERE name = 'Dedue' AND variant = 'Rearmed Fallen';

-- Hero: Fallen Lena (Colorless Staff Infantry)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    obtain_method, release_date,
    hp, atk, spd, def, res,
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Lena', 'Staff', 'INFANTRY', 'Colorless', 'Fallen',
    'SUMMON 5 STAR', '2025-05-07',
    45, 48, 27, 19, 49,
    'NONE', 'NONE', 'BANE', 'BANE', 'BOON'
);

-- Link F!Lena's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Martyr''s Staff')
WHERE name = 'Lena' AND variant = 'Fallen';

-- Link F!Lena's skills
INSERT INTO hero_skill (hero_id, skill_id)
SELECT h.hero_id, s.skill_id
FROM heroes h, skills s
WHERE h.name = 'Lena' AND h.variant = 'Fallen'
AND s.name IN ('Magic Shield+', 'Holy Pressure', 'Atk/Res Tidings', 'Resonance 4', 'Pulse Up: Ploy');

-- Link F!Lena's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem: Shadow Dragon')
WHERE name = 'Lena' AND variant = 'Fallen';

-- Hero: Fafnir (Blue Cavalry Lance)
INSERT INTO heroes (
    name, weapon_type, movement_type, color,
    obtain_method, release_date,
    hp, atk, spd, def, res, 
    hp_variation, atk_variation, spd_variation, def_variation, res_variation
)
VALUES (
    'Fafnir', 'Lance', 'CAVALRY', 'Blue',
    'GHB', '2025-05-07',
    40, 48, 47, 37, 18,
    'BANE', 'BOON', 'NONE', 'NONE', 'NONE'
);

-- Link Fafnir's weapon
UPDATE heroes SET weapon_id = (SELECT weapon_id FROM weapons WHERE name = 'Iron Hreiomarr')
WHERE name = 'Fafnir';

-- Link Fafnir skills
INSERT INTO hero_skill (hero_id, skill_id)
SELECT h.hero_id, s.skill_id
FROM heroes h, skills s
WHERE h.name = 'Fafnir'
AND s.name IN ('Dragon Fang', 'Lull Spd/Def 3', 'Rouse Atk/Spd 3');

-- Link Fafnir's game
UPDATE heroes SET game_id = (SELECT game_id FROM games WHERE title = 'Fire Emblem Heroes')
WHERE name = 'Fafnir';