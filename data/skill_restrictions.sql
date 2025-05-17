-- Diluvial Boost (Armored only - all weapon types)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Diluvial Boost'
AND r.description IN (
    'Sword / Armored restriction',
    'Lance / Armored restriction',
    'Axe / Armored restriction',
    'Bow / Armored restriction',
    'Dagger / Armored restriction',
    'Tome / Armored restriction',
    'Staff / Armored restriction',
    'Beast / Armored restriction',
    'Dragon / Armored restriction'
);

-- Scowling Fighter (Dragon/Armored only)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Scowling Fighter'
AND r.description = 'Dragon / Armored restriction';

-- Higher Ground (Beast/Dragon Armored)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Higher Ground'
AND r.description IN (
    'Beast / Armored restriction',
    'Dragon / Armored restriction'
);

-- Gust (Infantry Sword/Lance/Axe)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Gust'
AND r.description IN (
    'Sword / Infantry restriction',
    'Lance / Infantry restriction',
    'Axe / Infantry restriction'
);

-- S/D Spiked Wall (Infantry non-ranged)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'S/D Spiked Wall'
AND r.description IN (
    'Sword / Infantry restriction',
    'Lance / Infantry restriction',
    'Axe / Infantry restriction',
    'Beast / Infantry restriction',
    'Dragon / Infantry restriction'
);

-- Sturdy Beast & Atk/Def Fortune (Beast - any movement)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN ('Sturdy Beast', 'Atk/Def Fortune')
AND r.description LIKE 'Beast%';

-- Atk/Def Fortune (Beast only)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Atk/Def Fortune'
AND r.description IN (
    'Beast / Infantry restriction',
    'Beast / Armored restriction',
    'Beast / Cavalry restriction',
    'Beast / Flying restriction'
);

-- Assault Fighter (Armored only)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Assault Fighter'
AND r.description LIKE '% / Armored restriction';

-- Staff skills (Magic Shield+, Holy Pressure, Atk/Res Tidings)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN ('Magic Shield+', 'Holy Pressure', 'Atk/Res Tidings')
AND r.description LIKE 'Staff%';

-- Resonance 4 (Tome/Staff - any movement)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Resonance 4'
AND (r.description LIKE 'Tome%' OR r.description LIKE 'Staff%');

-- Pulse Up: Ploy (Infantry only)
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Pulse Up: Ploy'
AND r.description LIKE '% / Infantry restriction';