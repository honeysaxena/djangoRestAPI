install:
	#install commands
	pip install --upgrade pip && pip install -r requirements.txt
format:
	#format code
	#black *.py mylib/*.py	
lint:
	#flake8 or #pylint
	#pylint --disable=R,C *.py mylib/*.py
test:
	#test
	#python -m pytest -vv --cov==mylib --cov==main test_*.py
build:
	#build container
	#docker build -t deploy-fastapi .
run:
	#run docker
	#docker run --name django-container -p 127.0.0.1:8090:8080 9c48a5890291	
deploy:
	#deploy
	#docker tag 9c48a5890291 honeysaxena/django-wiki:v1 
	#docker push honeysaxena/django-wiki:v1
all: install lint test deploy
