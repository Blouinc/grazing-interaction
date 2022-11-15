# local r docker container running on port 8787
# this command disables authentication so only use it on a localhost/private network
docker run -d -e DISABLE_AUTH=true -e ROOT=TRUE --rm -p 127.0.0.1:8787:8787 `
-v C:/Users/bloui/Heber_Veg_Report/grazing-interaction:/home/rstudio/grazing-interaction `
>> amantaya/rocker-verse:4.0.5
