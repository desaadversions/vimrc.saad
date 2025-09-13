

## Pathogen package installation

To install any package for use in Vim:

```bash
# Clone the desired repository
cd ~/.vim/autoload
# Go to this folder, then:
git clone <repository-url> .
# Add this line to your .vimrc file:
execute pathogen#infect()

