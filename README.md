# Jupyter bash kernel demorunner

Example dev environment project for bash and jupyter notebooks.

```
# This is already done in devcontainer.json
$ conda env update -n base -f environment.yml
$ python -m bash_kernel.install
```

Open the notebook in the editor. Once you have the notebook open, you can run the cells by clicking the run button or pressing `shift + enter`. The container can be rebuilt and will remember the conda environment and jupyter notebook settings.
