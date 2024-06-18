with import <nixpkgs> { };

mkShell {

  name = "env";
  buildInputs = [
    python3Packages.python
    python3Packages.venvShellHook
    python3Packages.ipython
    python3Packages.ipykernel
  ];

  venvDir = "./.venv";
  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install --prefix=.venv jupyter
    pip install --prefix=.venv bash_kernel
    python -m bash_kernel.install
  '';

  postShellHook = ''
    # allow pip to install wheels
    unset SOURCE_DATE_EPOCH
  '';

}