#!/bin/bash

# Update package list and install curl
echo "Updating package list..."
sudo apt update && sudo apt install -y curl build-essential

# Download and run the rustup installation script
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Set up environment variables for Rust
echo "Setting up Rust environment..."
source "$HOME/.cargo/env"

# Verify installation
echo "Verifying Rust installation..."
rustc --version

echo "Rust installation completed successfully!"
