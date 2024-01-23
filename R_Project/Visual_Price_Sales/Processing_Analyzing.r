
R version 4.3.2 (2023-10-31 ucrt) -- "Eye Holes"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R est un logiciel libre livré sans AUCUNE GARANTIE.
Vous pouvez le redistribuer sous certaines conditions.
Tapez 'license()' ou 'licence()' pour plus de détails.

R est un projet collaboratif avec de nombreux contributeurs.
Tapez 'contributors()' pour plus d'information et
'citation()' pour la façon de le citer dans les publications.

Tapez 'demo()' pour des démonstrations, 'help()' pour l'aide
en ligne ou 'help.start()' pour obtenir l'aide au format HTML.
Tapez 'q()' pour quitter R.

[Sauvegarde de la session précédente restaurée]

> library(tidyverse)
── Attaching core tidyverse packages ─────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.4.4     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.0
✔ purrr     1.0.2     
── Conflicts ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
> cf <- read_csv("C:/Users/darconect/Downloads/financials.csv")
[1mindexing[0m [34mfinancials.csv[0m [========================================================================================================================] [32m926.03MB/s[0m, eta: [36m 0s[0m                                                                                                                                                                                                          Rows: 505 Columns: 14
── Column specification ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr  (4): Symbol, Name, Sector, SEC Filings
dbl (10): Price, Price/Earnings, Dividend Yield, Earnings/Share, 52 Week Low, 52 Week High, Market Cap, EBITDA, Price/Sales, Price/Book

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> glimpse(cf)
Rows: 505
Columns: 14
$ Symbol           <chr> "MMM", "AOS", "ABT", "ABBV", "ACN", "ATVI", "AYI", "ADBE", "AAP", "AMD", "AES", "AET", "AMG", "AFL", "A", "APD", "AKAM", "ALK", "ALB", "ARE"…
$ Name             <chr> "3M Company", "A.O. Smith Corp", "Abbott Laboratories", "AbbVie Inc.", "Accenture plc", "Activision Blizzard", "Acuity Brands Inc", "Adobe S…
$ Sector           <chr> "Industrials", "Industrials", "Health Care", "Health Care", "Information Technology", "Information Technology", "Industrials", "Information …
$ Price            <dbl> 222.89, 60.24, 56.27, 108.48, 150.51, 65.83, 145.41, 185.16, 109.63, 11.22, 10.06, 178.00, 179.11, 83.25, 65.05, 152.80, 62.49, 64.04, 105.1…
$ `Price/Earnings` <dbl> 24.31, 27.76, 22.51, 19.41, 25.47, 31.80, 18.22, 52.31, 19.54, 187.00, 9.96, 18.11, 12.24, 12.24, 27.45, 24.22, 32.55, 9.66, 26.03, 19.03, 2…
$ `Dividend Yield` <dbl> 2.3328617, 1.1479592, 1.9089824, 2.4995599, 1.7144699, 0.4319032, 0.3511853, 0.0000000, 0.2183207, 0.0000000, 4.9618320, 1.1019890, 0.638739…
$ `Earnings/Share` <dbl> 7.92, 1.70, 0.26, 3.29, 5.44, 1.28, 7.43, 3.39, 6.19, 0.03, -1.72, 5.75, 12.07, 11.01, 2.10, 13.66, 1.79, 8.28, 5.66, 1.57, 1.77, 2.84, 2.37…
$ `52 Week Low`    <dbl> 259.770, 68.390, 64.600, 125.860, 162.600, 74.945, 225.360, 204.450, 169.550, 15.650, 12.050, 194.400, 216.995, 91.730, 75.000, 175.170, 69.…
$ `52 Week High`   <dbl> 175.4900, 48.9250, 42.2800, 60.0500, 114.8200, 38.9300, 142.0000, 114.4510, 78.8100, 9.7000, 10.0000, 119.5100, 148.8100, 68.8000, 49.2300, …
$ `Market Cap`     <dbl> 138721055226, 10783419933, 102121042306, 181386347059, 98765855553, 52518668144, 6242377704, 94550214268, 8123611867, 11191663795, 692085121…
$ EBITDA           <dbl> 9048000000, 601000000, 5744000000, 10310000000, 5643228000, 2704000000, 587800000, 2538040000, 853941000, 339000000, 3001000000, 4139000000,…
$ `Price/Sales`    <dbl> 4.3902707, 3.5754826, 3.7404804, 6.2915710, 2.6041170, 10.5951200, 1.7953473, 13.0928180, 1.1301061, 2.1091955, 0.6595138, 0.9923546, 4.5912…
$ `Price/Book`     <dbl> 11.34, 6.35, 3.19, 26.14, 10.62, 5.16, 3.55, 11.06, 2.51, 21.47, 2.20, 3.79, 2.89, 1.53, 4.56, 3.35, 3.25, 2.21, 2.98, 2.07, 2.82, 16.44, 20…
$ `SEC Filings`    <chr> "http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=MMM", "http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=AOS", "h…
> cf <- cf%>%
+ mutate_at(vars("Symbol", "Name", "Sector"), str_squish)
> datset <- cf %>%
+ drop_na() %>%
+ distinct()
> head(dataset)
Erreur : objet 'dataset' introuvable
> head (datset)
# A tibble: 6 × 14
  Symbol Name              Sector Price `Price/Earnings` `Dividend Yield` `Earnings/Share` `52 Week Low` `52 Week High` `Market Cap`  EBITDA `Price/Sales` `Price/Book`
  <chr>  <chr>             <chr>  <dbl>            <dbl>            <dbl>            <dbl>         <dbl>          <dbl>        <dbl>   <dbl>         <dbl>        <dbl>
1 MMM    3M Company        Indus… 223.              24.3            2.33              7.92         260.           175.  138721055226 9.05e 9          4.39        11.3 
2 AOS    A.O. Smith Corp   Indus…  60.2             27.8            1.15              1.7           68.4           48.9  10783419933 6.01e 8          3.58         6.35
3 ABT    Abbott Laborator… Healt…  56.3             22.5            1.91              0.26          64.6           42.3 102121042306 5.74e 9          3.74         3.19
4 ABBV   AbbVie Inc.       Healt… 108.              19.4            2.50              3.29         126.            60.0 181386347059 1.03e10          6.29        26.1 
5 ACN    Accenture plc     Infor… 151.              25.5            1.71              5.44         163.           115.   98765855553 5.64e 9          2.60        10.6 
6 ATVI   Activision Blizz… Infor…  65.8             31.8            0.432             1.28          74.9           38.9  52518668144 2.70e 9         10.6          5.16
# ℹ 1 more variable: `SEC Filings` <chr>
> x1 <- datset %>%
+ group_by(Sector) %>%
+ summarise(Average_Value = mean(`Price/Sales`))
> print(x1)
# A tibble: 11 × 2
   Sector                     Average_Value
   <chr>                              <dbl>
 1 Consumer Discretionary              2.27
 2 Consumer Staples                    2.85
 3 Energy                              3.58
 4 Financials                          3.36
 5 Health Care                         4.92
 6 Industrials                         2.54
 7 Information Technology              5.88
 8 Materials                           2.88
 9 Real Estate                         9.96
10 Telecommunication Services          1.51
11 Utilities                           2.56
> library(ggplot_2)
Erreur dans library(ggplot_2) : aucun package nommé ‘ggplot_2’ n'est trouvé
> library(ggplot2)
> v <- ggplot(data = x1) + geom_bar(mapping = aex(x = Sector, fill = Sector))
Erreur dans aex(x = Sector, fill = Sector) : 
  impossible de trouver la fonction "aex"
> v <- gplot(data = x1) + geom_bar(mapping = aes(x = Sector, fill = Sector))
Erreur dans gplot(data = x1) : impossible de trouver la fonction "gplot"
> v <- ggplot(data = x1) + geom_bar(mapping = aes(x = Sector, fill = Sector))
> print (v)
Erreur dans grid.Call.graphics(C_upviewport, as.integer(n)) : 
  impossible de rendre la vue de plus haut niveau active (sorties 'grid' et 'graphics' mixées ?)
Erreur dans UseMethod("depth") : 
  pas de méthode pour 'depth' applicable pour un objet de classe "NULL"
Erreur dans UseMethod("depth") : 
  pas de méthode pour 'depth' applicable pour un objet de classe "NULL"
Erreur dans grid.Call.graphics(C_setviewport, vp, TRUE) : 
  VECTOR_ELT() can only be applied to a 'list', not a 'character'
Erreur dans UseMethod("depth") : 
  pas de méthode pour 'depth' applicable pour un objet de classe "NULL"
Erreur dans Summary.unit(list(list(2.75, NULL, 8L), list(1, list(list(1,  : 
  REAL() can only be applied to a 'numeric', not a 'NULL'
> > > > > > > > v <- ggplot(data = x1) + geom_bar(mapping = aes(x = Sector, fill = Average_Value))
Erreur : '>' inattendu(e) dans ">"
>  v <- ggplot(data = x1) + geom_bar(mapping = aes(x = Sector, fill = Average_Value))
> print(v)
> ggplot(x1, aes(x = Sector, y = Average_Value, fill = Sector)) +
+   geom_bar(stat = "identity") +
+   labs(title = "Average Price/Sales by Sector",
+        x = "Sector",
+        y = "Average Price/Sales") +
+   theme_minimal()
> v <- ggplot(x1, aes(x = Sector, y = Average_Value, fill = Sector)) +
+   geom_bar(stat = "identity") +
+   labs(title = "Average Price/Sales by Sector",
+        x = "Sector",
+        y = "Average Price/Sales") +
+   theme_minimal()
> print (v)
> library(ggplot2)
> 
> plot <- ggplot(x1, aes(x = Sector, y = Average_Value, fill = Sector)) +
+   geom_bar(stat = "identity") +
+   labs(title = "Average Price/Sales by Sector",
+        x = "Sector",
+        y = "Average Price/Sales") +
+   theme_minimal()
> 
> ggsave("plot.png", plot, width = 8, height = 6, dpi = 300)
> 
