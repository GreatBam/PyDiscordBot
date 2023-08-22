#Deriving the latest base image
FROM python:latest

#Labels as key value pair
LABEL Maintainer="greatbam"

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /usr/app/src

# to COPY the remote file at working directory in container
# One by one file can be copied or all files can be copied
# COPY bot.py ./
# COPY requirements.txt ./

# Or select the whole folder
COPY . ./

# Now the structure looks like this '/usr/app/src/bot.py'
RUN pip install -r requirements.txt

#CMD instruction should be used to run the software
#contained by your image, along with any arguments.
CMD [ "python", "./bot.py"]