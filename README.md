# Bash Shell Scripting

Bash (Bourne Again Shell) is a shell scripting language for Linux operating systems

## Prerequisites

To run the Bash scripts in this project, you will need:

- A Unix-like environment (e.g., Linux or macOS)
- Bash shell (version 4 or later)

# Installation

1. Clone the repository to your local machine:

```bash
git clone <REPO_URL>
```

2. Change into the project directory

```bash
cd bash-scripting
```

## Usage

To run a Bash script, navigate to the project directory and execute the desired script using the Bash interpreter. For example:

```bash
bash script.sh
```

To check whether you're actually running in bash shell, run:

```bash
echo $SHELL
```

Make sure to provide necessary executable permissions to the script if required:

```bash
chmod +x script.sh
```

Also, provided you've configured the whole setup, to run the script, follow the command:

```bash
./script.sh
```

## Topics covered: 

1. Positional Arguments: Arguments are at specific positions. Commands can take arguments at a specific position, counting from one (0 reserved for the shell).

2. Piping: Send command output to other command. Example of this command is as follows:

```bash
ls -l /usr/bin | grep bash
```

3. Output redirection: Symbols used includes-

 - > symbol to write to a file

 ```bash
 echo Hello World > hello.txt
 ```

 - >> to append to a file

```bash
echo Good to see you >> hello.txt
```

4. Test Operators: Build in command `test` that takes a couple of arguments and tell whether the expression is true or not. Example:

```bash
[ hello = hello ]
echo $?
```

Note that exit code means the command was executed without any issues.

```bash
[ 1-eq,1 ]
echo $?
```

5. Arrays: Assigning multiple variables to one variable in a list.

```bash
my_list=(one two three four five)
echo ${my_list[@]}
echo ${my_list[1]}
```

6. For Loops: Counting the length of each word in the array by piping the item output using echo to the wc command

```bash
for item in ${my_list[@]}; do echo -n $item | wc -c; done
```

7. AWK: Used to filter file contents, or output of a file command in such a way that we can print out the most essential parts and get the output the way we like it.

```bash
awk '{print $1}' testfile.txt
awk -F, '{print $1}' csvtest.csv
echo "Just get this word: Hello" | awk '{print $5}'
echo "Just get this word: Hello" | awk -F: '{print $2}' | cut -c2
```

8. SED: To modify the values in txt files using regular expressions

```bash
sed 's/fly/grasshopper/g' sedtest.txt
sed -i.ORIGINAL 's/fly/grasshopper/g' sedtest.txt
```

Here, s is for substitute mode, fly is the word to be replaced and grasshopper is the word replaced.


