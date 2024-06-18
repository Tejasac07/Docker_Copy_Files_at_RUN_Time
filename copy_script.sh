

if [ ${ENV} = "QA" ]; then
	cp -r /app/QA /opt/QA

elif [ ${ENV} = "preprod" ]; then
	cp -r /app/preprod /opt/preprod
else
	echo "No environment specified"
fi

java -jar java-rest-api-calculator.jar 
