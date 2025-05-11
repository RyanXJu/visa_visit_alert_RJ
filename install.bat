@echo off
REM Clone the Git repository into the current directory
git clone https://github.com/RyanXJu/visa_visit_alert_RJ.git

REM Navigate to the cloned repository folder
cd visa_visit_alert_RJ

REM Create a virtual environment named venv_linkedinscrap
python -m venv venv_visa_v_alert

REM Activate the virtual environment
call venv_visa_v_alert\Scripts\activate

REM Install all requirements from requirements.txt
pip install -r requirements.txt

REM Copy config.example.py to config.py
copy config.example.py config.py

REM Prompt the user for their account name and password
set /p sessions_token="Enter sessions token: "

REM Append the account name and password to config.py
echo my_sessions_token = "%sessions_token%" >> config.py


REM Confirm completion
echo Repository cloned, virtual environment created, activated, requirements installed, config file copied.
pause

