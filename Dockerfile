FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage 'DefaultEndpointsProtocol=https;AccountName=storageaccountlogicb531;AccountKey=NWAgx26+8eybzIAAi2fb/0eawpqTXDbUy1QfoireXzQd7Qx3uFCn9Ntj86fsqVXnVcXp6ZaCONMH8yGyDJ+hFw==;EndpointSuffix=core.windows.net'
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
     AzureFunctionsJobHost__Logging__Console__IsEnabled=true \
     FUNCTIONS_V2_COMPATIBILITY_MODE=true

COPY ./bin/Release/netcoreapp3.1/publish/ /home/site/wwwroot