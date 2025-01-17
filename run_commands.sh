#!/bin/bash

# Set the script to exit immediately on any error
set -e

echo "Running Bazel Build..."
# Run the Bazel command (adjust the target as necessary)
bazel build //:iOSApp

echo "Running Rake Task..."
# Run the Rake task (adjust the task name as necessary)
#rake test:run

echo "Running Rake Task..."

# Fetch all tags from the remote repository
echo "Fetching tags from remote repository..."
git fetch --tags

# Get all tags from the remote and store them in a variable, trimming extra spaces
echo "Fetching tag list..."
TAGS=$(git tag -l | tr -s '[:space:]' '\n')  # Normalize the tags list

# Print the fetched tags for debugging
echo "Fetched tags:"
echo "$TAGS"

# Debugging: Explicitly show each tag in the list
echo "Iterating through tags..."
for TAG in $TAGS; do
  echo "Tag: $TAG"
done

# Check if any tag exactly matches "Staging" or contains "staging"
echo "Checking for Staging tags..."
if echo "$TAGS" | grep -w -q "Staging"; then
  echo "Match found: Staging"
  echo "Running tests for Staging"
  rake test:staging  # Run tests for Staging
elif echo "$TAGS" | grep -w -q "staging"; then
  echo "Match found: staging"
  echo "Running tests for Staging"
  rake test:staging  # Run tests for Staging
else
  echo "No match for Staging or staging tags."
  echo "Running tests for Production"
  rake test:production  # Run tests for Production
fi






echo "Both commands executed successfully."
