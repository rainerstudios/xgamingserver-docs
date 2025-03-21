#!/bin/bash
# Script to set up XGamingServer documentation with all games in left sidebar
# Run this in WSL

# Game list - all the games to document
games=(
  "7-days-to-die"
  "abiotic-factor"
  "aloft"
  "ark-survival-evolved"
  "arma-3"
  "arma-reforger"
  "aska"
  "assetto-corsa"
  "bungeecord"
  "core-keeper"
  "counter-strike-2"
  "counter-strike-go"
  "discord-bot-hosting"
  "dont-starve-together"
  "enshrouded"
  "euro-truck-simulator-2"
  "factorio"
  "foundry"
  "garrys-mod"
  "humanitz"
  "jaws-of-extinction"
  "minecraft"
  "mordhau"
  "myth-of-empires"
  "nightingale"
  "palworld"
  "palworld-crossplay"
  "project-zomboid"
  "risk-of-rain-2"
  "rust"
  "satisfactory"
  "skyrim-together-reborn"
  "sons-of-the-forest"
  "soulmask"
  "subnautica"
  "sunkenland"
  "terraria"
  "the-forest"
  "the-front"
  "unturned"
  "v-rising"
  "valheim"
  "vein"
)

# Game icons for navigation
declare -A game_icons
game_icons=(
  ["7-days-to-die"]="biohazard"
  ["abiotic-factor"]="vial-virus"
  ["aloft"]="cloud"
  ["ark-survival-evolved"]="dinosaur"
  ["arma-3"]="helicopter"
  ["arma-reforger"]="tank"
  ["aska"]="axe-battle"
  ["assetto-corsa"]="car-side"
  ["bungeecord"]="network-wired"
  ["core-keeper"]="gem"
  ["counter-strike-2"]="crosshairs"
  ["counter-strike-go"]="gun"
  ["discord-bot-hosting"]="robot"
  ["dont-starve-together"]="utensils"
  ["enshrouded"]="cloud-fog"
  ["euro-truck-simulator-2"]="truck"
  ["factorio"]="industry"
  ["foundry"]="dice-d20"
  ["garrys-mod"]="toolbox"
  ["humanitz"]="skull"
  ["jaws-of-extinction"]="teeth"
  ["minecraft"]="cube"
  ["mordhau"]="sword"
  ["myth-of-empires"]="crown"
  ["nightingale"]="moon-stars"
  ["palworld"]="dragon"
  ["palworld-crossplay"]="handshake"
  ["project-zomboid"]="person-walking"
  ["risk-of-rain-2"]="cloud-rain"
  ["rust"]="wrench"
  ["satisfactory"]="conveyor-belt"
  ["skyrim-together-reborn"]="dragon-knight"
  ["sons-of-the-forest"]="tree"
  ["soulmask"]="mask"
  ["subnautica"]="water"
  ["sunkenland"]="island"
  ["terraria"]="pickaxe"
  ["the-forest"]="trees"
  ["the-front"]="helmet-battle"
  ["unturned"]="face-dizzy"
  ["v-rising"]="droplet"
  ["valheim"]="shield"
  ["vein"]="heart-pulse"
)

# Common guide pages for each game
guides=(
  "index"
  "setup"
  "requirements"
  "configuration"
  "admin-commands"
  "mods"
  "world-settings"
  "performance"
  "backups"
  "common-issues"
  "connection-issues"
  "crashes"
  "faq"
  "community-guides"
  "updates"
  "resources"
  "videos"
)

# Create directories
echo "Creating directory structure..."
mkdir -p templates
mkdir -p images/games

# Create game index template
cat > templates/game-index-template.mdx << 'EOL'
---
title: "[Game Name] Server Hosting"
description: "Complete documentation for [Game Name] server hosting on XGamingServer"
---

<img
  src="/images/games/[game-folder]/banner.jpg"
  alt="[Game Name] Banner"
  className="w-full rounded-lg"
/>

# [Game Name] Server Hosting

Welcome to the [Game Name] server hosting documentation. Here you'll find everything you need to set up and manage your [Game Name] server on XGamingServer.

## Getting Started

<CardGroup cols={2}>
  <Card title="Quick Setup" icon="bolt" href="./setup">
    Get your server up and running quickly
  </Card>
  <Card title="Server Requirements" icon="server" href="./requirements">
    Hardware requirements and recommendations
  </Card>
  <Card title="Configuration" icon="sliders" href="./configuration">
    Configure your server settings
  </Card>
  <Card title="Admin Commands" icon="terminal" href="./admin-commands">
    Essential commands for server administration
  </Card>
</CardGroup>

## Advanced Configuration

<CardGroup cols={2}>
  <Card title="Mods & Plugins" icon="puzzle-piece" href="./mods">
    Enhance your server with mods and plugins
  </Card>
  <Card title="World Settings" icon="globe" href="./world-settings">
    Customize your game world
  </Card>
  <Card title="Performance Optimization" icon="gauge-high" href="./performance">
    Optimize your server for best performance
  </Card>
  <Card title="Backups & Restores" icon="database" href="./backups">
    Protect your server data
  </Card>
</CardGroup>

## Troubleshooting

<CardGroup cols={2}>
  <Card title="Common Issues" icon="triangle-exclamation" href="./common-issues">
    Solutions to frequently encountered problems
  </Card>
  <Card title="Connection Problems" icon="network-wired" href="./connection-issues">
    Fix connection and networking issues
  </Card>
  <Card title="Crashes & Stability" icon="bomb" href="./crashes">
    Resolve crashes and improve stability
  </Card>
  <Card title="FAQs" icon="circle-question" href="./faq">
    Frequently asked questions
  </Card>
</CardGroup>

## Additional Resources

<CardGroup cols={2}>
  <Card title="Community Guides" icon="users" href="./community-guides">
    Guides created by the community
  </Card>
  <Card title="Update History" icon="clock-rotate-left" href="./updates">
    Server update history and changelogs
  </Card>
  <Card title="Official Resources" icon="link" href="./resources">
    Links to official documentation and resources
  </Card>
  <Card title="Video Tutorials" icon="video" href="./videos">
    Video guides for visual learners
  </Card>
</CardGroup>
EOL

# Create guide template
cat > templates/guide-template.mdx << 'EOL'
---
title: "[Game Name] [Guide Title]"
description: "[Guide Title] guide for [Game Name] servers on XGamingServer"
---

# [Game Name] [Guide Title]

This is the [guide-name] guide for [Game Name]. Replace this content with actual documentation.

## Overview

Add content specific to [guide-name] for [Game Name] servers.

## Sections

Add relevant sections for this guide.

## Additional Resources

- [Back to [Game Name] Home](./index)
- [Official [Game Name] Website](https://example.com)
EOL

# Create homepage with game cards
cat > introduction.mdx << 'EOL'
---
title: "XGamingServer Documentation"
description: "Game server hosting documentation for XGamingServer"
---

<img
  className="block dark:hidden"
  src="/images/hero-light.png"
  alt="XGamingServer Banner Light"
/>

<img
  className="hidden dark:block"
  src="/images/hero-dark.png"
  alt="XGamingServer Banner Dark"
/>

## Welcome to XGamingServer

XGamingServer provides high-performance game server hosting with easy setup, powerful customization options, and 24/7 support. This documentation will help you set up and manage your game servers.

## Popular Game Servers

Browse our most popular game server documentation:

<CardGroup cols={3}>
  <Card title="Minecraft" icon="cube" href="/games/minecraft/index">
    Setup and manage your Minecraft server
  </Card>
  <Card title="Valheim" icon="shield" href="/games/valheim/index">
    Host your own Viking survival adventure
  </Card>
  <Card title="Rust" icon="wrench" href="/games/rust/index">
    Build, survive, and raid in multiplayer
  </Card>
  <Card title="Palworld" icon="dragon" href="/games/palworld/index">
    Manage your Pal collection server
  </Card>
  <Card title="ARK: Survival Evolved" icon="dinosaur" href="/games/ark-survival-evolved/index">
    Tame dinosaurs and build your tribe
  </Card>
  <Card title="7 Days to Die" icon="biohazard" href="/games/7-days-to-die/index">
    Zombie survival and base building
  </Card>
</CardGroup>

## Server Categories

<CardGroup cols={2}>
  <Card title="Survival Games" icon="campground" href="#survival-games">
    Explore our survival game server documentation
  </Card>
  <Card title="Sandbox & Creative" icon="cubes" href="#sandbox--creative">
    Unleash your creativity with these game servers
  </Card>
  <Card title="Action & Shooter" icon="gun" href="#action--shooter">
    Fast-paced action and shooter game servers
  </Card>
  <Card title="Simulation" icon="gauge-high" href="#simulation">
    Realistic simulation game servers
  </Card>
  <Card title="Other Hosting" icon="server" href="#other-hosting">
    Discord bots, web apps, and more
  </Card>
</CardGroup>

## All Game Servers

### Survival Games

<CardGroup cols={3}>
  <Card title="Valheim" href="/games/valheim/index">
    Viking survival adventure
  </Card>
  <Card title="Palworld" href="/games/palworld/index">
    Pokemon-like survival with guns
  </Card>
  <Card title="Enshrouded" href="/games/enshrouded/index">
    Fantasy survival RPG
  </Card>
  <Card title="Project Zomboid" href="/games/project-zomboid/index">
    Isometric zombie survival
  </Card>
  <Card title="7 Days to Die" href="/games/7-days-to-die/index">
    Zombie survival & building
  </Card>
  <Card title="V Rising" href="/games/v-rising/index">
    Vampire survival action
  </Card>
  <Card title="Rust" href="/games/rust/index">
    Brutal multiplayer survival
  </Card>
  <Card title="ARK: Survival Evolved" href="/games/ark-survival-evolved/index">
    Dinosaur taming & tribes
  </Card>
  <Card title="The Forest" href="/games/the-forest/index">
    Horror survival
  </Card>
  <Card title="Sons of the Forest" href="/games/sons-of-the-forest/index">
    Cooperative horror survival
  </Card>
  <Card title="Subnautica" href="/games/subnautica/index">
    Underwater exploration
  </Card>
  <Card title="Unturned" href="/games/unturned/index">
    Zombie survival sandbox
  </Card>
  <Card title="Myth of Empires" href="/games/myth-of-empires/index">
    Medieval empire building
  </Card>
  <Card title="Nightingale" href="/games/nightingale/index">
    Gaslamp fantasy survival
  </Card>
  <Card title="HumanitZ" href="/games/humanitz/index">
    Post-apocalyptic survival
  </Card>
  <Card title="Abiotic Factor" href="/games/abiotic-factor/index">
    Sci-fi horror survival
  </Card>
  <Card title="Soulmask" href="/games/soulmask/index">
    Mythical creature survival
  </Card>
  <Card title="Sunkenland" href="/games/sunkenland/index">
    Oceanic survival building
  </Card>
  <Card title="Aska" href="/games/aska/index">
    Viking co-op survival
  </Card>
  <Card title="Jaws of Extinction" href="/games/jaws-of-extinction/index">
    Open-world zombie survival
  </Card>
  <Card title="Vein" href="/games/vein/index">
    Vampire survival
  </Card>
</CardGroup>

### Sandbox & Creative

<CardGroup cols={3}>
  <Card title="Core Keeper" href="/games/core-keeper/index">
    Underground exploration
  </Card>
  <Card title="Terraria" href="/games/terraria/index">
    2D sandbox adventure
  </Card>
  <Card title="Minecraft" href="/games/minecraft/index">
    Block building & survival
  </Card>
  <Card title="Garry's Mod" href="/games/garrys-mod/index">
    Physics sandbox
  </Card>
  <Card title="Satisfactory" href="/games/satisfactory/index">
    Factory building simulation
  </Card>
  <Card title="Factorio" href="/games/factorio/index">
    Automation & production
  </Card>
  <Card title="Don't Starve Together" href="/games/dont-starve-together/index">
    Cooperative survival
  </Card>
  <Card title="Aloft" href="/games/aloft/index">
    Sky island building
  </Card>
</CardGroup>

### Action & Shooter

<CardGroup cols={3}>
  <Card title="Arma 3" href="/games/arma-3/index">
    Military simulation
  </Card>
  <Card title="Arma Reforger" href="/games/arma-reforger/index">
    Modern military sim
  </Card>
  <Card title="CS:GO" href="/games/counter-strike-go/index">
    Competitive FPS
  </Card>
  <Card title="Counter-Strike 2" href="/games/counter-strike-2/index">
    Next-gen competitive FPS
  </Card>
  <Card title="Mordhau" href="/games/mordhau/index">
    Medieval combat
  </Card>
  <Card title="Risk of Rain 2" href="/games/risk-of-rain-2/index">
    Roguelike shooter
  </Card>
  <Card title="Skyrim Together Reborn" href="/games/skyrim-together-reborn/index">
    Multiplayer Skyrim
  </Card>
  <Card title="The Front" href="/games/the-front/index">
    WWII shooter
  </Card>
</CardGroup>

### Simulation

<CardGroup cols={3}>
  <Card title="Assetto Corsa" href="/games/assetto-corsa/index">
    Racing simulation
  </Card>
  <Card title="Euro Truck Simulator 2" href="/games/euro-truck-simulator-2/index">
    Truck driving simulation
  </Card>
</CardGroup>

### Other Hosting

<CardGroup cols={3}>
  <Card title="Discord Bot Hosting" href="/games/discord-bot-hosting/index">
    Host custom Discord bots
  </Card>
  <Card title="Bungeecord" href="/games/bungeecord/index">
    Minecraft network proxy
  </Card>
  <Card title="FOUNDRY" href="/games/foundry/index">
    Virtual tabletop hosting
  </Card>
  <Card title="Palworld Crossplay" href="/games/palworld-crossplay/index">
    Cross-platform Palworld
  </Card>
</CardGroup>
EOL

# Create Valheim example files
echo "Creating directories and files for all games..."

# Create directories and files for each game
for game in "${games[@]}"; do
  # Format game name for display (capitalize each word)
  game_display=$(echo "$game" | sed -e 's/-/ /g' -e 's/\<./\U&/g')
  
  # Create game directory
  mkdir -p "games/$game"
  
  # Create image directory
  mkdir -p "images/games/$game"
  
  # Create placeholder image for the game
  touch "images/games/$game/banner.jpg"
  
  # Create guide files for this game
  for guide in "${guides[@]}"; do
    # Format guide name for display
    guide_display=$(echo "$guide" | sed -e 's/-/ /g' -e 's/\<./\U&/g')
    
    if [ "$guide" == "index" ]; then
      # Use the index template for the main game page
      sed -e "s/\[Game Name\]/$game_display/g" \
          -e "s/\[game-folder\]/$game/g" \
          templates/game-index-template.mdx > "games/$game/$guide.mdx"
    else
      # Create a file for each guide
      cat > "games/$game/$guide.mdx" << EOL
---
title: "$game_display $guide_display"
description: "$guide_display guide for $game_display servers on XGamingServer"
---

# $game_display $guide_display

This is the $guide_display guide for $game_display. Replace this content with actual documentation.

## Overview

Add content specific to $guide_display for $game_display servers.

## Sections

Add relevant sections for this guide.

## Additional Resources

- [Back to $game_display Home](./index)
- [Official $game_display Website](https://example.com)
EOL
    fi
  done
  
  echo "Created files for $game_display"
done

# Create detailed Valheim setup example
cat > games/valheim/setup.mdx << 'EOL'
---
title: "Valheim Server Setup"
description: "Quick setup guide for Valheim servers on XGamingServer"
---

# Valheim Server Setup

Setting up your Valheim server on XGamingServer is quick and easy. Follow these steps to get started with your Viking adventure.

## Creating Your Server

1. Log in to your [XGamingServer control panel](https://panel.xgamingserver.com)
2. Click the **Create Server** button
3. Select **Valheim** from the game list
4. Choose your server plan based on your needs:

| Plan | RAM | CPU | Storage | Recommended Players |
|------|-----|-----|---------|---------------------|
| Basic | 4GB | 2 cores | 10GB | 1-5 |
| Standard | 8GB | 4 cores | 20GB | 5-10 |
| Premium | 16GB | 6 cores | 40GB | 10+ |

5. Select your server location (choosing a location close to your players will reduce latency)
6. Enter your server name, world name, and password
7. Click **Create Server**

Your server will be ready in a few minutes.

## Initial Configuration

Once your server is created, you'll need to configure some basic settings:

1. Navigate to the **Startup** tab in your server control panel
2. Configure the following settings:
   - **Server Name**: The name displayed in the server browser
   - **World Name**: Name of your world file (this is important for backups)
   - **Server Password**: Required for players to join (minimum 5 characters)
   - **Public**: Whether your server is visible in the public server list

<Note>
For security reasons, we strongly recommend setting a password for your Valheim server.
</Note>

## Connecting to Your Server

Players can connect to your Valheim server in two ways:

### In-Game Server Browser

1. Launch Valheim
2. Select **Join Game**
3. Click the **Join by IP** button  
4. Enter your server address: `your-server-ip:2456`
5. Enter the password when prompted

### Steam Server Browser

1. In Steam, go to **View** > **Servers**
2. Click the **Favorites** tab
3. Click **Add a Server**
4. Enter your server address: `your-server-ip:2456`
5. Your server will appear in your favorites list
6. Double-click to connect
7. Enter the password when prompted

## Next Steps

Now that your Valheim server is up and running, here are some recommended next steps:

<CardGroup cols={2}>
  <Card title="Server Configuration" icon="sliders" href="./configuration">
    Customize your server settings
  </Card>
  <Card title="Admin Commands" icon="terminal" href="./admin-commands">
    Learn essential admin commands
  </Card>
  <Card title="Add Mods" icon="puzzle-piece" href="./mods">
    Enhance your server with mods
  </Card>
  <Card title="Set Up Backups" icon="database" href="./backups">
    Protect your world data
  </Card>
</CardGroup>

## Video Tutorial

<iframe
  width="100%"
  height="400"
  src="https://www.youtube.com/embed/example"
  title="Valheim Server Setup Tutorial"
  frameBorder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowFullScreen
  style={{ borderRadius: '0.5rem' }}
></iframe>

## Troubleshooting

If you encounter issues during setup, check out our [common issues](./common-issues) guide or contact our [24/7 support](mailto:support@xgamingserver.com).
EOL

# Create docs.json with a single tab and all games in the left sidebar
cat > docs.json << EOL
{
  "\$schema": "https://mintlify.com/docs.json",
  "theme": "mint",
  "name": "XGamingServer Documentation",
  "colors": {
    "primary": "#16A34A",
    "light": "#07C983",
    "dark": "#15803D"
  },
  "favicon": "/favicon.svg",
  "navigation": {
    "tabs": [
      {
        "tab": "Game Servers",
        "groups": [
EOL

# Add all game groups
cat >> docs.json << EOL
          {
            "group": "Getting Started",
            "pages": [
              "introduction",
              "quickstart",
              "development"
            ]
          },
          {
            "group": "Essentials",
            "pages": [
              "essentials/markdown",
              "essentials/code",
              "essentials/images",
              "essentials/settings",
              "essentials/navigation",
              "essentials/reusable-snippets"
            ]
          },
EOL

# Add games as individual groups
for game in "${games[@]}"; do
  game_display=$(echo "$game" | sed -e 's/-/ /g' -e 's/\<./\U&/g')
  icon="${game_icons[$game]}"
  
  # Add game to navigation
  cat >> docs.json << EOL
          {
            "group": "$game_display",
            "icon": "$icon",
            "pages": [
              "games/$game/index",
              "games/$game/setup",
              "games/$game/configuration",
              "games/$game/common-issues"
            ]
          }
EOL

  # Add comma after each entry except the last one
  if [ "$game" != "${games[-1]}" ]; then
    echo "          ," >> docs.json
  fi
done

# Complete docs.json
cat >> docs.json << 'EOL'
        ]
      },
      {
        "tab": "API Reference",
        "groups": [
          {
            "group": "API Documentation",
            "pages": [
              "api-reference/introduction"
            ]
          },
          {
            "group": "Endpoint Examples",
            "pages": [
              "api-reference/endpoint/get",
              "api-reference/endpoint/create",
              "api-reference/endpoint/delete",
              "api-reference/endpoint/webhook"
            ]
          }
        ]
      }
    ]
  },
  "logo": {
    "light": "/logo/light.svg",
    "dark": "/logo/dark.svg"
  },
  "footerSocials": {
    "x": "https://x.com/xgamingserver",
    "github": "https://github.com/xgamingserver",
    "discord": "https://discord.gg/xgamingserver"
  }
}
EOL

# Create script to import content from WordPress
cat > import-from-wordpress.sh << 'EOL'
#!/bin/bash
# Script to import content from WordPress

# Replace these variables with your WordPress details
WORDPRESS_EXPORT_FILE="wordpress_export.xml"
OUTPUT_DIR="wordpress_content"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Check if xmlstarlet is installed
if ! command -v xmlstarlet &> /dev/null; then
    echo "xmlstarlet is required but not installed. Please install it using:"
    echo "  sudo apt-get install xmlstarlet"
    exit 1
fi

# Check if export file exists
if [ ! -f "$WORDPRESS_EXPORT_FILE" ]; then
    echo "WordPress export file not found: $WORDPRESS_EXPORT_FILE"
    exit 1
fi

echo "Extracting content from WordPress export..."

# Extract posts and convert to MDX
xmlstarlet sel -t -m "//item[wp:post_type='post' and wp:status='publish']" \
    -v "concat(wp:post_name, '.mdx')" -o ":" \
    -v "concat(title, '|', wp:post_date, '|', content:encoded)" \
    -n "$WORDPRESS_EXPORT_FILE" | while IFS=: read -r filename content; do
    
    # Extract title, date, and content
    title=$(echo "$content" | cut -d '|' -f 1)
    date=$(echo "$content" | cut -d '|' -f 2)
    post_content=$(echo "$content" | cut -d '|' -f 3-)
    
    # Create MDX file
    cat > "$OUTPUT_DIR/$filename" << EOF
---
title: "$title"
date: "$date"
---

$post_content
EOF
    
    echo "Created $OUTPUT_DIR/$filename"
done

echo "WordPress content imported and converted to MDX format."
echo "Review the files in $OUTPUT_DIR and move them to the appropriate game directories."
EOL

chmod +x import-from-wordpress.sh

# Function to create a WordPress import guide
cat > wordpress-import-guide.mdx << 'EOL'
---
title: "Importing from WordPress"
description: "Guide for importing WordPress content into the documentation"
---

# Importing Content from WordPress

This guide explains how to import content from your WordPress site into the XGamingServer documentation.

## Prerequisites

- A WordPress XML export file
- Linux/WSL environment with `xmlstarlet` installed
- Basic command line knowledge

## Step 1: Export WordPress Content

1. Log in to your WordPress admin dashboard
2. Go to Tools > Export
3. Choose to export "All content"
4. Download the XML file

## Step 2: Run the Import Script

1. Place the WordPress XML export file in the same directory as the `import-from-wordpress.sh` script
2. Update the `WORDPRESS_EXPORT_FILE` variable in the script to match your export filename
3. Run the script:

```bash
chmod +x import-from-wordpress.sh
./import-from-wordpress.sh
```

## Step 3: Organize Imported Content

1. The script will create a `wordpress_content` directory with MDX files
2. Review each file and move it to the appropriate game directory
3. Rename files according to the guide structure (e.g., `setup.mdx`, `configuration.mdx`)
4. Update any internal links or image paths

## Step 4: Process Images

1. Download images from your WordPress site
2. Place them in the appropriate `images/games/[game-name]` directories
3. Update image references in MDX files from WordPress URL to local path

## Step 5: Test the Documentation

1. Run `mintlify dev` to preview the documentation
2. Check that all imported content displays correctly
3. Fix any formatting issues or broken links

## Additional Resources

- [Mintlify Documentation](https://mintlify.com/docs)
- [Markdown Guide](https://www.markdownguide.org/)
- [WordPress XML Export Documentation](https://wordpress.org/support/article/tools-export-screen/)
EOL

echo "Documentation structure created successfully with left sidebar navigation!"
echo "Run 'mintlify dev' to preview your documentation."
echo "Use the wordpress-import-guide.mdx and import-from-wordpress.sh to import content from WordPress."