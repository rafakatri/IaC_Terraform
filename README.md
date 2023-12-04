# Guia de instalação

## Clonar repositório

* O repositório é público e se encontra nesse link.

## Instalar Terraform

* Um guia feito pela HashiCorp se encontra nesse link.

* Siga os passos recomendados para o seu sistema operacional.

## Configurar credenciais AWS

* Recomenda-se instalar o AWS CLI para gerenciar credenciais.

* Acesse esse site e siga as recomendações para seu sistema operacional. 

* O Terraform também aceita por padrão credenciais no diretório "~/.aws" ou "C:\Users\username\.aws" ou descritas em variáveis de ambiente, mas é preferível usar o AWS CLI.

## Configurar bucket S3

* Entre no Dashboard da AWS e entre no serviço S3 usando a barra de pesquisa. 

* Clique em "Create Bucket", crie um nome e selecione todas as opções padrões, menos versionamento, que deve ser marcada como "enabled". 

* O bucket deve ser criado na mesma região que a VPC do projeto.

* Escreva o nome do bucket criado no campo bucket do bloco backend, localizado no arquivo Main.tf do repositório. 

* Observação: não se confunda com os arquivos Main.tf dentro das pastas de módulo.

## Configurar lock DynamoDB

* Entre no Dashboard da AWS e entre no serviço DynamoDB usando a barra de pesquisa.

* Clique em "Create table", crie um nome e use "LockID" como Partition Key. 

* Não crie uma Sort Key. 

* Escolha configurações customizadas e selecione a opção "On-demand" na aba Read/write capacity settings. 

* Deixe o restante nas configurações padrão.

* Escreva o nome da tabela criada no campo "dynamodb table" do bloco backend, localizado no arquivo Main.tf do repositório. 

* Observação: não se confunda com os arquivos Main.tf dentro das pastas de módulo.

## Rodar comandos Terraform

* Execute o seguinte comandando para configurar o backend:

terraform init

* Execute o seguinte comando para verificar as operações a serem realizadas:

terraform plan

	
* Execute o seguinte comando para orquestrar o deploy da infraestrutura:
 
terraform apply

	
* Execute o seguinte comando para remover a infraestrutura:

terraform destroy
