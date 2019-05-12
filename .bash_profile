if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"
