/*
This is my first time doing a full project using SQL, so I will comment as I go regarding the functionality of each line of code.
*/



--TABLE: GAMES

-- Drop the table first in case you're re-running the script
DROP TABLE IF EXISTS games CASCADE;

CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,         -- e.g., "Awakening", "Path of Radiance"
    abbreviation VARCHAR(10) NOT NULL UNIQUE   -- e.g., "FE13", "FE9", with a maximum length of 10 characters
);



-- TABLE: WEAPONS

-- Drop the table first in case you're re-running the script
DROP TABLE IF EXISTS weapons CASCADE;

-- Drop the ENUM type if it's being redefined
DROP TYPE IF EXISTS weapon_enum CASCADE;

-- Define weapon types allowed for heroes
CREATE TYPE weapon_enum AS ENUM ('Sword', 'Lance', 'Axe', 'Dagger', 'Beast', 'Dragon', 'Staff', 'Tome', 'Bow');

CREATE TABLE weapons (
    weapon_id SERIAL PRIMARY KEY,                       -- Unique weapon ID
    name TEXT NOT NULL UNIQUE,                          -- Weapon name, must be filled and unique to avoid duplicates
    type weapon_enum NOT NULL,                          -- Weapon type constrained by weapon_enum (e.g., Sword, Lance, Axe, etc.)
    effect TEXT NOT NULL,                               -- Description of the weapon's special effect or ability, must be filled
    might INTEGER NOT NULL CHECK (might >= 0),          -- Weapon might (damage), must be non-negative
    sp_cost INTEGER NOT NULL CHECK (sp_cost >= 0),      -- SP cost, must be non-negative
    inheritable BOOLEAN DEFAULT TRUE,                   -- Whether the weapon can be inherited (default is TRUE)
    range INTEGER NOT NULL CHECK (range IN (1, 2))      -- Attack range of the weapon, limited to 1 (melee) or 2 (ranged)
);



-- TABLE: HEROES

-- Drop the table first in case you're re-running the script
DROP TABLE IF EXISTS heroes CASCADE;

-- Drop the ENUM types if they are being redefined
DROP TYPE IF EXISTS movement_enum CASCADE;
DROP TYPE IF EXISTS color_enum CASCADE;

-- Define movement types allowed for heroes
CREATE TYPE movement_enum AS ENUM ('INFANTRY', 'FLIER', 'CAVALRY', 'ARMORED');

-- Define color types allowed for heroes
CREATE TYPE color_enum AS ENUM ('Red', 'Blue', 'Green', 'Colorless');

-- Define stat variation types for heroes (e.g., boon, bane, none)
CREATE TYPE stat_variation AS ENUM ('BOON', 'BANE', 'NONE');

-- Table for all heroes in FEH
CREATE TABLE heroes (
    hero_id SERIAL PRIMARY KEY,                          -- Unique ID for each hero
    name TEXT NOT NULL,                                  -- Hero name, must be filled
    weapon_type weapon_enum NOT NULL,                    -- Weapon type, constrained by weapon_enum
    movement_type movement_enum NOT NULL,                -- Movement type, constrained by movement_enum
    color color_enum NOT NULL,                           -- Color, constrained by color_enum
    variant TEXT,                                        -- E.g., Brave, Legendary, Ascended
    release_date DATE,                                   -- Date the hero was released
    weapon_id INTEGER REFERENCES weapons(weapon_id),     -- Foreign key linking to the weapon used by this hero
    game_id INTEGER REFERENCES games(game_id),           -- Foreign key linking to the game of origin
    
    -- Base stats
    hp INTEGER CHECK (hp >= 0),
    atk INTEGER CHECK (atk >= 0),
    spd INTEGER CHECK (spd >= 0),
    def INTEGER CHECK (def >= 0),
    res INTEGER CHECK (res >= 0),

    -- Boon/Bane for each stat
    hp_variation stat_variation DEFAULT 'NONE',
    atk_variation stat_variation DEFAULT 'NONE',
    spd_variation stat_variation DEFAULT 'NONE',
    def_variation stat_variation DEFAULT 'NONE',
    res_variation stat_variation DEFAULT 'NONE',

    
    UNIQUE(name, variant)                                -- Ensures no duplicate hero names with the same variant
);



-- TABLE: SKILLS

-- Drop the table first in case you're re-running the script
DROP TABLE IF EXISTS skills CASCADE;

-- Drop the ENUM type if it's being redefined
DROP TYPE IF EXISTS skill_type_enum CASCADE;

-- Define allowed skill types using ENUM
CREATE TYPE skill_type_enum AS ENUM ('Special', 'Assist', 'A', 'B', 'C', 'Echo');

-- Create the skills table
CREATE TABLE skills (
    skill_id SERIAL PRIMARY KEY,                         -- Unique skill ID
    name TEXT NOT NULL UNIQUE,                           -- Skill name, must be filled and unique
    type skill_type_enum NOT NULL,                       -- Skill type, constrained by ENUM
    effect TEXT NOT NULL,                                -- Description of the skill's effect, must be filled
    sp_cost INTEGER NOT NULL CHECK (sp_cost >= 0),       -- SP cost, must be non-negative
    inheritable BOOLEAN NOT NULL DEFAULT TRUE            -- Whether the skill can be inherited (default is TRUE)
);



-- TABLE: STATUS-EFFECTS

DROP TABLE IF EXISTS status_effects CASCADE;

CREATE TABLE status_effects (
    effect_id SERIAL PRIMARY KEY,                        -- Unique ID for each status effect
    name TEXT NOT NULL UNIQUE,                           -- Name of the effect (e.g., Exposure, Canto)
    description TEXT NOT NULL                            -- Explanation of the effect
);



-- TABLE: HERO-SKILL (Many-to-many)

DROP TABLE IF EXISTS hero_skill CASCADE;

CREATE TABLE hero_skill (
    hero_id INTEGER REFERENCES heroes(hero_id),          -- Hero who knows this skill
    skill_id INTEGER REFERENCES skills(skill_id),        -- Skill learned by the hero
    PRIMARY KEY (hero_id, skill_id)                      -- Combination must be unique
);

/*
This is a many-to-many table. It allows for a hero to have many skills, and for a skill to be had by many heroes. This table
works by having one entry per hero-skill relationship. For example, if a hero has 4 skills, there will be 4 entries with the
same hero_id, but each with a different skill_id.

Note: This table lists only the final tier of each skill a hero has. For example, if a hero has Breath of Life 4, then 
versions 1–3 will not be listed here. It is assumed the hero already has access to the previous tiers.

In a future iteration, I may include all prerequisite skill tiers, which would be useful for modeling inheritance requirements.
*/



-- TABLE: SKILL-EFFECT (Many-to-many)

DROP TABLE IF EXISTS skill_effect CASCADE;

CREATE TABLE skill_effect (
    skill_id INTEGER REFERENCES skills(skill_id),               -- Skill that triggers the effect
    effect_id INTEGER REFERENCES status_effects(effect_id),     -- Effect triggered by the skill
    PRIMARY KEY (skill_id, effect_id)
);



-- TABLE: SKILL-PREREQUISITE

-- Drop if you're re-running
DROP TABLE IF EXISTS skill_prerequisite CASCADE;

-- Create the many-to-many relationship between skills
CREATE TABLE skill_prerequisite (
    skill_id INTEGER REFERENCES skills(skill_id) ON DELETE CASCADE,                 -- The skill being learned
    prerequisite_skill_id INTEGER REFERENCES skills(skill_id) ON DELETE CASCADE,    -- The required skill
    PRIMARY KEY (skill_id, prerequisite_skill_id)
);



-- TABLE: STRUCURED-RESTRICTIONS

-- Drop if you're re-running
DROP TABLE IF EXISTS structured_restrictions CASCADE;

CREATE TABLE structured_restrictions (
    restriction_id SERIAL PRIMARY KEY,
    description TEXT NOT NULL UNIQUE,       -- Human-readable description
    weapon_type weapon_enum,                -- Optional: Restrict to a specific weapon type
    movement_type movement_enum,            -- Optional: Restrict to a specific movement type
    color color_enum,                       -- Optional: Restrict to a specific color
    inheritable BOOLEAN DEFAULT TRUE        -- FALSE means it cannot be inherited by anyone
);



-- TABLE: SKILL-RESTRICTIONS

-- Drop if you're re-running
DROP TABLE IF EXISTS skill_restriction CASCADE;

CREATE TABLE skill_restriction (
    skill_id INTEGER NOT NULL REFERENCES skills(skill_id) ON DELETE CASCADE,
    restriction_id INTEGER REFERENCES structured_restrictions(restriction_id) ON DELETE CASCADE,
    PRIMARY KEY (skill_id, restriction_id)
);



-- TABLE: WEAPON-RESTRICTIONS

-- Drop if you're re-running
DROP TABLE IF EXISTS weapon_restriction CASCADE;

CREATE TABLE weapon_restriction (
    weapon_id INTEGER NOT NULL REFERENCES weapons(weapon_id) ON DELETE CASCADE,
    restriction_id INTEGER REFERENCES structured_restrictions(restriction_id) ON DELETE CASCADE,
    PRIMARY KEY (weapon_id, restriction_id)
);
