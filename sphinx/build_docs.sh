# Builds documentation using sphinx

# install necessary packages
pip install sphinx
pip install nbsphinx
pip install guzzle_sphinx_theme

# Get directory where bash script seats
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# build docs
cd "${DIR}"
make clean
make html


# copy docs to repo docs folder
rm -rf "${DIR}"/../docs/*
cp -r "${DIR}"/_build/html/* "${DIR}"/../docs/.