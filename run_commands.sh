#!/bin/bash

# Set the script to exit immediately on any error
set -e

echo "Running Bazel Build..."
# Run the Bazel command (adjust the target as necessary)
bazel build //:iOSApp

echo "Running Rake Task..."
# Run the Rake task (adjust the task name as necessary)
rake test:run

echo "Both commands executed successfully."
