# Jupyter bash kernel demorunner

Example dev environment project for bash and jupyter notebooks.

## VSCode and Devcontainer

```
# This is already done in devcontainer.json
$ conda env update -n base -f environment.yml
$ python -m bash_kernel.install
```

Open the project in VSCode and build a devcontainer. In the devcontainer open the notebook in the editor. Once you have the notebook open, you can run the cells by clicking the run button or pressing `shift + enter`. The container can be rebuilt and will remember the python environment and jupyter notebook settings.

## Nix Shell

The devcontainer uses conda as apython package manager. You can also use pip, and a virtual python environment. That's what the `shell.nix` does for you. If you have the [Nix extension](https://marketplace.visualstudio.com/items?itemName=bbenoist.Nix) for VSCode installed, you can open the project locally (without a devcontainer) by selecting the `shell.nix` file as an environment.

## Command line and Browser

Prepare the python environment:

```
$ nix-shell
```

(If you already have all the dependencies you don't need this.) Then launch the notebook in your browser:

```
$ jupyter notebook sample.ipynb
```

