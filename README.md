# Fire Emblem Heroes Database

![Fire Emblem Heroes Logo](https://static.wikia.nocookie.net/fireemblem/images/6/69/FEH_Logo.png/revision/latest?cb=20170130200250)

A PostgreSQL database for tracking Fire Emblem Heroes game data with comprehensive relationships between heroes, skills, weapons, and their effects.

## Features

- **Complete Hero Tracking**: Variants, stats, and base kits
- **Effect Search System**: Find skills/weapons by their effects
- **Inheritance Modeling**:
  - Skill prerequisite chains
  - Movement/weapon type restrictions
- **Structured Restrictions**: Reusable templates for common limitations
- **Banner Support**: Organized by release batches

## Database Schema

### Core Tables
| Table | Description |
|-------|-------------|
| `games` | Fire Emblem series titles (e.g., "Awakening", "Path of Radiance") |
| `weapons` | Weapon types with stats, effects, and inheritance status |
| `heroes` | Character data including stats, variants, and base kits |
| `skills` | Combat abilities with inheritance rules and prerequisites |
| `status_effects` | Definitions of in-game effects (e.g., "Canto", "Exposure") |

### Relationship Tables
| Table | Purpose |
|-------|---------|
| `hero_skill` | Many-to-many hero to skill mapping |
| `skill_effect` | Links skills to status effects |
| `skill_prerequisite` | Skill inheritance requirements |
| `structured_restrictions` | Reusable restriction templates |
| `*_restriction` | Applies restrictions to weapons/skills |

## Project Structure

```
feh-database/
├── schema/
│ └── schema.sql # Complete database schema definition
├── data/
│ ├── games.sql # Series title data
│ ├── weapons.sql # Weapon definitions
│ ├── skills.sql # Skill definitions
│ ├── status_effects.sql # Effect explanations
│ └── banners/ # Hero release batches
│   └── fallen_2025.sql # Example banner data
└── seed_all.sql # Master data loading script
```

## Usage

```bash
# Initialize database (PostgreSQL required)
createdb feh_db
psql feh_db -f seed_all.sql

# Sample query: Find all armor-effective weapons
SELECT name FROM weapons WHERE effect LIKE '%effective against armor%';
