#!/usr/bin/env sh
# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments {such as nogui} to this file in the next line before the "$@" or
#  pass them to this script directly
# screen -s java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.1-47.3.7/unix_args.txt "$@"
echo "Script started at $(date)" >> /home/ubuntu/server/cron_debug.log
whoami >> /home/ubuntu/server/cron_debug.log
env >> /home/ubuntu/server/cron_debug.log

screen -S Forge -d -m sh -c 'java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.1-47.3.7/unix_args.txt "$@"'
