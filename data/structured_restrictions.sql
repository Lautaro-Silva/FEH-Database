-- All combinations of weapon type and movement type (inheritable, color=NULL)
-- 1. Axe
INSERT INTO structured_restrictions (description, weapon_type, movement_type, color, inheritable)
VALUES 
('Axe / INFANTRY restriction', 'Axe', 'INFANTRY', NULL, TRUE),
('Axe / ARMORED restriction', 'Axe', 'ARMORED', NULL, TRUE),
('Axe / CAVALRY restriction', 'Axe', 'CAVALRY', NULL, TRUE),
('Axe / FLYING restriction', 'Axe', 'FLYING', NULL, TRUE),

-- 2. Sword
('Sword / INFANTRY restriction', 'Sword', 'INFANTRY', NULL, TRUE),
('Sword / ARMORED restriction', 'Sword', 'ARMORED', NULL, TRUE),
('Sword / CAVALRY restriction', 'Sword', 'CAVALRY', NULL, TRUE),
('Sword / FLYING restriction', 'Sword', 'FLYING', NULL, TRUE),

-- 3. Lance
('Lance / INFANTRY restriction', 'Lance', 'INFANTRY', NULL, TRUE),
('Lance / ARMORED restriction', 'Lance', 'ARMORED', NULL, TRUE),
('Lance / CAVALRY restriction', 'Lance', 'CAVALRY', NULL, TRUE),
('Lance / FLYING restriction', 'Lance', 'FLYING', NULL, TRUE),

-- 4. Bow
('Bow / INFANTRY restriction', 'Bow', 'INFANTRY', NULL, TRUE),
('Bow / ARMORED restriction', 'Bow', 'ARMORED', NULL, TRUE),
('Bow / CAVALRY restriction', 'Bow', 'CAVALRY', NULL, TRUE),
('Bow / FLYING restriction', 'Bow', 'FLYING', NULL, TRUE),

-- 5. Dagger
('Dagger / INFANTRY restriction', 'Dagger', 'INFANTRY', NULL, TRUE),
('Dagger / ARMORED restriction', 'Dagger', 'ARMORED', NULL, TRUE),
('Dagger / CAVALRY restriction', 'Dagger', 'CAVALRY', NULL, TRUE),
('Dagger / FLYING restriction', 'Dagger', 'FLYING', NULL, TRUE),

-- 6. Tome
('Tome / INFANTRY restriction', 'Tome', 'INFANTRY', NULL, TRUE),
('Tome / ARMORED restriction', 'Tome', 'ARMORED', NULL, TRUE),
('Tome / CAVALRY restriction', 'Tome', 'CAVALRY', NULL, TRUE),
('Tome / FLYING restriction', 'Tome', 'FLYING', NULL, TRUE),

-- 7. Staff
('Staff / INFANTRY restriction', 'Staff', 'INFANTRY', NULL, TRUE),
('Staff / ARMORED restriction', 'Staff', 'ARMORED', NULL, TRUE),
('Staff / CAVALRY restriction', 'Staff', 'CAVALRY', NULL, TRUE),
('Staff / FLYING restriction', 'Staff', 'FLYING', NULL, TRUE),

-- 8. Beast
('Beast / INFANTRY restriction', 'Beast', 'INFANTRY', NULL, TRUE),
('Beast / ARMORED restriction', 'Beast', 'ARMORED', NULL, TRUE),
('Beast / CAVALRY restriction', 'Beast', 'CAVALRY', NULL, TRUE),
('Beast / FLYING restriction', 'Beast', 'FLYING', NULL, TRUE),

-- 9. Dragon
('Dragon / INFANTRY restriction', 'Dragon', 'INFANTRY', NULL, TRUE),
('Dragon / ARMORED restriction', 'Dragon', 'ARMORED', NULL, TRUE),
('Dragon / CAVALRY restriction', 'Dragon', 'CAVALRY', NULL, TRUE),
('Dragon / FLYING restriction', 'Dragon', 'FLYING', NULL, TRUE),

-- 10. Null (fully unrestricted)
('Unrestricted: all weapon and movement types allowed.', NULL, NULL, NULL, TRUE);
