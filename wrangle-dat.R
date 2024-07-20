library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders |> mutate(region = factor(region),
                             rate = total / population * 10^5)
save(murders, file = "rdas/murders.rda")

saveRDS(murders, file = "rdas/murders.rda")

dat <- readRDS("rdas/murders.rda")
