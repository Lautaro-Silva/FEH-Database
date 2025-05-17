-- Hero: Fallen Female Alear (Green Dragon Armored)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    release_date,
    hp, atk, spd, def, res
)
VALUES (
    'Alear', 'Dragon', 'ARMORED', 'Green', 'Female Fallen',
    '2025-05-07',
    51, 48, 18, 45, 49
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

-- Hero: Fallen Male Alear (Red Sword Infantry)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    release_date,
    hp, atk, spd, def, res
)
VALUES (
    'Alear', 'Sword', 'INFANTRY', 'Red', 'Male Fallen',
    '2025-05-07',
    40, 46, 47, 35, 31
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

-- Hero: Rearmed Fallen Dedue (Blue Beast Armored)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    release_date,
    hp, atk, spd, def, res
)
VALUES (
    'Dedue', 'Beast', 'ARMORED', 'Blue', 'Rearmed Fallen',
    '2025-05-07',
    49, 49, 17, 49, 43
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

-- Hero: Fallen Lena (Colorless Staff Infantry)
INSERT INTO heroes (
    name, weapon_type, movement_type, color, variant,
    release_date,
    hp, atk, spd, def, res
)
VALUES (
    'Lena', 'Staff', 'INFANTRY', 'Colorless', 'Fallen',
    '2025-05-07',
    45, 48, 27, 19, 49
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