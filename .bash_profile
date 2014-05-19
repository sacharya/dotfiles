export EDITOR="vi"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	source bin/venv.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias src="cd ~/Documents/"
	source bin/java_env.sh
else
	echo "Unsupported $OSTYPE"
fi
