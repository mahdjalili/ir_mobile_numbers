# Iranian Mobile Numbers Generator

This script generates and concatenates Iranian mobile numbers with various prefixes into a single output file using the `crunch` tool.

## Features

- Generates mobile numbers for MCI, MTN Irancell, and Rightel prefixes.
- Combines all generated numbers into a single output file named `iranian_mobile_numbers.txt`.

## Requirements

- **crunch**: This tool is used to generate numbers. You can install it using the following commands:

  ```bash
  sudo apt-get update
  sudo apt-get install crunch
  ```

## Usage

1. **Clone the Repository**

   ```bash
   git clone https://github.com/mahdjalili/iranian-mobile-numbers.git
   cd iranian-mobile-numbers
   ```

2. **Run the Script**

   Make the script executable and run it:

   ```bash
   chmod +x generate_and_concatenate_numbers.sh
   ./generate_and_concatenate_numbers.sh
   ```

3. **Output**

   The generated mobile numbers will be saved in `iranian_mobile_numbers.txt` in the same directory.

## Script Details

- **Output file**: `iranian_mobile_numbers.txt`
- **Prefixes**: 
  - **MCI**: 0910, 0911, 0912, 0913, 0914, 0915, 0916, 0917, 0918, 0919, 0990, 0991
  - **MTN Irancell**: 0901, 0902, 0903, 0930, 0933, 0935, 0936, 0937, 0938, 0939
  - **Rightel**: 0920, 0921, 0922

## Example

To generate numbers with the prefix 0912, `crunch` is used with the pattern `0912%%%%%%%`, generating all possible numbers matching this pattern and appending them to the output file.
