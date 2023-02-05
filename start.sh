if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone Pranav2335/Mubi
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mubi
fi
cd /Mubi
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
