# data_science_template
This repository includes template for data science projects
The idea is not provide a comprehensive template but rather a simple one that is easy to implement and use

# What this repository will provide:
1. Instructions on how to use this template for creating your new python data science project repository
2. Instructions on how to setup the tools that will make your life easier
3. Instructions on how to create a new environment using poetry

## How to use this template
1. Its actually super easy to use this template. Just click on use this template from the repository (where you usually see the ssh and download options)
2. Follow the normal steps to create your own repository from this template. [Additional details here](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
3. You can do these additional steps to change some settings on Github once you create your own repository:
   1. Go to settings -> Branches -> Add branch protection rule -> Name: master, and check require a pull request before merging (this will use the pull request template for any work that you do)
## How to setup the tools that will make your life easier
1. Install VSCode (I really like this editor, so I will share instructions on how to set up VSCode)
2. Install Anaconda
3. Optional step: I really like these plugins in VSCode, so install these plugins:
   1. Programming: Python, CMake, CMake Tools, Code Runner, Jupyter, Jupyter cell tags, Jupyter keymaps, Jupyter notebook renderers, Jupyter slide show, Pylance, 
   2. Documentation: autoDocstring, IconFonts, IntelliCode, IntelliCode API Usage Examples, code Spell Checker, colourize, isort, GitLens, markdown all in one, makefile tools, Psioniq file header, sapphire theme,
   3. Cloud: Azure repos, Docker, Github Pull Requests and Issues, GitHub Repositories, live preview, remote repositories, WSL
   4. 3rd party software: Draw.io Integration, Excel Viewer, Figma for VS Code, latex language support, latex workshop, vs code-pdf,  vs code icons,
   5. CSS: Beautify, CSS Peek, ESLint, HTML CSS Support, Intellisense for CSS class names, Json Crack
4. Download and install Gitbash. Follow the instructions to setup Gitbash for remote repositories:
5. Open Gitbash and use the following commands to setup Gitbash via SSH
   1. For checking your SSH version: 
      1. ``ssh -V``
   2. Setting your Global Username and Email : 
      1. ``git config --global user.name "First Last"`` 
      2. ``git config --global user.email "first.last@mail.com”``
   3. Check if you already have any SSH keys which you can use: 
      1. ``ls -al ~/.ssh``
      2. If you already have a ssh file then you can just copy the key from the .pub file and go to step g
   4. Start the ssh-agent: 
      1. ``eval $(ssh-agent -s)``
   5. Generating SSH Keys using OpenSSH and generating SSH keys with ssh-keygen: 
      1. ``ssh-keygen -t rsa -b 4096 -C "first.last@mail.com"``
      2. This will ask you to save your SSH key at a location. Enter an address or keep it default
      3. Now enter a passphrase (remember this since you will need it later)
      4. You should see RSA generation successful. Usually, the created file is under C:/users/name/.ssh/
      5. Open the id_rsa.pub file in the above folder and copy the key
   6.  Go to github.com and add this public key
       1.  Navigate to the upper right corner and click on your profile
       2.  Go to settings
       3.  Go to SSH and GPG keys section
       4.  Click the new SSH key and paste the SSH key you copied in the step above
   7.  Add your Private key to SSH Agent: 
       1.  ``ssh-add ~/.ssh/id_rsa``
       2.  Enter the passphrase from the steps above
       3.  You should see a message saying identity added
   8.  Now test your GitBash authentication with Github: 
       1.  ``ssh -T git@github.com``
       2.  You should see a message saying you have successfully authenticated
6.  Login to GitHub account in VSCode

## Instruction on creating a new environment
1. Creating environment is very easy
2. Change the name of the project in pyproject.toml
3. For creating the environment use command ``make init``
4. Now you should see an environment created with the name of the project you choose in step 1
5. You can select this environment for all your notebooks
6. Once you are done adding code, to format and lint the code use command ``make all``