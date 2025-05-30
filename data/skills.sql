-- Special: Fell Blast
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Fell Blast', 'Special',
    'Cooldown = 3. Boosts damage by 50% of Res. ' ||
    'If HP >= 25% at phase start, grants [Fell Spirit] to self and allies within 2 spaces. ' ||
    'If foe initiates, or if Special is ready/triggered, reduces next hit by 40%. Unit can counter at any range. ' ||
    '[Fell Spirit]: inflicts -4 to all stats, neutralizes counterattack denial, allows damage reduction from Specials to trigger twice (once per combat), and inflicts additional -2 stats when engaged.',
    500,
    FALSE
);

-- A Skill: Diluvial Boost
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Diluvial Boost', 'A',
    'Grants HP+5. If foe initiates or HP >= 50%, grants Atk/Def/Res+9 during combat and restores 7 HP after.',
    300,
    TRUE
);

-- B Skill: Scowling Fighter
INSERT INTO skills (name, type, effect, sp_cost, inheritable)
VALUES (
    'Scowling Fighter', 'B',
    'If foe initiates or HP >= 25%, inflicts Atk/Res-4, deals +20% Res, reduces damage by 20% Res, grants Special charge +1 per attack. ' ||
    'If foe''s Special triggers and Res check passes, inflicts Special cooldown +1 on foe (pre-combat).',
    300,
    TRUE
);

-- C Skill: Higher Ground
INSERT INTO skills (name, type, effect, sp_cost, inheritable)
VALUES (
    'Higher Ground', 'C',
    'Prevents enemy warping within 3 (melee) or 4 (ranged) spaces. ' ||
    'Triggers Savior against ranged foes attacking nearby allies. Grants Def/Res+4 during combat vs ranged foes.',
    300,
    TRUE
);

-- Special: Gust
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Gust', 'Special',
    'Cooldown = 3. Boosts Special damage by 50% of unit''s Spd. ' ||
    'If unit''s or foe''s Special is ready or triggered before/during combat, and if unit''s Spd >= foe''s Spd - 4, ' ||
    'reduces damage from foe''s next attack during combat by 40% (once per combat; excludes area-of-effect Specials).',
    500,
    TRUE
);

-- A Skill: Bond Breaker
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Bond Breaker', 'A',
    'Unit can counterattack regardless of range. At start of phase, if HP >= 25%, grants [Fell Spirit] to unit and allies within 2 spaces for 1 turn ' ||
    'and inflicts Atk/Spd-7 and [Schism] on nearest foes and nearby foes. ' ||
    'If foe initiates or unit''s HP >= 25%, grants Atk/Spd/Def/Res+9 and reduces damage from first hit by 7. ' ||
    'If HP > 1 and foe would KO unit, unit survives with 1 HP (once per combat; excludes non-Special Miracle-like effects). ' ||
    '[Fell Spirit]: inflicts -4 to all stats, neutralizes counterattack denial, allows once-per-combat damage reduction effects from Special to trigger twice, ' ||
    'and inflicts an additional -2 to all stats when engaged (for 1 turn).',
    300,
    FALSE
);

-- B Skill: S/D Spiked Wall
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'S/D Spiked Wall', 'B',
    'Melee foes cannot move through adjacent spaces; ranged foes cannot move through spaces within 2 of unit (ignores Pass). ' ||
    'Inflicts Spd/Def-4, deals bonus damage = 15% of unit''s Spd or Def (whichever is higher), reduces damage from foe''s first hit by 7, ' ||
    'and neutralizes Special cooldown charge -X effects on unit during combat.',
    300,
    TRUE
);

-- C Skill: Odd Spd Wave 4
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Odd Spd Wave 4', 'C',
    'At start of turn, grants Spd+6 to unit and allies within 2 spaces for 1 turn. ' ||
    'If unit''s Spd >= foe''s Spd - 5, neutralizes guaranteed follow-ups by foe and follow-up denial on unit during combat. ' ||
    'On odd-numbered turns, grants Spd+6 to unit during combat.',
    300,
    TRUE
);

-- Special: Sturdy Beast
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Sturdy Beast', 'Special',
    'Cooldown = 3. Boosts damage by 50% of Def if transformed (40% if not). ' ||
    'If unit''s or foe''s Special is ready/triggered, and unit is transformed or has Def >= foe''s Def - 4, reduces next hit by 40% (once per combat; excluding AoE Specials).',
    500,
    TRUE
);

-- A Skill: Atk/Def Fortune
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Atk/Def Fortune', 'A',
    'Improves transformation condition: also triggers if unit is within 2 spaces of beast/dragon ally or has <=2 adjacent non-beast/dragon allies. ' ||
    'In Aether Raids (defense), transforms at enemy turn 1 if condition met. ' ||
    'If transformed or foe initiates, grants Atk/Def+8, neutralizes foe''s Atk/Def bonuses, and restores 7 HP after combat.',
    300,
    TRUE
);

-- B Skill: Assault Fighter
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Assault Fighter', 'B',
    'If unit initiates or is within 3 of an ally: inflicts Atk/Def-4, deals +20% Def as damage, ' ||
    'reduces damage by 20% of Def, guarantees follow-up, and halves foe''s % damage reduction (non-Specials; no AoEs).',
    300,
    TRUE
);

-- C Skill: For the True King
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'For the True King', 'C',
    'If foe with Range = 2 attacks ally within 2 spaces, triggers [Savior] on unit. If foe initiates against target ally within 4 spaces, triggers [Savior]. ' ||
    'Target is support partner or highest Atk ally. Unit can move within 2 of target. ' ||
    'If transformed or foe initiates, grants Atk/Def/Res+5, +7 damage, -7 damage taken, Special cooldown -1 before first hit, and allows once-per-combat Specials to trigger twice.',
    300,
    FALSE
);

-- Assist: Magic Shield+
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Magic Shield+', 'Assist',
    'Range = 1. Heals ally for 50% of Atk (min 8). Grants Atk/Res+6 and neutralizes penalties during combat for 1 turn. ' ||
    'From turn 2 onward, also grants another action and restricts unit''s and Pair Up cohort''s movement to 1 for the turn. ' ||
    'No EXP/SP gain. Treated as Rally Assist. No effect on Special cooldown.',
    400,
    TRUE
);

-- Special: Holy Pressure
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Holy Pressure', 'Special',
    'Cooldown = 3. Assist skills do not reduce cooldown. ' ||
    'When triggered, deals +45% of foe''s Res as damage (post-staff calculation). ' ||
    'If triggered in combat, inflicts [Gravity] on target and adjacent foes after combat.',
    500,
    TRUE
);

-- A Skill: Atk/Res Tidings
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Atk/Res Tidings', 'A',
    'If unit initiates or is within 3 of an ally: grants Atk/Res = (number of allies within 3 × 2) + 8 (max 12), and foe cannot counterattack.',
    300,
    TRUE
);

-- B Skill: Resonance 4
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Resonance 4', 'B',
    'Upon entering combat, unit takes damage = 20% of (max HP - 20). ' ||
    ' Inflicts Spd/Res-4 on foe. Unit deals bonus damage and reduces foe''s % damage reduction based on lost HP: ' ||
    '+(HP lost × 2) damage (max 12) and reduction piercing = (HP lost × 10)% (max 60%). No AoE Specials.',
    300,
    TRUE
);

-- C Skill: Pulse Up: Ploy
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Pulse Up: Ploy', 'C',
    'At turn start, grants Special cooldown -1. ' ||
    'At start of player/enemy phase, if foes within 3 rows/columns have Res < unit''s Res+5, inflicts [Ploy] and [Exposure] on them through their next actions.',
    300,
    TRUE
);

-- Special: Dragon Fang
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Dragon Fang', 'Special',
    'Cooldown = 4. Boost Atk by 50%.',
    200,
    TRUE
);

-- B Skill: Lull Spd/Def 3
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Lull Spd/Def 3', 'B',
    'Inflicts Spd/Def-3 on foe and neutralizes foe''s bonuses to Spd/Def (from skills like Fortify, Rally, etc.) during combat.',
    240,
    TRUE
);

-- C Skill: Rouse Atk/Spd 3
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Rouse Atk/Spd 3', 'C',
    'At start of turn, if unit is not adjacent to an ally, grants Atk/Spd+6 for 1 turn.',
    240,
    TRUE
);

-- Special: Nimble Beast
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Nimble Beast', 'Special',
    'Cooldown = 3. Boosts damage by X% of unit''s Spd when Special triggers (if transformed, X = 50; otherwise, X = 40). ' ||
    'If both of the following conditions are met, reduces damage from foe''s next attack by 40% during combat: ' ||
    '- Unit''s or foe''s Special is ready, or unit''s or foe''s Special triggered before or during this combat. ' ||
    '- Unit is transformed or unit''s Spd >= foe''s Spd-4. (Once per combat; excluding area-of-effect Specials).',
    500,
    TRUE
);

-- A Skill: New Opening
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'New Opening', 'A',
    'If unit can transform, transformation effects gain "if unit is within 2 spaces of a beast or dragon ally, ' ||
    'or if number of adjacent allies other than beast or dragon allies <= 2" as a trigger condition (in addition to existing conditions). ' ||
    'If defending in Aether Raids, at the start of enemy turn 1, if conditions for transforming are met, unit transforms. ' ||
    'If unit is transformed or if foe''s HP >= 75% at start of combat, grants Atk/Spd/Def/Res+9 to unit, ' ||
    'neutralizes effects that inflict "Special cooldown charge -X" on unit, unit deals +X damage (excluding area-of-effect Specials), ' ||
    'reduces damage from foe''s first attack by X during combat ("first attack" normally means only the first strike; ' ||
    'for effects that grant "unit attacks twice," it means the first and second strikes), reduces damage from foe''s Specials ' ||
    'by an additional X (excluding area-of-effect Specials; X = number of spaces from start position to end position of whoever ' ||
    'initiated combat x 4; max 12), and restores 7 HP to unit after combat.',
    300,
    FALSE
);

-- B Skill: Beastial Agility
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Bestial Agility', 'B',
    'Enables [Canto (Rem. +1; Min 2)] while transformed. If unit is transformed or unit''s HP >= 25% at start of combat, ' ||
    'inflicts Spd/Def-4 on foe and deals damage = 20% of the greater of unit''s Spd or Def (excluding area-of-effect Specials), ' ||
    'and also, if unit''s Spd > foe''s Spd, neutralizes effects that guarantee foe''s follow-up attacks and ' ||
    'effects that prevent unit''s follow-up attacks during combat.',
    300,
    TRUE
);

-- C Skill: Preempt Screech
INSERT INTO skills (
    name, type, effect, sp_cost, inheritable)
VALUES (
    'Preempt Screech', 'C',
    'Inflicts Spd/Def-4 on foe, disables skills of all foes, excluding foe in combat, and grants Special cooldown count-1 ' ||
    'to unit before unit''s first attack during combat.',
    300,
    TRUE
);