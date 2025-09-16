import os
import sys

def comment_includes(directory_path):
    """
    Recursively iterates through all files in a directory and comments out
    lines that start with '#include'.

    Args:
        directory_path (str): The path to the directory to process.
    """
    if not os.path.isdir(directory_path):
        print(f"Error: Directory not found at '{directory_path}'")
        sys.exit(1)

    for root, _, files in os.walk(directory_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            if not file_path.endswith(".glsl"):
                continue
            try:
                with open(file_path, 'r') as file:
                    lines = file.readlines()

                modified_lines = []
                for line in lines:
                    if line.strip().startswith('#include'):
                        new_line = modify_line(line)
                        modified_lines.append(new_line)
                    else:
                        modified_lines.append(line)

                with open(file_path, 'w') as file:
                    file.writelines(modified_lines)

                print(f"Processed file: {file_path}")
            except Exception as e:
                print(f"Could not process file {file_path}. Error: {e}")

def modify_line(line):
    """
    Modifies an include line by removing all occurrences of '../'
    and prepending 'res://'.

    Args:
        line (str): The original line of text.

    Returns:
        str: The modified line.
    """
    # Find the part of the line after '#include'
    include_path = line.split(" ")[1][1:]

    # Remove all '../' parts
    modified_path = include_path.replace('../', '')

    # Prepend 'res://' and return the full line
    return f"""#include "res://addons/lygia_godot/{modified_path}"""

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script_name.py <directory_path>")
        sys.exit(1)

    target_directory = sys.argv[1]
    comment_includes(target_directory)