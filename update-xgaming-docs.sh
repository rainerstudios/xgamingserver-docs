#!/bin/bash
# Script to add Game Panel guides to XGamingServer documentation without disrupting existing navigation

# Colors for terminal output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}XGamingServer Documentation Update Script${NC}"
echo "This script will add Game Panel guides to your documentation"

# Check if docs.json exists
if [ ! -f docs.json ]; then
  echo -e "${RED}Error: docs.json not found in the current directory${NC}"
  echo "Please run this script from your documentation root directory"
  exit 1
fi

# Create directories
echo -e "${GREEN}Creating game-panel directory and files...${NC}"
mkdir -p game-panel
mkdir -p images/game-panel

# Create game-panel overview page
echo -e "${GREEN}Creating Game Panel Overview page...${NC}"
cat > game-panel/overview.mdx << 'EOL'
---
title: "Game Panel Overview"
description: "Getting started with the XGamingServer game panel"
icon: "server-tower"
---

# XGamingServer Game Panel Overview

The XGamingServer game panel provides a comprehensive interface for managing your game servers. This guide will help you understand the key features and navigation of the control panel.

## Dashboard Overview

<Frame>
  <img src="/images/game-panel/dashboard-overview.jpg" alt="XGamingServer Dashboard" />
</Frame>

The main dashboard gives you a quick overview of your servers, including:

- Active servers and their current status
- CPU and RAM usage statistics
- Quick access to restart, stop, and start functions
- Recent activity log
- Scheduled tasks and backups

## Key Features

<CardGroup cols={2}>
  <Card title="Server Management" icon="sliders" href="./server-connection">
    Start, stop, restart, and monitor your game servers
  </Card>
  <Card title="File Management" icon="folder-tree" href="./file-management">
    Upload, download, and edit server files through the browser
  </Card>
  <Card title="Backup System" icon="database" href="./backups">
    Schedule and manage server backups
  </Card>
  <Card title="Game Swap" icon="arrows-rotate" href="./game-swap">
    Change games without losing your server
  </Card>
</CardGroup>

## Navigation Guide

The XGamingServer panel is organized into several main sections:

### 1. Server List

The left sidebar displays all your servers. Click on any server to access its management interface.

### 2. Console

The console tab shows real-time server output and allows you to enter server commands directly.

<Frame>
  <img src="/images/game-panel/console-view.jpg" alt="Server Console" />
</Frame>

### 3. File Manager

The file manager allows you to:
- Browse server files
- Upload new files
- Download existing files
- Edit configuration files directly in the browser
- Manage file permissions

### 4. Databases

If your server uses databases, you can manage them from this section:
- Create new databases
- View connection details
- Manage database users

### 5. Schedules

Create automated tasks such as:
- Server restarts
- Backup creation
- Custom commands execution

### 6. Users

Manage user access to your server, including:
- Adding sub-users
- Setting permissions
- Managing API credentials

## Getting Help

If you need assistance with the control panel:

1. Check our [knowledge base](https://help.xgamingserver.com)
2. Use the built-in support ticket system
3. Join our [Discord community](https://discord.gg/xgamingserver)
4. Contact support via email at support@xgamingserver.com

## Next Steps

<CardGroup cols={3}>
  <Card title="SFTP Connection" icon="network-wired" href="./sftp-connection">
    Connect to your server using SFTP
  </Card>
  <Card title="Backup System" icon="database" href="./backups">
    Set up automatic backups
  </Card>
  <Card title="Restart Schedules" icon="clock" href="./restart-schedules">
    Configure automated restarts
  </Card>
</CardGroup>
EOL

# Create SFTP connection guide
echo -e "${GREEN}Creating SFTP Connection Guide...${NC}"
cat > game-panel/sftp-connection.mdx << 'EOL'
---
title: "SFTP Server Connection"
description: "How to connect to your game server using SFTP"
icon: "network-wired"
---

# SFTP Server Connection Guide

Secure File Transfer Protocol (SFTP) provides a secure way to transfer files between your computer and your game server. This guide will walk you through setting up and using an SFTP connection.

## What You'll Need

- An SFTP client such as [FileZilla](https://filezilla-project.org/), [WinSCP](https://winscp.net/), or [Cyberduck](https://cyberduck.io/)
- Your server's SFTP credentials (available in your XGamingServer control panel)

## Finding Your SFTP Credentials

1. Log in to your [XGamingServer control panel](https://panel.xgamingserver.com)
2. Select your game server
3. Navigate to the **Settings** tab
4. Look for the **SFTP Details** section

You'll need the following information:
- Server Address
- Port
- Username
- Password

<Frame>
  <img src="/images/game-panel/sftp-credentials.jpg" alt="SFTP Credentials in Control Panel" />
</Frame>

## Connecting with FileZilla

FileZilla is one of the most popular SFTP clients. Here's how to connect:

1. Open FileZilla
2. Enter your SFTP credentials in the quickconnect bar at the top:
   - Host: Your SFTP address (e.g., `sftp.xgamingserver.com`)
   - Username: Your SFTP username
   - Password: Your SFTP password
   - Port: Your SFTP port (typically 2022)
3. Click **Quickconnect**

<Frame>
  <img src="/images/game-panel/filezilla-connection.jpg" alt="FileZilla Connection Example" />
</Frame>

## Connecting with WinSCP

1. Open WinSCP
2. In the login dialog, enter the following:
   - File protocol: SFTP
   - Host name: Your SFTP address
   - Port number: Your SFTP port
   - User name: Your SFTP username
   - Password: Your SFTP password
3. Click **Login**

## Navigating Your Server Files

Once connected, you'll see:
- Local files on the left side (your computer)
- Remote files on the right side (your game server)

<Frame>
  <img src="/images/game-panel/sftp-file-navigation.jpg" alt="SFTP File Navigation" />
</Frame>

## Transferring Files

### Uploading Files to Your Server

1. Navigate to the desired folder on your server
2. Find the file(s) you want to upload on your local computer
3. Drag and drop the file(s) from the left panel to the right panel
4. Wait for the transfer to complete

### Downloading Files from Your Server

1. Navigate to the folder containing the files you want to download
2. Select the file(s) on the server side (right panel)
3. Drag and drop the file(s) from the right panel to the left panel
4. Wait for the transfer to complete

## Common File Operations

- **Create a new folder**: Right-click in the file browser and select "Create directory"
- **Delete files/folders**: Right-click on the item and select "Delete"
- **Rename files/folders**: Right-click on the item and select "Rename"
- **Edit files**: Right-click on a file and select "View/Edit" (if your SFTP client supports it)

## Setting File Permissions

Some game servers require specific file permissions to function correctly:

1. Right-click on the file/folder
2. Select "File permissions" or "Properties"
3. Adjust the permissions as needed
   - Most files: 644 (rw-r--r--)
   - Most folders: 755 (rwxr-xr-x)
   - Executable files: 755 (rwxr-xr-x)

<Warning>
  Incorrect file permissions can cause your server to malfunction. If you're unsure about changing permissions, consult your game's documentation or contact support.
</Warning>

## Troubleshooting SFTP Connections

### Cannot Connect to Server

1. Verify your credentials are correct
2. Check if the server is online
3. Ensure your firewall isn't blocking the SFTP port
4. Try connecting with a different SFTP client

### Slow Transfer Speeds

1. Check your internet connection
2. Try transferring smaller batches of files
3. Use compression if your SFTP client supports it
4. Consider using a wired connection instead of Wi-Fi

### Connection Timeout

1. Check your internet stability
2. Increase the timeout setting in your SFTP client
3. Try reconnecting during off-peak hours

## Additional Resources

- [FileZilla Documentation](https://wiki.filezilla-project.org/Documentation)
- [WinSCP Documentation](https://winscp.net/eng/docs/start)
- [Video Tutorial: SFTP Connection Guide](https://www.youtube.com/watch?v=example)

If you continue experiencing issues with SFTP connections, please [contact our support team](mailto:support@xgamingserver.com).
EOL

# Create backup guide
echo -e "${GREEN}Creating Backup System Guide...${NC}"
cat > game-panel/backups.mdx << 'EOL'
---
title: "Server Backup System"
description: "How to set up and manage automatic backups for your game server"
icon: "database"
---

# Setting Up Automatic Server Backups

Regular backups are crucial for protecting your game server data. This guide explains how to set up, manage, and restore backups using the XGamingServer control panel.

## Backup System Overview

The XGamingServer backup system allows you to:
- Create manual backups at any time
- Schedule automatic backups at regular intervals
- Download backups to your local computer
- Restore backups to your server
- Configure backup rotation policies

## Creating Manual Backups

To create a backup immediately:

1. Log in to your [XGamingServer control panel](https://panel.xgamingserver.com)
2. Select your game server
3. Navigate to the **Backups** tab
4. Click the **Create Backup** button
5. Enter an optional name for your backup (recommended for easy identification)
6. Select which folders/files to include
7. Click **Create Backup**

<Frame>
  <img src="/images/game-panel/create-backup.jpg" alt="Creating a Manual Backup" />
</Frame>

<Note>
  Creating a backup may temporarily increase server load. For large servers, we recommend scheduling backups during low-activity periods.
</Note>

## Setting Up Scheduled Backups

To set up automatic backups:

1. Go to the **Schedules** tab in your server's control panel
2. Click **Create Schedule**
3. Select **Backup** as the task type
4. Configure the following settings:
   - **Name**: Give your backup schedule a descriptive name
   - **Frequency**: Choose how often the backup should run
   - **First Run**: Set when the first backup should occur
   - **Files to backup**: Select which directories to include
   - **Backup retention**: How many backups to keep before rotation

<Frame>
  <img src="/images/game-panel/scheduled-backup.jpg" alt="Configuring Scheduled Backups" />
</Frame>

### Recommended Backup Frequencies

| Server Type | Recommended Frequency | Retention |
|-------------|----------------------|-----------|
| Low activity | Weekly | 4 backups |
| Medium activity | Twice weekly | 6 backups |
| High activity | Daily | 7 backups |
| Mission critical | Twice daily | 10 backups |

## Managing Your Backups

All your backups are listed in the **Backups** tab. For each backup, you can:

- **Download**: Save the backup to your local computer
- **Restore**: Restore this backup to your server
- **Lock**: Prevent the backup from being automatically deleted during rotation
- **Delete**: Permanently remove the backup

<Warning>
  Restoring a backup will overwrite existing files on your server. Make sure you have a backup of your current state before restoring an older backup.
</Warning>

## Backup Rotation

Backup rotation helps manage storage space by automatically removing old backups. Here's how it works:

1. You set the maximum number of backups to keep (retention policy)
2. When this limit is reached, the oldest unlocked backup is deleted
3. Locked backups are never automatically deleted

To lock an important backup:
1. Go to the **Backups** tab
2. Find the backup you want to protect
3. Click the **Lock** icon

<Tip>
  Lock important backups like those taken before major updates or significant server changes.
</Tip>

## Restoring From a Backup

To restore your server from a backup:

1. Go to the **Backups** tab
2. Find the backup you want to restore
3. Click the **Restore** button
4. Confirm the restoration

<Warning>
  Restoring a backup will stop your server during the process. Players will be disconnected until the restoration is complete and the server is restarted.
</Warning>

The restoration process:
1. Stops the game server
2. Extracts the backup
3. Replaces the current files with the backup files
4. Restarts the server (if it was running before)

## Downloading Backups

To download a backup to your computer:

1. Go to the **Backups** tab
2. Find the backup you want to download
3. Click the **Download** button
4. Save the file to your preferred location

<Note>
  Backups are compressed archives. You'll need a program like 7-Zip, WinRAR, or a similar utility to extract them.
</Note>

## Best Practices for Server Backups

- **Multiple backup schedules**: Consider having both daily and weekly backup schedules
- **Test your backups**: Periodically restore a backup in a test environment to ensure it works
- **External storage**: Download important backups to your local computer for extra safety
- **Document changes**: Add notes to your backups describing major server changes
- **Pre-update backups**: Always create a backup before installing updates or making significant changes

## Troubleshooting Backup Issues

### Backup Creation Fails

If your backup fails to create:
1. Check if you have sufficient storage space on your server plan
2. Ensure the server isn't experiencing excessive load
3. Try creating a backup with fewer files/directories
4. Contact support if the issue persists

### Backup Restoration Fails

If your backup fails to restore:
1. Verify the backup file isn't corrupted
2. Check server logs for specific error messages
3. Ensure you have sufficient storage space for the restored files
4. Try restarting the server before attempting restoration again

## Need More Help?

If you need assistance with backups, please [contact our support team](mailto:support@xgamingserver.com) or visit our [knowledge base](https://help.xgamingserver.com).
EOL

# Create restart schedules guide
echo -e "${GREEN}Creating Restart Schedules Guide...${NC}"
cat > game-panel/restart-schedules.mdx << 'EOL'
---
title: "Configuring Server Restart Schedules"
description: "How to set up automatic server restarts and scheduled tasks"
icon: "clock"
---

# Configuring Server Restart Schedules

Regular server restarts help maintain server performance, apply updates, and clear memory leaks. This guide will show you how to set up automated restart schedules and other recurring tasks on your XGamingServer.

## Why Schedule Server Restarts?

Scheduled restarts provide several benefits:

- Improved server performance and stability
- Automatic clearing of RAM usage
- Application of small updates without manual intervention
- Prevention of common issues that develop over time
- Predictable downtime for your players

## Accessing the Scheduler

To access the scheduling system:

1. Log in to your [XGamingServer control panel](https://panel.xgamingserver.com)
2. Select your game server
3. Navigate to the **Schedules** tab
4. Click the **Create Schedule** button

<Frame>
  <img src="/images/game-panel/schedules-panel.jpg" alt="Server Schedules Panel" />
</Frame>

## Creating a Basic Restart Schedule

To set up a basic server restart schedule:

1. Click **Create Schedule**
2. Enter a name for your schedule (e.g., "Daily Morning Restart")
3. Select your schedule timing:
   - **Minute**: The minute of the hour (0-59)
   - **Hour**: The hour of the day (0-23, using 24-hour format)
   - **Day of Month**: The day of the month (1-31)
   - **Month**: The month of the year (1-12)
   - **Day of Week**: The day of the week (0-6, where 0 is Sunday)
4. Select **Send Command** as the task type
5. In the command field, enter a restart command appropriate for your game
6. Enable the **Only When Server Is Online** option
7. Click **Create Schedule**

<Frame>
  <img src="/images/game-panel/create-schedule.jpg" alt="Creating a Restart Schedule" />
</Frame>

### Common Restart Commands

Different games may use different restart commands:

| Game | Restart Command |
|------|----------------|
| Minecraft | `say Server restarting in 1 minute! && sleep 50 && say Server restarting in 10 seconds! && sleep 10 && stop` |
| Valheim | `broadcast "Server restarting in 60 seconds..." 60 server_restart` |
| ARK | `broadcast Server restarting in 60 seconds... && save world && sleep 60 && quit` |
| Rust | `say "Server restarting in 60 seconds" && sleep 60 && quit` |
| 7 Days to Die | `shutdown 60` |

<Tip>
  Add warning messages to your restart commands to notify players before the server goes down.
</Tip>

## Schedule Timing Examples

Here are some common scheduling patterns:

| Schedule Description | Minute | Hour | Day (Month) | Month | Day (Week) |
|---------------------|--------|------|-------------|-------|------------|
| Every day at 3 AM | 0 | 3 | * | * | * |
| Every 6 hours | 0 | 0,6,12,18 | * | * | * |
| Every Sunday at 4 AM | 0 | 4 | * | * | 0 |
| First day of every month | 0 | 0 | 1 | * | * |
| Every 12 hours | 0 | 0,12 | * | * | * |

<Info>
  The asterisk (*) represents "every" in CRON notation. For example, * in the Month field means "every month."
</Info>

## Advanced Scheduling Options

### Creating a Warning Schedule

For a smoother player experience, set up warning messages before restarts:

1. Create a new schedule
2. Time it 5-10 minutes before your restart schedule
3. Select **Send Command** as the task type
4. Enter a warning command (e.g., `say Server will restart in 10 minutes`)
5. Click **Create Schedule**

### Chaining Multiple Commands

You can chain multiple commands in a single schedule by using `&&` between commands:

```
say Server maintenance in 5 minutes && sleep 240 && say Server maintenance in 1 minute && sleep 60 && stop
```

### Running a Specific Game Script

If your game uses scripts for certain functions:

1. Create a new schedule
2. Select **Send Command** as the task type
3. Reference your script (e.g., `runscript backup_world.lua`)
4. Click **Create Schedule**

## Managing Your Schedules

To manage your existing schedules:

- **Edit**: Click the edit button next to a schedule to modify its settings
- **Delete**: Click the delete button to remove a schedule
- **Disable/Enable**: Toggle the switch to temporarily disable or enable a schedule
- **Run Now**: Click the "Run Now" button to execute a schedule immediately

<Frame>
  <img src="/images/game-panel/manage-schedules.jpg" alt="Managing Schedules" />
</Frame>

## Best Practices for Server Restarts

- **Off-peak scheduling**: Schedule restarts during low-activity periods
- **Consistent timing**: Use the same time each day to create a predictable pattern for players
- **Multiple warnings**: Set up multiple warning messages (e.g., at 10 minutes, 5 minutes, and 1 minute)
- **Avoid frequent restarts**: Most servers only need 1-2 restarts per day
- **Document for players**: Let your community know about your restart schedule

## Game-Specific Recommendations

### Minecraft Servers

For Minecraft servers, a common schedule includes:
- A restart every 6-12 hours
- A memory cleanup command 30 minutes before restart
- Clear warning messages for players

### Valheim Servers

For Valheim servers:
- A restart every 24 hours is usually sufficient
- Use the broadcast command to warn players
- Consider scheduling during typical off-hours for your player base

### ARK: Survival Evolved

For ARK servers:
- Schedule restarts every 12 hours
- Always include a `save world` command before restarting
- Give players at least 15 minutes of warnings

## Troubleshooting Scheduled Tasks

### Schedule Not Running

If your schedule isn't running:
1. Verify the server is online (if you selected "Only When Server Is Online")
2. Check that the timing configuration is correct
3. Ensure the command syntax is appropriate for your game
4. Check server logs for errors

### Command Errors

If your scheduled command produces errors:
1. Test the command manually in the console first
2. Check server logs immediately after the scheduled time
3. Verify you're using the correct command format for your game version

## Need More Help?

If you need assistance with scheduling, please [contact our support team](mailto:support@xgamingserver.com) or visit our [knowledge base](https://help.xgamingserver.com).
EOL

# Create template for additional guides
echo -e "${GREEN}Creating template for additional guides...${NC}"

create_template_file() {
    local file="$1"
    local title="$2"
    local desc="$3"
    local icon="$4"
    
    cat > "game-panel/$file.mdx" << EOL
---
title: "$title"
description: "$desc"
icon: "$icon"
---

# $title

This documentation will help you understand how to use the $title feature on XGamingServer.

## Overview

The $title feature allows you to...

## Getting Started

1. Log in to your [XGamingServer control panel](https://panel.xgamingserver.com)
2. Select your game server
3. ...

## More Information

For more detailed instructions, examples, and troubleshooting, please refer to our comprehensive guide.

## Related Guides

<CardGroup cols={2}>
  <Card title="Game Panel Overview" icon="server-tower" href="./overview">
    Learn about the control panel
  </Card>
  <Card title="SFTP Connection" icon="network-wired" href="./sftp-connection">
    Connect to your server using SFTP
  </Card>
</CardGroup>
EOL
}

# Create additional guide templates
create_template_file "game-swap" "Game Swap Feature" "How to change games without losing your server" "arrows-rotate"
create_template_file "server-connection" "Server Connection Methods" "Different ways to connect to your game server" "plug"
create_template_file "additional-ports" "Adding Additional Server Ports" "How to configure additional ports for your server" "network-wired"
create_template_file "server-wipe" "Complete Server Wipe" "How to completely wipe and reset your server" "trash"
create_template_file "ip-configuration" "IP Configuration Guide" "Understanding different IP configurations" "globe"
create_template_file "file-management" "File Management" "How to manage files on your game server" "folder-tree"
create_template_file "subdomains" "Subdomain Creation" "Setting up subdomains for your server" "browser"
create_template_file "server-importer" "Server Importer" "How to import servers from other providers" "file-import"
create_template_file "config-editing" "Config Files Editing" "How to edit configuration files" "file-code"

# Create placeholder images for guides
echo -e "${GREEN}Creating placeholder images...${NC}"
touch images/game-panel/dashboard-overview.jpg
touch images/game-panel/console-view.jpg
touch images/game-panel/sftp-credentials.jpg
touch images/game-panel/filezilla-connection.jpg
touch images/game-panel/sftp-file-navigation.jpg
touch images/game-panel/create-backup.jpg
touch images/game-panel/scheduled-backup.jpg
touch images/game-panel/schedules-panel.jpg
touch images/game-panel/create-schedule.jpg
touch images/game-panel/manage-schedules.jpg

# Create navigation patch file
echo -e "${GREEN}Creating navigation update file...${NC}"
cat > game-panel-navigation.json << 'EOL'
{
  "group": "Game Panel Guides",
  "icon": "server-tower",
  "pages": [
    "game-panel/overview",
    "game-panel/sftp-connection",
    "game-panel/backups",
    "game-panel/restart-schedules",
    "game-panel/game-swap",
    "game-panel/server-connection",
    "game-panel/additional-ports",
    "game-panel/server-wipe",
    "game-panel/ip-configuration",
    "game-panel/file-management",
    "game-panel/subdomains",
    "game-panel/server-importer",
    "game-panel/config-editing"
  ]
}
EOL

echo -e "${BLUE}IMPORTANT:${NC} The script has created all the necessary files but has NOT modified your docs.json"
echo -e "To add the Game Panel Guides section to your navigation, manually insert the contents of the"
echo -e "game-panel-navigation.json file into the appropriate location in your docs.json file."
echo -e ""
echo -e "Add it to your navigation structure where you want it to appear, typically after your Getting Started"
echo -e "section and before your game categories."
echo -e ""
echo -e "${GREEN}Script completed successfully!${NC}"
echo "The following files have been created:"
echo "- game-panel/ directory with 13 guide files"
echo "- images/game-panel/ directory with placeholder images"
echo "- game-panel-navigation.json with the navigation structure to add manually"
echo ""
echo "To preview your documentation after updating docs.json, run: mintlify dev"