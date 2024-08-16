# Recyclebin Scripts

A set of bash scripts to recycle and restore files in the user's home directory.

## Scripts

The repository contains two main scripts:

1. **`recycle`**:

   - This script is used to recycle files to the recycle bin.
   - Usage:
     - `recycle {path}...`
     - `recycle [opt]... {path}...`
   - Options:
     - `-h`: display the help message
     - `-i`: interactive mode, prompts before recycling a file
     - `-v`: verbose mode, displays a message after recycling a file
     - `-r`: recycle files recursively for a given path, directories are removed after all files within are removed
   - Recycled files are stored in the `recyclebin` directory in the user's home directory, and restore information is stored in the `.restore.info` file.

2. **`restore`**:
   - This script is used to restore recycled files from the recycle bin.
   - Usage:
     - `restore {recycled-file-name}`
     - `restore -r {destination-path}`
   - Options:
     - `-h`: display the help message
     - `-r`: restore recursively all recycled files that were originally at or under a destination path
   - If a file to be restored is already present in the destination path, the user will be prompted for confirmation to overwrite the existing file.
   - The script will create non-existing directories if needed to restore a file to its original position.

## Makefile Targets

The repository also includes a Makefile with the following targets:

- `test`: run test suites in the `tests` directory. Will prompt for `y/n` before
  continuing, as running tests will remove all files
  in the recycle bin and remove all records in `.restore.info`
- `test-y`: like `test` phony target, but automatically answers `y` to the
  prompt. WARNING, this will remove all files in the recycle bin and remove all
  records in `.restore.info`
- `zip`: create a `recyclebin.zip` containing the two main scripts
- `zipwithtests`: create a `recyclebinWithTests.zip` containing the two main scripts and the tests in `tests` directory
- `clean`: remove any created zip files

## Usage

1. Clone the repository: `git clone https://github.com/dexterklui/bash-recycle-bin.git`
2. Navigate to the project directory
3. Use the `recycle` and `restore` scripts as described above.
