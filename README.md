
# Projeto de Gráficos – Regressão Marketing

## Estrutura
Coloque o arquivo de dados na raiz do projeto com o nome:

03 - Marketing - Disponibilizar.xlsx

## Instalar pacotes necessários no R

No console do R rode:

install.packages("readxl")
install.packages("ggplot2")
install.packages("dplyr")

## Executar o script

No R:

source("gerar_graficos.R")

## Gerar Gráficos

Para gerar os gráficos:

1) instalar dependências

Rscript -e "install.packages(c('readxl','ggplot2','dplyr'), repos='https://cloud.r-project.org')"

2) rodar o script

Rscript gerar_graficos.R

## Resultado

Os gráficos serão salvos automaticamente na pasta:

graficos/

Arquivos gerados:
- histograma_receita.png
- boxplot_receita.png
- receita_vs_invest_digital.png
- receita_vs_cliques.png
- receita_por_canal.png