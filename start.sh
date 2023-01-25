if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone matrixbotz0/PETER-PARKERBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PETER-PARKERBOT
fi
cd /PETER-PARKERBOT
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
