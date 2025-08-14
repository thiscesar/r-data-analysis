source("packages.r")

# teste dplyr
df <- data.frame(x = 1:5, y = 6:10)
df %>% dplyr::mutate(z = x + y) -> df
print(df)

# teste readxl
dados <- readxl::read_excel("data/onibus.xlsx")
print(head(dados))

# teste stringr
texto <- "batatinhas"
print(stringr::str_to_upper(texto))

# teste tidyr
df_long <- tidyr::pivot_longer(df, cols = c(x, y, z), names_to = "variavel", values_to = "valor")
print(df_long)
