if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone https://github.com/Pranav2335/IMDB-prvbot.git /IMDB-prvbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /IMDB-prvbot
fi
cd /IMDB-prvbot
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
