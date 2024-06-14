# Jupyter bash kernel demorunner

Example dev environment project for bash and jupyter notebooks. You can open the notebook in VSCode or in your browser. Once you have the notebook open, you can run the cells by clicking the run button or pressing `shift + enter`. The container can be rebuilt and will remember the python environment and jupyter notebook settings.

## Running the Notebook

### VSCode

Once the python environment is sorted out, you need the [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) extension. You also need the [Nix environment extension](https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector) if you are using nix to manage the project dependencies. Open the notebook in the editor and select a kernel from the picker at the top right - the "Bash" kernel should show up as a ["Jupyter Kernel"](https://code.visualstudio.com/docs/datascience/jupyter-kernel-management#_jupyter-kernels) if you got all the dependencies set up.

### Command line and Browser

If you already have all the dependencies then you can launch the notebook in your browser:

```
$ jupyter notebook sample.ipynb
```

starts a web server and opens it in your browser. You might need to restart or reselect the "Bash" kernel in the notebook.

## Dependencies and Python Environment

### Nix Shell

The `shell.nix` sets up a virtual python environment with `pip`. You can create the environment with `nix-shell` on the command line. This will drop you into a shell with the environment activated.

If you have the [Nix environment extension](https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector) for VSCode installed, you can open the project locally (without a devcontainer) by selecting the `shell.nix` file as an environment. You might need to manually reload the window after selecting the environment.

### Pip

If you use pip, you can create a new environment with the `requirements.txt` file. 

```
$ pip install -r requirements.txt
$ python -m bash_kernel.install
```

### Conda

If you use conda, you can create a new environment with the `environment.yml` file. Assuming the "base" environment is active:

```
# This is already done in devcontainer.json
$ conda env update -n base -f environment.yml
$ python -m bash_kernel.install
```

### VSCode and Devcontainer

Open the project in VSCode and build a devcontainer. In the devcontainer open the notebook in the editor.

