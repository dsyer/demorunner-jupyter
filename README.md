# Jupyter bash kernel demorunner

Example dev environment project for bash and jupyter notebooks. You can open the notebook in VSCode or in your browser. Once you have the notebook open, you can run the cells by clicking the run button or pressing `shift + enter`. The container can be rebuilt and will remember the python environment and jupyter notebook settings.

## Running the Notebook

### VSCode

Once the python environment is sorted out, you can open the project in VSCode. Open the notebook in the editor and select a kernel from the picker at the top right - the "Bash" kernel should show up as a ["Jupyter Kernel"](https://code.visualstudio.com/docs/datascience/jupyter-kernel-management#_jupyter-kernels).

### Command line and Browser

Prepare the python environment:

```
$ nix-shell
```

(If you already have all the dependencies you don't need this.) Then launch the notebook in your browser:

```
$ jupyter notebook sample.ipynb
```

## Dependencies and Python Environment

### Nix Shell

The `shell.nix` sets up a virtual python environment with `pip`. If you have the [Nix extension](https://marketplace.visualstudio.com/items?itemName=bbenoist.Nix) for VSCode installed, you can open the project locally (without a devcontainer) by selecting the `shell.nix` file as an environment.

## Conda

If you use conda, you can create a new environment with the `environment.yml` file:

```
# This is already done in devcontainer.json
$ conda env update -n base -f environment.yml
$ python -m bash_kernel.install
```

### VSCode and Devcontainer

Open the project in VSCode and build a devcontainer. In the devcontainer open the notebook in the editor.

