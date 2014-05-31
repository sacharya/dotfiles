export EDITOR="vi"

source .git-bash-completion.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	#source ~/.includes/venv.sh
	echo "Nothing to do right now..."
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias src="cd ~/Documents/"
	source ~/.includes/my_env.sh
else
	echo "Unsupported $OSTYPE"
fi
