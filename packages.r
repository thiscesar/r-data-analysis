# define local de instalação de libs (corrige problema user root -> linux)
.libPaths("~/R/libs")

# cria um array com nomes dos pacotes para instalacao
packages <- c("readxl", "dplyr", "writexl", "tidyr", "stringr")

# verifica se pacotes declarados anteriormente NÃO estão instalados
remaining_packages <- packages[!(packages %in% installed.packages()[,"Package"])]

# verifica se existe pacote para ser instalado
if (length(remaining_packages)) {
    install.packages(remaining_packages, lib = "~/R/libs")
} 

# carrega pacotes
lapply(packages, library, character.only = TRUE)