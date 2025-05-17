-- Load the full schema
\i schema/schema.sql

-- Load core static data that rarely changes
\i data/games.sql
\i data/weapons.sql
\i data/skills.sql
\i data/status_effects.sql
\i data/skill_effect.sql
\i data/weapon_effect.sql
\i data/skill_prerequisite.sql
\i data/structured_restrictions.sql
\i data/skill_restrictions.sql
\i data/weapon_restrictions.sql

-- Now load the banners (heroes + hero-skill mappings)
-- Always after the core data so references exist
\i data/banners/fallen_2025.sql
-- \i data/banners/previous_banner.sql
-- \i data/banners/next_banner.sql
