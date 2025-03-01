import os
import csv
import re
import json

# Path to AddOn folder to compare or just addons folder to check every addon in one go 
ADDONS_PATH = r"C:\\Program Files (x86)\\World of Warcraft\\_retail_\\Interface\\AddOns\\OldGods"

# Load removed functions from CSV
def load_removed_functions(csv_file):
    removed_functions = set()
    with open(csv_file, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            function_name = row.get("Function Name", "").strip()
            if function_name:
                removed_functions.add(function_name)
    return removed_functions
# Keep the csv file in the same dir as this .py script makes things easier
removed_functions = load_removed_functions("Removed_API_Functions.csv")

# Function to scan a single Lua file for deprecated function calls will be looped
def scan_lua_file(file_path):
    matches = []
    with open(file_path, "r", encoding="utf-8", errors="ignore") as lua_file:
        for line_num, line in enumerate(lua_file, start=1):
            for removed_func in removed_functions:
                if re.search(rf"\b{re.escape(removed_func)}\b", line):
                    matches.append((file_path, line_num, line.strip()))
    return matches

# Scan all AddOn Lua files the loop calls the previous function
def scan_addons():
    results = []
    for root, _, files in os.walk(ADDONS_PATH):
        for file in files:
            if file.endswith(".lua"):
                file_path = os.path.join(root, file)
                matches = scan_lua_file(file_path) # right here
                if matches:
                    results.extend(matches)
    return results

# Call to the function 
deprecated_usage = scan_addons()

# Save results to JSON for easy manipulation dumps the return from the var that calls the function
with open("wow_addons_deprecated_usage.json", "w", encoding="utf-8") as f:
    json.dump(deprecated_usage, f, indent=4)

# Output a little detail of results to the terminal file is saved in the same dir .py executed from 
print(f"Scan complete! {len(deprecated_usage)} occurrences of removed functions found.")
print(f"Results saved to wow_addons_deprecated_usage.json")
