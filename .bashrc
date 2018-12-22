export EDITOR="vi"

source ~/.git-bash-completion.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	#source ~/.includes/venv.sh
	echo "Nothing to do right now..."
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias src="cd ~/MyDocuments/CloudLabs"
	source ~/.includes/my_env.sh
else
	echo "Unsupported $OSTYPE"
fi
export GOPATH=/Users/sudarshan.acharya/MyDocuments/CloudLabs/gowork
export NEW_GOROOT=/Users/sudarshan.acharya/.gvm/gos/go1.11.4
export GOROOT_BOOTSTRAP=/Users/sudarshan.acharya/.gvm/gos/go1.11.4
