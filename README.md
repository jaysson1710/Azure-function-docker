# Azure-function-docker

## prerequisitos

[Azure-SDK](https://azure.microsoft.com/en-us/downloads/)
[azure-functions-core-tools](https://github.com/Azure/azure-functions-core-tools/releases/tag/3.0.3477)
[Azure-tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-node-azure-pack)

## creacion funcion

Con la extension de azure se tiene la opcion nuevo proyecto, seguir el paso a paso

![](/images/CRecion.png)


Una vez se crea la funcion

Crear el docker file en donde copia el contenido de la publiacion a la ruta `/home/site/wwwroot`

Comandos de ejecución
```powershell
dotnet publish --configuration Release
docker build -t demofunction .    
docker run --rm -p 8085:80 demofunction
curl http://localhost:8085/api/HttpTrigger1
```