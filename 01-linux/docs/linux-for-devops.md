# Linux Automation for DevOps

## Overview

This section demonstrates the use of Linux and Bash scripting to automate routine system administration tasks.

The objective is to reduce manual operational work by combining multiple monitoring commands into a single executable script.

## System Health Check Script

The script gathers basic system information including:

* Hostname
* Current user
* Disk usage
* Memory utilization
* System uptime

### Commands Used

| Command  | Purpose                 |
| -------- | ----------------------- |
| hostname | Display system hostname |
| whoami   | Display current user    |
| df -h    | Show disk usage         |
| free -h  | Show memory usage       |
| uptime   | Display system uptime   |

## Why Automation Matters

Instead of running multiple Linux commands individually, a Bash script can automate repetitive operational tasks and provide a consolidated system report.

This reflects a core DevOps principle:

> Automate repetitive work to improve efficiency and reliability.

## Skills Demonstrated

* Linux command-line operations
* Bash scripting
* File permissions and execution
* System monitoring
* Automation mindset

## Screenshot

See `screenshots/linux-health-check.png` for an example execution of the script.
