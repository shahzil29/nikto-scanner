#!/bin/bash

echo "[*] Enter the target website (e.g., http://example.com): "
read target

timestamp=$(date +"%Y-%m-%d_%H-%M")
output_file="nikto_scan_$timestamp.txt"

echo "[*] Scanning $target..."
nikto -h "$target" -o "$output_file"

echo "[✔] Scan complete. Results saved to $output_file"
