@echo off

rem Set values for your Language Understanding app
set app_id=4f2fcd55-79d7-42f8-ad39-9b2db21c4ba0
set endpoint=https://ai10205practice-luis01.cognitiveservices.azure.com/
set key=5fffac50a06d4a8d9331b4a17b80d837

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"