-- Weapon: Fell Child's Arts
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range)
VALUES (
    'Fell Child''s Arts', 'Dragon',
    'Accelerates Special trigger (cooldown count-1). Unit attacks twice (even if foe initiates combat). ' ||
    'If foe''s Range = 2, calculates damage using the lower of foe''s Def or Res. ' ||
    'If foe initiates combat or unit''s HP ≥ 25% at start, inflicts penalty on foe''s Atk/Def/Res = (distinct game titles within 3 spaces) × 3 + 9 (max 15; 15 if Savior). ' ||
    'Reduces foe''s damage reduction effects by 50% (excluding AoE Specials), deals +20% Res damage, ' ||
    'reduces damage taken and foe''s Specials by same amount (excluding AoE Specials).',
    11, 400, FALSE, 1
);

-- Weapon: Fell Child's Blade
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range) 
VALUES (
    'Fell Child''s Blade', 'Sword',
    'Accelerates Special trigger (cooldown count-1). ' ||
    'Inflicts Atk/Spd/Def/Res-5 and neutralizes bonuses on foes in 3x3 area. ' ||
    'If foe initiates combat or unit''s HP ≥ 25% at start, inflicts penalty on foe''s stats = (distinct game titles within 3 spaces) × 3 + 4 (max 10), ' ||
    'reduces foe''s damage reduction by 50% (excluding AoE Specials), ' ||
    'deals +X damage (20% of Spd), reduces damage and foe''s Specials by X, ' ||
    'and restores 7 HP to unit after combat.',
    16, 400, FALSE, 1
);

-- Weapon: Arcane Crest
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range) 
VALUES (
    'Arcane Crest', 'Beast',
    'Accelerates Special trigger (cooldown count-1). If foe initiates combat or unit''s HP ≥ 25% at start: ' ||
    'grants bonus to unit''s stats = 25% of foe''s Atk -4 (max 14, min 5), neutralizes penalties, ' ||
    'deals +15% of unit''s Atk as damage (incl. AoE), reduces damage taken by 15% of Atk (excl. Røkkr AoE), ' ||
    'and grants Special cooldown -1 before unit''s first attack. ' ||
    'Transforms if adjacent to no allies or only beast/dragon allies; if transformed: grants Atk+2 and Distant Counter.',
    14, 350, TRUE, 1
);

-- Weapon: Martyr's Staff
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range) 
VALUES (
    'Martyr''s Staff', 'Staff',
    'Calculates damage like other weapons. Accelerates Special trigger (min cooldown = 1). ' ||
    'If within 3 spaces of ally at start of phase: grants Atk/Res+6, Bonus Doubler, and neutralizes penalties for 1 turn to unit and allies within 3 spaces. ' ||
    'If initiating combat or within 3 spaces of ally: inflicts Atk/Res penalty = 20% of Res +6, ' ||
    'deals bonus damage = 5 × (# of bonus effects on unit + # of penalty effects on foe, max 5), ' ||
    'and guarantees follow-up. ' ||
    'Grants Atk/Res+5 to allies in 3 spaces during combat, and Miracle, +99 HP restore effect (once per map, non-stacking).',
    14, 400, FALSE, 2
);
