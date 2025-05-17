-- Status: Slaying -1
INSERT INTO status_effects (name, description) VALUES
    ('Slaying -1',
    'Special Cooldown -1');


-- Status: Slaying -2
INSERT INTO status_effects (name, description) VALUES
    ('Slaying -2',
    'Special Cooldown -2');

-- Status: Brave
INSERT INTO status_effects (name, description) VALUES
    ('Brave',
    'Unit attacks twice');


-- Status: Wrathful Staff
INSERT INTO status_effects (name, description) VALUES
    ('Wrathful Staff',
    'Calculates damage using the lower of foe''s Def or Res');


-- Status: Bonus Doubler
INSERT INTO status_effects (name, description) VALUES
    ('Bonus Doubler',
    'Buffs to Atk/Spd/Def/Res = current bonus on each of unit''s stats');


-- Status: Null Penalties
INSERT INTO status_effects (name, description) VALUES
    ('Null Penalties',
    'Neutralizes penalties on unit''s stats');


-- Status: Preempt Pulse
INSERT INTO status_effects (name, description) VALUES
    ('Preempt Pulse',
    'Special cooldown -1 before unit''s first attack');


-- Status: Null Bonuses
INSERT INTO status_effects (name, description) VALUES
    ('Null Bonuses',
    'Neutralizes bonuses on foes');


-- Status: Adaptive Damage
INSERT INTO status_effects (name, description) VALUES
    ('Adaptive Damage',
    'Calculates damage using the lower of foe''s Def or Res during combat');


-- Status: Distant Counter
INSERT INTO status_effects (name, description) VALUES
    ('Distant Counter',
    'Unit can counterattack regardless of foe''s range during combat.');


-- Status: Fell Spirit
INSERT INTO status_effects (name, description) VALUES
    ('Fell Spirit',
    'Inflicts -4 to all stats. Neutralizes counterattack denial. Allows damage reduction from Specials to trigger twice (once per combat). Inflicts an additional -2 to all stats when engaged.');


-- Status: Null C-Disrupt
INSERT INTO status_effects (name, description) VALUES
    ('Null C-Disrupt',
    'Neutralizes counterattack denial');


-- Status: Scowl
INSERT INTO status_effects (name, description) VALUES
    ('Scowl',
    'Inflicts Special cooldown count+1 on foe before foe''s first attack');


-- Status: Warp Bubble
INSERT INTO status_effects (name, description) VALUES
    ('Warp Bubble',
    'Prevents foes from warping within 4 spaces of unit');


-- Status: Miracle
INSERT INTO status_effects (name, description) VALUES
    ('Miracle',
    'If unit''s HP > 1 and foe would reduce unit''s HP to 0, unit survives with 1 HP');


-- Status: Savior
INSERT INTO status_effects (name, description) VALUES
    ('Savior',
    'Allows the unit to take the place of an ally that a foe initiated combat against');


-- Status: Schism
INSERT INTO status_effects (name, description) VALUES
    ('Schism',
    'Neutralizes the effects of Triangle Attack, Dual Strike, and Pathfinder');


-- Status: Bulwark
INSERT INTO status_effects (name, description) VALUES
    ('Bulwark',
    'Prevents Close ranged foes from moving through spaces adjacent to unit, and prevents Ranged foes from moving through spaces within 2 spaces of unit.');


-- Status: Tempo
INSERT INTO status_effects (name, description) VALUES
    ('Tempo',
    'Neutralizes effects that grant "Special cooldown charge +X" to foe or inflict "Special cooldown charge -X" on unit');


-- Status: Null Follow-Up
INSERT INTO status_effects (name, description) VALUES
    ('Null Follow-Up',
    'Neutralizes effects that guarantee foe''s follow-up attacks and effects that prevent unit''s follow-up attacks during combat.');


-- Status: Gravity
INSERT INTO status_effects (name, description) VALUES
    ('Gravity',
    'Decreases the number of tiles a unit can move to 1');


-- Status: Null Counter
INSERT INTO status_effects (name, description) VALUES
    ('Null Counter',
    'Prevents unit''s counterattack');


-- Status: Ploy
INSERT INTO status_effects (name, description) VALUES
    ('Ploy',
    'Neutralizes the Temporary buffs from Bonus Doubler and Grand Strategy, and the damage boosting effect of Treachery on the unit during combat');


-- Status: Exposure
INSERT INTO status_effects (name, description) VALUES
    ('Exposure',
    'Grants +10 damage on attacks to the foe');


-- Status: Guaranteed Follow-Up
INSERT INTO status_effects (name, description) VALUES
    ('Guaranteed Follow-Up',
    'Guarantees follow-up');


-- Status: Triangle Attack
INSERT INTO status_effects (name, description) VALUES
    ('Triangle Attack',
    'Grants units the ability attack twice if they initiate combat and are within 2 spaces of 2 or more allies with Triangle Attack');


-- Status: Pathfinder
INSERT INTO status_effects (name, description) VALUES
    ('Pathfinder',
    'Allows allies to move through the space occupied by the unit with Pathfinder without that space counting towards their normal movement');


-- Status: Dual Strike
INSERT INTO status_effects (name, description) VALUES
    ('Dual Strike',
    'Grants units the ability attack twice if they initiate combat and are adjacent to an ally with Dual Strike');


-- Status: Grand Strategy
INSERT INTO status_effects (name, description) VALUES
    ('Grand Strategy',
    'Grants temporary buffs to Atk/Spd/Def/Res = 2 x current penalty on each of unit''s stats');
    

-- Status: Treachery
INSERT INTO status_effects (name, description) VALUES
    ('Treachery',
    'Grants additional damage = total Bonuses on unit');
