-- Arcane Crest (Beast/Armored only)
INSERT INTO weapon_restriction (weapon_id, restriction_id)
SELECT w.weapon_id, r.restriction_id
FROM weapons w, structured_restrictions r
WHERE w.name = 'Arcane Crest'
AND r.description = 'Beast / Armored restriction';