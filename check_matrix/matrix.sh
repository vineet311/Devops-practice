#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
  # Get the CPU idle percentage and subtract it from 100 to get the usage percentage
  cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | sed 's/%,//')
  cpu_usage=$(echo "100 - $cpu_idle" | bc)
  echo "CPU Usage: $cpu_usage%"
}

# Function to get memory usage
get_mem_usage() {
  # Get the memory usage using the free command
  mem_total=$(free -m | awk 'NR==2{print $2}')
  mem_used=$(free -m | awk 'NR==2{print $3}')
  mem_usage=$(echo "scale=2; $mem_used/$mem_total*100" | bc)
  echo "Memory Usage: $mem_usage% ($mem_used MB / $mem_total MB)"
}

# Function to get disk usage
get_disk_usage() {
  # Get the disk usage using the df command for the root filesystem
  disk_usage=$(df -h / | awk 'NR==2 {print $5}')
  echo "Disk Usage: $disk_usage"
}

# Display system metrics
echo "System Usage Information:"
get_cpu_usage
get_mem_usage
get_disk_usage

