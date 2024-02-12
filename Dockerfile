FROM python:3.10


WORKDIR /SayanavaLearningRobotFramework
COPY . .

RUN python3 -m pip install --upgrade pip

#install dependencies
RUN pip install -r requirements.txt
RUN pip install selenium==4.9.0
RUN pip install robotframework-pabot
#CMD pabot.exe --processes 4 .\TestCases\*.robot
CMD robot ./TestCases/*.robot