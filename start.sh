if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone -b v1.0-forme https://github.com/cvatricks/EvaMariaa.git /EvaMariaa
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMariaa
fi
cd /EvaMariaa
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
