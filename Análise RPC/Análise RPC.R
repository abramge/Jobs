library(data.table)
library(tidyverse)
library(readODS)

url <- "http://ftp.dadosabertos.ans.gov.br/FTP/PDA/RPC/"

rpc_2015_01 <- fread(paste(url,"RPC_2015_1trim.csv",sep=""),header=TRUE)
rpc_2015_02 <- fread(paste(url,"RPC_2015_2trim.csv",sep=""),header=TRUE)
rpc_2015_03 <- fread(paste(url,"RPC_2015_3trim.csv",sep=""),header=TRUE)
rpc_2015_04 <- fread(paste(url,"RPC_2015_4trim.csv",sep=""),header=TRUE)
rpc_2016_01 <- fread(paste(url,"RPC_2016_1trim.csv",sep=""),header=TRUE)
rpc_2016_02 <- fread(paste(url,"RPC_2016_2trim.csv",sep=""),header=TRUE)
rpc_2016_03 <- fread(paste(url,"RPC_2016_3trim.csv",sep=""),header=TRUE)
rpc_2016_04 <- fread(paste(url,"RPC_2016_4trim.csv",sep=""),header=TRUE)
rpc_2017_01 <- fread(paste(url,"RPC_2017_1trim.csv",sep=""),header=TRUE)
rpc_2017_02 <- fread(paste(url,"RPC_2017_2trim.csv",sep=""),header=TRUE)
rpc_2017_03 <- fread(paste(url,"RPC_2017_3trim.csv",sep=""),header=TRUE)
rpc_2017_04 <- fread(paste(url,"RPC_2017_4trim.csv",sep=""),header=TRUE)
rpc_2018_01 <- fread(paste(url,"RPC_2018_1trim.csv",sep=""),header=TRUE)
rpc_2018_02 <- fread(paste(url,"RPC_2018_2trim.csv",sep=""),header=TRUE)
rpc_2018_03 <- fread(paste(url,"RPC_2018_3trim.csv",sep=""),header=TRUE)
rpc_2018_04 <- fread(paste(url,"RPC_2018_4trim.csv",sep=""),header=TRUE)

official_metadata <- read_ods("C:/Users/Gustavo Bruschi/Downloads/dicionario_de_dados_rpc.ods")
official_metadata <- official_metadata[8:29,]
colnames(official_metadata) <- as.character(unlist(official_metadata[1,]))
official_metadata <- official_metadata[-1,]



tabela_1 <-
  ## separar dados necessários ------------------------------------------------
  rpc_2018_04 %>%
  group_by(TP_VIGENCIA_PLANO,CD_OPERADORA) %>%
  summarise(percentual_mean=mean(PERCENTUAL))








