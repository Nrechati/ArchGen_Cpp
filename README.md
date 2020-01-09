	╔═╗┬─┐┌─┐┬ ┬╔═╗┌─┐┌┐┌  ╔═╗┌─┐┌─┐
	╠═╣├┬┘│  ├─┤║ ╦├┤ │││  ║  ├─┘├─┘
	╩ ╩┴└─└─┘┴ ┴╚═╝└─┘┘└┘  ╚═╝┴  ┴

# ArchGen for C++

ArchGen for C++ is a simple bash script to auto generate C++ project file structure

## Installation

1 - git clone the project
```bash
gcl https://github.com/Nrechati/ArchGen_Cpp.git
```

2 - (Recommended) : make an alias
```bash
echo "alias <alias_name>="sh path-to-ArchGen_Cpp.sh"" >> .<your shell rc file>
```
## Usage

1 - You'll need to go to an empty directory where you wan't to generate the architecture <br />
2 - Just run
```bash
<alias_name> Class I_Interface A_AbstractClass
```
NB : Arguments are the classes you want to build with the project. You need to prefix with "I_" for Interfaces and "A_" for Abstract classes.

## Functioning

Note that this project started as a way to gain time for my school project. Thus this is not flawless at all. But I think this could be handy for some. I'll try to document here what the script do, so you can know what to expect from it.

```bash
1. Create includes and srcs directories

2. Generate a simple Makefile and main.cpp

3. For each argument
	if [I_*]
		create only .hpp for Interface wich have pure method only
	else if [A_*]
		create Abstract class .hpp and .cpp with template according to cannonical form and one pure method
	else
		create regular cannonical class.cpp and .hpp

	Every template is filled with the argument name as ClassName

4. Add each created .hpp as include in main.cpp

5. Add each .cpp as Makefile src

6. Prompt for a Binary name change and change Makefile according to it
```

I specially know my Makefile is clearly not the best but you can change files in "srcs" directories to replace them by what you want.


## Screenshots

### Running the script

![Run](./srcs/Screenshot/run.png)

### Generated Tree

![Tree](./srcs/Screenshot/tree.png)

### Compilation

![Compile](./srcs/Screenshot/compile.png)

## Further Ideas

- Need to be able to add a new class or file to an existing project
- Linux Compatibility

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.

## My Other Projects
[nrechati](https://github.com/Nrechati)
