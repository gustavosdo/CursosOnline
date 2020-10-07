# Preparando dados para scatter plot -------------------------------------------

# definindo pasta raiz
setwd("/Users/Luiz Gustavo/Documents/MEGA/Git/CursosOnline/DataScienceAcademy/PowerBI/")

# lendo dados
dataset = read.csv("Dados/Custos.csv")

# tomando os valores únicos de produtos
prods = unique(dataset$Produto)

# calculando a soma por produto
valor_venda = sapply(prods, function(p){sum(dataset$Valor.de.Venda[dataset$Produto == p])})
preco_custo = sapply(prods, function(p){sum(dataset$Preço.Custo[dataset$Produto == p])})

# salvando os resultados
res = data.frame(Valor_venda_produto = valor_venda, Preco_custo_produto = preco_custo)
write.csv(x = res, file = "Dados/Custos_por_produto.csv")