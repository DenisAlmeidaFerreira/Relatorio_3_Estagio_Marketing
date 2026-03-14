
# =====================================
# Script: gerar_graficos.R
# Objetivo: Gerar gráficos exploratórios
# =====================================

library(readxl)
library(ggplot2)
library(dplyr)

# Caminho do dataset
dados <- read_excel("03 - Marketing - Disponibilizar.xlsx")

# Criar pasta de saída
if(!dir.exists("graficos")){
  dir.create("graficos")
}

# 1. Histograma da receita
g1 <- ggplot(dados, aes(x = receita_mil)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "black") +
  labs(
    title = "Distribuição da Receita das Campanhas",
    x = "Receita (mil)",
    y = "Frequência"
  ) +
  theme_minimal()

ggsave("graficos/histograma_receita.png", g1, width = 7, height = 5)

# 2. Boxplot da receita
g2 <- ggplot(dados, aes(y = receita_mil)) +
  geom_boxplot(fill = "orange") +
  labs(
    title = "Boxplot da Receita das Campanhas",
    y = "Receita (mil)"
  ) +
  theme_minimal()

ggsave("graficos/boxplot_receita.png", g2, width = 7, height = 5)

# 3. Receita vs Investimento Digital
g3 <- ggplot(dados, aes(x = invest_digital, y = receita_mil)) +
  geom_point(color = "darkblue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Receita vs Investimento Digital",
    x = "Investimento Digital",
    y = "Receita (mil)"
  ) +
  theme_minimal()

ggsave("graficos/receita_vs_invest_digital.png", g3, width = 7, height = 5)

# 4. Receita vs Número de Cliques
g4 <- ggplot(dados, aes(x = num_cliques_mil, y = receita_mil)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Receita vs Número de Cliques",
    x = "Número de cliques (mil)",
    y = "Receita (mil)"
  ) +
  theme_minimal()

ggsave("graficos/receita_vs_cliques.png", g4, width = 7, height = 5)

# 5. Receita por canal
g5 <- ggplot(dados, aes(x = canal, y = receita_mil)) +
  geom_boxplot(fill = "lightblue") +
  labs(
    title = "Receita por Canal de Marketing",
    x = "Canal",
    y = "Receita (mil)"
  ) +
  theme_minimal()

ggsave("graficos/receita_por_canal.png", g5, width = 7, height = 5)

print("Gráficos gerados na pasta 'graficos/'")
