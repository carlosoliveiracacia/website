# Builds documentation using sphinx

# install necessary packages
NeededPkgs="sphinx nbsphinx sphinx_rtd_theme"

for p in $NeededPkgs; do
    c="import ${p}"
    if python -c "${c}" &> /dev/null; then
        echo "${p} has already been installed"
    else
        pip install "${p}"
    fi
done

# Get directory where bash script seats
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# build docs
cd "${DIR}"/../
make clean
make html

touch "${DIR}"/../docs/html/.nojekyll