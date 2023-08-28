# Data Science Template
This repository includes a template for data science projects.
The idea is not to provide a comprehensive template, but rather a simple one that is easy to implement and use.

## What This Repository Will Provide
1. Instructions on how to use this template to create your new Python data science project repository.
2. Instructions on how to set up the tools that will make your life easier.
3. Instructions on how to create a new environment using Poetry.

## How to Use This Template
1. It's actually super easy to use this template. Just click on "Use this template" in the repository (where you usually see the SSH and download options).
2. Follow the standard steps to create your repository from this template. [Additional details here](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
3. After creating your repository, consider these additional steps to change some settings on GitHub:
   1. Go to Settings -> Branches -> Add branch protection rule -> Name: master, and check "Require a pull request before merging" (this will use the pull request template for any work you do).

## How to Set Up Tools for Faster Development
1. Install [VSCode](https://code.visualstudio.com/) (I really like this editor, so I'll share instructions on how to set up VSCode).
2. Install [Anaconda](https://www.anaconda.com/).
3. Optional step: I really like these plugins in VSCode, so install these plugins:
   1. Programming: Python, CMake, CMake Tools, Code Runner, Jupyter, Jupyter cell tags, Jupyter keymaps, Jupyter notebook renderers, Jupyter slide show, Pylance. 
   2. Documentation: autoDocstring, IconFonts, IntelliCode, IntelliCode API Usage Examples, Code Spell Checker, Colorize, isort, GitLens, markdown all in one, makefile tools, Psioniq file header, sapphire theme,
   3. Cloud: Azure repos, Docker, GitHub Pull Requests and Issues, GitHub Repositories, live preview, remote repositories, WSL.
   4. Third-party software: Draw.io Integration, Excel Viewer, Figma for VS Code, LaTeX language support, LaTeX workshop, vs code-pdf,  vs code icons,
   5. CSS: Beautify, CSS Peek, ESLint, HTML CSS Support, Intellisense for CSS class names, Json Crack.
4. Download and install [Git Bash](https://git-scm.com/downloads). Follow the instructions to set up Gitbash for remote repositories.
5. Open Gitbash and use the following commands to set up Gitbash via SSH:
   1. To check your SSH version:
      1. ``ssh -V``
   2. Set your Global Username and Email:
      1. ``git config --global user.name "First Last"``
      2. ``git config --global user.email "first.last@mail.com"``
   3. Check if you already have any SSH keys you can use:
      1. ``ls -al ~/.ssh``
      2. If you already have an SSH file, you can copy the key from the .pub file and proceed to step g.
   4. Start the ssh-agent:
      1. ``eval $(ssh-agent -s)``
   5. Generate SSH Keys using OpenSSH and ssh-keygen:
      1. ``ssh-keygen -t rsa -b 4096 -C "first.last@mail.com"``
      2. This will prompt you to save your SSH key at a location. Enter an address or keep it as the default.
      3. Now enter a passphrase (remember this since you will need it later).
      4. You should see RSA generation successful. Usually, the created file is under C:/users/name/.ssh/
      5. Open the id_rsa.pub file in the above folder and copy the key.
   6. Go to github.com and add this public key:
       1. Navigate to the upper right corner and click on your profile.
       2. Go to Settings.
       3. Go to the SSH and GPG keys section.
       4. Click the new SSH key and paste the SSH key you copied in the step above.
   7. Add your Private key to SSH Agent:
       1. ``ssh-add ~/.ssh/id_rsa``
       2. Enter the passphrase from the previous steps.
       3. You should see a message saying identity added.
   8. Now test your GitBash authentication with Github:
       1. ``ssh -T git@github.com``
       2. You should see a message saying you have successfully authenticated.

6. Log in to your GitHub account in VSCode.

## Instructions for Creating a New Environment
1. Creating an environment is very easy.
2. Change the name of the project in pyproject.toml. Additional details about [Poetry](https://python-poetry.org/docs/).
3. To create the environment, use the command ``make init``.
4. Now you should see an environment created with the name of the project you chose in step 1.
5. You can select this environment for all your notebooks.
6. Once you are done adding code, to format and lint the code use the command ``make all``."
