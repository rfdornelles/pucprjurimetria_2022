## Rodrigo Dornelles - Sat Feb 19 00:38:27 2022
##
## Objetivo:


# ref ---------------------------------------------------------------------

# https://www.rstudio.com/resources/cheatsheets/#translations
# https://livro.curso-r.com/

# video crianças - legendado: https://www.youtube.com/watch?v=pdhqwbUWf4U

# https://abj.org.br/pdf/estudo-camaras-criminais-tj-sp.pdf

# API do CNJ

# aula01 ------------------------------------------------------------------

## conteúdo do curso
# pq R: gratuita

## baixar R e RStudio

# [link para instalação R e RStudio]
# [falar do rstudio.cloud]

## ambientação ao RStudio

# telas: console / editor / environment / plots e files
# console: somas, operações, comandos
# editor/source/fonte: cntr ou cmd+enter, grava o que foi feito, permite
# reprodutibilidade
# environment: memória do computador, nomear objetos para salvar lá
# files: ver e manusear pastas e arquivos do computador
# plot e visualizações

## projetos
# como criar um projeto
# diretório organizado
# criar pastas: data-raw, data, R, docs

## objetos no R
# textos, números, datas, V/F/NA, etc
# como criar objetos
# classe do objeto - comportamento
# character - texto, operações próprias de texto, coloco entre ""
# números - inteiros e numéricos
# lógico - boolean,
# datas - que são números, padrão internacional AAAA-MM-DD HH:MM:SS, operações

## vetores
# sequência de valores
# comando concatenar

## data frame
# tabela, conjunto de vetores, mesmo valor

## matrizes
# vetores com dimensão

## listas
# objetos heterogêneos


# aula02 ------------------------------------------------------------------

## funções
# comandos/pedidos
# ex: Sys.time()
# ()
# parâmetros

## pacotes
# conjunto de funções, bibliotecas
# instalação de pacotes
# aba packages

## instalação de pacotes básicos
install.packages("remotes")
install.packages("tidyverse")

## instalação de pacotes jurimétricos
# funções de coleta e limpeza
remotes::install_github("jjesusfilho/tjsp")
remotes::install_github("jjesusfilho/JurisVis")
remotes::install_github("courtsbr/JurisMiner")
remotes::install_github("jjesusfilho/stf")
remotes::install_github("jjesusfilho/stj")

########## 11:20 min

## tjsp
# busca por jurisprudência
# site/consultas/jurisprudência
# mostrar como funciona a ferramenta de busca do site
# buscar ementa, registro, classe, etc
# no R vamos reproduzir o que fizemos a busca
# classe processual: como escolher
# inspecionar para copiar parâmetros
# inspect / network / headers / form data

# carregar pacotes
# copiar os parâmetros da pesquisa
# https://tjsp.consudata.com.br/
# help - cjsg

# estrutura de pastas / projeto
# argumento n para limitar os resultados
# interromper o R

# função de leitura: ler_cjsg
# dados vêm em formato de tabela, estruturado
# poupa o trabalho de ficar copiando e colando
# vai baixar os metadados

# baixar acórdãos e mais dados
# habilitação / autenticação
# https://esaj.tjsp.jus.br/sajcas/login / Não estou habilitado
# mais dados, como tramitação, partes, etc
# dispositivo

# pasta cposg
# preciso de autenticação
# tjsp_baixar_cposg(.....)

# ler os dados na memoria do R
# listar todos os arquivos: list.files(..., full.names = TRUE)
# ler_cposg

# ler partes
# ler dispositivo
# ler movimentação

# a tarefa vai ser aprender os dados


# aula03 ------------------------------------------------------------------
# file:///H:/My%20Drive/P%C3%B3s%20Jurimetria%20-%20PUC-PR/JOS%C3%89%20DE%20JESUS%20FILHO_Aula%2003.mp4

# inspecionar cada um desses dados para extrair insights

# ementa, relator, partes, dispositivo, movimentação, etc
# ciência de dados no R / r4ds

## tidyverse
# carrregar pacote
# dplyr, tidyr, stringr

## dplyr
# select - extrair colunas
# filter - extrair linhas, testes lógicos
# arrange - ordenar, desc()
# count - contar, sort = T
# mutate - modificar ou criar colunas,
install.packages("lubridate")
# summarise - resumir os dados
# group_by - agrupar os dados
# join_ - juntar os dados com base em uma ou mais colunas
# case_when

# olhar mês de julgamento, ano, dia, frequencias, etc

## pipe, diz "então"

## tidyr
# separate - separar origem, comarca, foro (/)
# unite
# pivot_wider
# pivot_longer

## stringr


# aula04 ------------------------------------------------------------------
# file:///H:/My%20Drive/P%C3%B3s%20Jurimetria%20-%20PUC-PR/JOS%C3%89%20DE%20JESUS%20FILHO_Aula%2004.mp4

## manuseio de texto, string R
# https://direito.consudata.com.br/jurimetria/strings1/

# str_c
# str_length
# str_sub
# str_trim
# str_squish

# aplicar squish com mutate

# case_when


## regex
# expressões regulares
# https://direito.consudata.com.br/shiny/stringr/
# identificar padrões em texto

# str_extract
# str_replace / str_remove
# str_detect

# combinação str_detect + case_when



# aula05 ------------------------------------------------------------------
# file:///H:/My%20Drive/P%C3%B3s%20Jurimetria%20-%20PUC-PR/JOS%C3%89%20DE%20JESUS%20FILHO_Aula%2005.mp4

# agora vamos juntar tudo, manusear os dados para analisar

# primeira limpeza (seleção das colunas úteis)
# dispositivo: criar uma coluna para classificar usando função, ajuda na maior
# parte dos casos. pode ser necessário trabalho manual

# str_detect pra ver se trata de prescrição

# partes: examinar os dados, filtrar apenas pelo apelante
# verificar se há duplicados: vctrs, duplicate_detect
# não fazer.......

# detectar ministerio publico
# reduzir a base, organizar que permita analisar
# análise exploratória

# quem tende a ter mais sucesso?

# jurisminer:
# tempo_movimentacao
# group_by + summarise para olhar por grupos

# arrumar nome das câmaras (só números e maiúsculas)

# join tempo do processo
# ver se tempo de tramitação e prescrição se correlacionam

# gráfico, gg_decisao

# citação: minuto 56

