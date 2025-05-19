-- Weapon: Fell Child's Arts
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range)
VALUES (
    'Fell Child''s Arts', 'Dragon',
    'Accelerates Special trigger (cooldown count-1). Unit attacks twice (even if foe initiates combat). ' ||
    'If foe''s Range = 2, calculates damage using the lower of foe''s Def or Res. ' ||
    'If foe initiates combat or unit''s HP >= 25% at start, inflicts penalty on foe''s Atk/Def/Res = (distinct game titles within 3 spaces) x 3 + 9 (max 15; 15 if Savior). ' ||
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
    'If foe initiates combat or unit''s HP >= 25% at start, inflicts penalty on foe''s stats = (distinct game titles within 3 spaces) x 3 + 4 (max 10), ' ||
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
    'Accelerates Special trigger (cooldown count-1). If foe initiates combat or unit''s HP >= 25% at start: ' ||
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
    'deals bonus damage = 5 x (# of bonus effects on unit + # of penalty effects on foe, max 5), ' ||
    'and guarantees follow-up. ' ||
    'Grants Atk/Res+5 to allies in 3 spaces during combat, and Miracle, +99 HP restore effect (once per map, non-stacking).',
    14, 400, FALSE, 2
);

-- Weapon: Iron Hreiomarr
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range) 
VALUES (
    'Iron Hreiomarr', 'Lance',
    'Grants Atk+3. Enables [Canto (Dist. +2; Max 5)] during turns 1 through 4. ' ||
    'For foes within 3 rows or 3 columns centered on unit, inflicts Atk/Spd/Def-5, inflicts Special cooldown charge -1 ' ||
    'on foe per attack (only highest value applied; does not stack), and those foes suffer guaranteed follow-up attacks during combat. ' ||
    'At start of combat, if unit''s HP >= 25%, grants bonus to unit''s Atk/Spd/Def/Res = number of foes within 3 rows or 3 columns centered on unit x 3 (max 9)' ||
    ', deals damage = 15% of unit''s Atk (excluding area-of-effect Specials), and grants Special cooldown count-X to unit before unit''s first attack during combat ' ||
    '(X = number of spaces from start position to end position of whoever initiated combat, max 3). ',
    16, 400, FALSE, 1
);

-- Weapon: Jaws of Closure
INSERT INTO weapons (
    name, type, effect, might, sp_cost, inheritable, range)
VALUES (
    'Jaws of Closure', 'Beast',
    'Accelerates Special trigger (cooldown count-1). When unit is in combat, foes'' Savior effects will not trigger.' ||
    'After unit acts (if Canto triggers, after Canto), inflicts [Undefended] on closest foes within 5 spaces of unit through their next actions. ' ||
    'For foes within 3 rows or 3 columns centered on unit, inflicts Atk/Spd/Def/Res-5 and ' ||
    'reduces the percentage of foe''s non-Special "reduce damage by X%" skills by 50% during combat (excluding area-of-effect Specials). ' ||
    'At start of combat, if unit''s HP >= 25%, grants bonus to unit''s Atk/Spd/Def/Res= 15% of unit''s Spd at start of combat, ' ||
    'unit deals X x 8 damage (excluding area-of-effect Specials), and reduces damage from foe''s first attack by X x 6 during combat ' ||
    '(X = number of foes within 3 spaces of target, including target; max 4; "first attack" normally means only the first strike; for effects that grant "unit attacks twice," it means the first and second strikes). ' ||
    'At start of turn, if unit is adjacent to only beast or dragon allies or if unit is not adjacent to any ally, '  ||
    'unit transforms (otherwise, unit reverts). If unit transforms, grants Atk+2 and unit can move 1 extra space (that turn only; does not stack). ',
    14, 400, FALSE, 1
);