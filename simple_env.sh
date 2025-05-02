#!/bin/bash

CONFIG_FILE="$HOME/.simple_envs"

# Make sure config file exists
touch "$CONFIG_FILE"

if [[ "$1" == "--help" ]]; then
    echo "Usage:"
    echo "  --list                  List all environments"
    echo "  --add <name> <command> Add a new environment"
    echo "  --<name>               Run an environment"
    exit 0
fi

if [[ "$1" == "--list" ]]; then
    echo "Saved environments:"
    cut -d':' -f1 "$CONFIG_FILE"
    exit 0
fi

if [[ "$1" == "--add" ]]; then
    name="$2"
    shift 2
    command="$*"
    if [[ -z "$name" || -z "$command" ]]; then
        echo "Usage: --add <name> <command>"
        exit 1
    fi

    # Overwrite if exists
    grep -v "^$name:" "$CONFIG_FILE" > "${CONFIG_FILE}.tmp"
    echo "$name:$command" >> "${CONFIG_FILE}.tmp"
    mv "${CONFIG_FILE}.tmp" "$CONFIG_FILE"

    echo "Environment '$name' added!"
    exit 0
fi

# Run environment
if [[ "$1" == --* ]]; then
    env_name="${1#--}"
    command=$(grep "^$env_name:" "$CONFIG_FILE" | cut -d':' -f2-)

    if [[ -z "$command" ]]; then
        echo "Environment '$env_name' not found. Use --list to view all."
    else
        echo "Running '$env_name'..."
        eval "$command"
    fi
    exit 0
fi

echo "Unknown command. Use --help to get started."
