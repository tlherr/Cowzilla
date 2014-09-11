# Cowzilla

This is a version of GitHub's Campfire bot, hubot. This bot uses the groupme adapter to provide fun and useful features to our groupme conversations.

## Start Script

```shell
#!/bin/bash

export PORT='5555'
export HUBOT_GROUPME_ROOM_IDS='123456'
export HUBOT_GROUPME_TOKEN='somehash'
export HUBOT_GROUPME_BOT_ID='somehash'

cd /var/www/cowzilla
bin/hubot -a groupme -n cowzilla
```

## Upstart Script

```shell
description "Cowzilla Hubot"
author      "Thomas Herr"

# used to be: start on startup
# until we found some mounts weren't ready yet while booting:
start on filesystem or runlevel [2345]
stop on runlevel [!2345]

# Automatically Respawn:
respawn
respawn limit 99 5

script
        exec /var/www/cowzilla/startbot.sh
end script
```

### Starting/Stopping Bot

start cowzilla, stop cowzilla, restart cowzilla

### Debugging

tail -f /var/log/upstart/cowzilla.log



