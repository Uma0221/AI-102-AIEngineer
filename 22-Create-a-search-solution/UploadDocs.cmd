@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=cefe3de8-028d-406d-b5cd-7712005d25be
set azure_storage_account=ai10205practice01storage
set azure_storage_key=ALNaulwvJ2BEU2dhMj0TRTD2eqo1Lg0t5BiNBUP82AFogJbplPfxMcRoXk/a2cmLRSia+LIhjwh2KN6kldB42w==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
