-- Dragon/Armored only
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Scowling Fighter'
AND r.description = 'Dragon / Armored restriction';

-- Beast/Dragon Armored
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Higher Ground'
AND r.description IN (
    'Beast / Armored restriction',
    'Dragon / Armored restriction'
);

-- Infantry Sword/Lance/Axe
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Gust'
AND r.description IN (
    'Sword / Infantry restriction',
    'Lance / Infantry restriction',
    'Axe / Infantry restriction'
);

-- Infantry non-ranged
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

-- Beast - any movement
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN (
    'Sturdy Beast', 
    'Atk/Def Fortune'
    )
AND r.description LIKE 'Beast%';

-- Armored only - any movement
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN (
    'Assault Fighter', 
    'Diluvial Boost'
    )
AND r.description LIKE '% / Armored restriction';

-- Staff only - any movement
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN (
    'Magic Shield+',
    'Holy Pressure',
    'Atk/Res Tidings'
    )
AND r.description LIKE 'Staff%';

-- Tome/Staff - any movement
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Resonance 4'
AND (r.description LIKE 'Tome%' OR r.description LIKE 'Staff%');

-- Infantry only
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Pulse Up: Ploy'
AND r.description LIKE '% / Infantry restriction';

-- Non staff
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Dragon Fang'
AND r.description NOT LIKE 'Staff%';

-- No Restrictions
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name = 'Odd Spd Wave 4'
AND r.description = 'Unrestricted: all weapon and movement types allowed.';

-- Infantry/Cavalry only
INSERT INTO skill_restriction (skill_id, restriction_id)
SELECT s.skill_id, r.restriction_id
FROM skills s, structured_restrictions r
WHERE s.name IN (
    'Lull Spd/Def 3', 
    'Rouse Atk/Spd 3'
    )
AND (r.description LIKE '% / Infantry restriction' OR r.description LIKE '% / Cavalry restriction');