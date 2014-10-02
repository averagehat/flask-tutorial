#!/bin/bash
sudo pip install virtualenv
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
echo " #!/bin/bash" >> do.sh
echo "source venv/bin/activate" >> do.sh
echo "gunicorn app:app --log-file -" >> do.sh
screen -S mandrill -d -m ./do.sh