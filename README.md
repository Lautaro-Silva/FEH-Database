# Fire Emblem Heroes Database

This is a personal proyect to learn and experiment how to use SQL and build databases. My idea is to create a PostgreSQL database for tracking Fire Emblem Heroes game data 
with comprehensive relationships between heroes, skills, weapons, and their effects. My aim is to create something that could be usefull to the community and is used by others.

## Features

- **Complete Hero Tracking**: Variants, stats, base kits, and BST calculations
- **Advanced Effect Search**: Find skills/weapons by their effects and status modifications
- **Precise Inheritance Modeling**:
  - Skill prerequisite chains
  - Movement/weapon type restrictions
- **Effect System**: 40+ status effects with complete descriptions (as of the latetest update)
- **Modern Skill Tracking**: Supports all skill types (A/B/C/Special/Assist/Echo)

## Database Schema (Enhanced)

### Core Tables
| Table | Description |
|-------|-------------|
| `games` | All Fire Emblem series titles with abbreviations |
| `weapons` | Weapons with might, range, SP cost, and full effect text |
| `heroes` | Complete character data including boon/bane variations |
| `skills` | 50+ skills with inheritance flags and effect descriptions |
| `status_effects` | 40+ effect definitions (e.g., "Null Follow-Up", "Fell Spirit") |

### Relationship Tables
| Table | Purpose |
|-------|---------|
| `hero_skill` | Complete base kits for all heroes |
| `skill_effect` | 60+ skill-to-effect mappings |
| `weapon_effect` | Weapon effect relationships |
| `skill_prerequisite` | Skill inheritance chains | (NOT YET FINISHED)
| `structured_restrictions` | 36 restriction templates common for skills and weapons |
| `skill_restriction` | 20+ skill inheritance limitations |
| `weapon_restriction` | Weapon inheritance limitations |

## Updated Project Structure
```
feh-database/
├── schema/
│ └── schema.sql # Complete database schema definition
├── data/
│ ├── games.sql # Series title data (17 entries)
│ ├── weapons.sql # Weapon definitions (4 sample PRFs)
│ ├── skills.sql # 50+ skill definitions
│ ├── status_effects.sql # 40+ effect explanations
│ ├── skill_effect.sql # Skill-effect relationships
│ ├── weapon_effect.sql # Weapon-effect relationships
│ ├── skill_prerequisite.sql
│ ├── structured_restrictions.sql # 36 templates retrictions for all skills and weapons
│ ├── skill_restrictions.sql
│ ├── weapon_restrictions.sql
│ └── banners/
│ └── fallen_2025.sql # Complete Fallen 2025 banner (4 heroes)
└── seed_all.sql # Master data loading script
```


## Usage Examples

```bash
# Connect to the database and build it
psql -U postgres -d feh_database
\i seed_all.sql

## Example queries:

# Find all armor-effective weapons
SELECT name FROM weapons WHERE effect LIKE '%effective against armor%';

# Find all skills that grant Null Follow-Up
SELECT s.name, s.type 
FROM skills s
JOIN skill_effect se ON s.skill_id = se.skill_id
JOIN status_effects e ON se.effect_id = e.effect_id
WHERE e.name = 'Null Follow-Up';
```


## Data Expansion
- [ ]  Add more banners, starting for aiming to start with 35th Anniversay Banner
- [ ]  Add the non-final-tier skills to be able to fill the table 'skill_prerequisite'
- [x]  Add new category called 'obtain_method' for heroes to denote if they are from main banners, tempest trials, GHB, etc.
- [ ]  Add the boons and banes for Fallen Banner
