# Jupyter bash kernel demorunner

Example dev environment project for bash and jupyter notebooks. You can open the notebook in VSCode or in your browser. Once you have the notebook open, you can run the cells by clicking the run button or pressing `shift + enter`. The container can be rebuilt and will remember the python environment and jupyter notebook settings.

## Running the Notebook

### VSCode

Once the python environment is sorted out (see below), you need the [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) extension in VSCode. You also need the [Nix environment extension](https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector) if you are using nix to manage the project dependencies. Open the notebook in the editor and select a kernel from the picker at the top right - the "Bash" kernel should show up as a ["Jupyter Kernel"](https://code.visualstudio.com/docs/datascience/jupyter-kernel-management#_jupyter-kernels) if you got all the dependencies set up.

### Command line and Browser

If you already have all the dependencies then you can launch the notebook in your browser:

```
$ jupyter notebook sample.ipynb
```

starts a web server and opens it in your browser. You might need to restart or reselect the "Bash" kernel in the notebook.

## Dependencies and Python Environment

The safest way to start is to `rm -rf .venv` to clear out any relics of previous environments, and reload the window in VSCode. Then you can create a new environment with one of the following methods. Installing the bash kernel with `python -m bash_kernel.install` is necessary for the bash notebook to work, and it seems to work best when installed in the user's home directory (`~/.local/share/jupyter/kernels/bash`), which is the default. It works in VSCode and on the command line, but it's not nice because you might have multiple virtual python environments and there is only ever one `kernel.json`.


### Nix Shell

You can create the environment with `nix-shell` on the command line. This will drop you into a shell with the environment activated. The configuration in `shell.nix` sets up a virtual python environment with `pip`.

If you have the [Nix environment extension](https://marketplace.visualstudio.com/items?itemName=arrterian.nix-env-selector) for VSCode, you can open the project locally (without a devcontainer) by selecting the `shell.nix` file as an environment. You might need to manually reload the window after selecting the environment.

### Pip

If you use pip, you can create a new environment with the `requirements.txt` file. 

```
$ pip install -r requirements.txt
$ python -m bash_kernel.install
```

You can try with `--sys-prefix` if you want to install the kernel in the local python environment (it shows up in `.venv/share`), but that doesn't seem to work in VSCode (only on the command line and browser).
### Conda

If you use conda, you can create a new environment with the `environment.yml` file. Assuming the "base" environment is active:

```
# This is already done in devcontainer.json
$ conda env update -n base -f environment.yml
$ python -m bash_kernel.install
```

### VSCode and Devcontainer

Then open the project in VSCode and build a devcontainer. In the devcontainer open the notebook in the editor. You might need to select the Nix environment, and reload the window again to get the Bash kernel to work in `sample.ipynb`. The plain python notebook `test.ipynb` should be fine.


