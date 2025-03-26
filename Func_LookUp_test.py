import csv
import os

def find_function_in_file(file_path, function_name):
    """Find the line number where a function is defined in the file."""
    try:
        with open(file_path, 'r') as file:
            for line_number, line in enumerate(file, start=1):
                if f"function {function_name}" in line:
                    return line_number
    except FileNotFoundError:
        print(f"File not found: {file_path}")
    return None

def main():
    csv_file = 'WoW_API_Functions_Live.csv'
    base_url = 'https://github.com/Gethe/wow-ui-source/blob/live/Interface/AddOns/'
    
    user_func_lookup = input("Enter function name to look up: ").strip().lower()
    results = []
    
    try:
        with open(csv_file, mode='r') as file:
            reader = csv.DictReader(file)
            for row in reader:
                # Case-insensitive and partial match
                if user_func_lookup in row['Function Name'].lower():
                    source_file = row['Source File']
                    line_number = row.get('Line Number')
                    
                    if line_number:
                        hyperlink = f"{base_url}{source_file}#L{line_number}"
                        results.append(hyperlink)
                    else:
                        print(f"Function '{row['Function Name']}' not found in {source_file}.")
        
        if results:
            print("\n🔎 **Found Matches:**")
            for link in results:
                print(link)
        else:
            print(f"\n❌ No matches found for '{user_func_lookup}'.")
    
    except FileNotFoundError:
        print(f"CSV file '{csv_file}' not found.")
    except KeyError:
        print("Invalid CSV format. Expected headers: 'Function Name', 'Source File'.")

if __name__ == "__main__":
    main()
