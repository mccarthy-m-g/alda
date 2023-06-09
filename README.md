# alda

<!-- badges: start -->
[![R-CMD-check](https://github.com/mccarthy-m-g/alda/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mccarthy-m-g/alda/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->
  
This package contains 31 data sets provided by Singer and Willet (2003) with their book, Applied longitudinal data analysis: Modeling change and event occurrence, that are suitable for longitudinal mixed effects modelling, longitudinal structural equation modelling, and survival analysis. All the data sets in this package are real data from real studies; however, most were modified by Singer and Willet (2003) for the illustration of statistical methods, so they may not match the results of the original studies. Additionally, the early intervention data used throughout Chapter 3 is not included in this package because it is not openly available.

There are ten data sets for longitudinal mixed effects modelling:

- `?deviant_tolerance`: Adolescent tolerance of deviant behaviour (Chapter 2)
- `?alcohol_use_1`: Adolescent and peer alcohol use (Chapters 4 and 6)
- `?reading_scores`: Peabody Individual Achievement Test reading scores (Chapter 5)
- `?dropout_wages`: High school dropout labour market experiences (Chapters 5 and 6)
- `?depression_unemployment`: Unemployment and depression (Chapter 5)
- `?antidepressants`: Antidepressant medication and positive mood (Chapter 5)
- `?berkeley`: Berkeley Growth Study (Chapter 6)
- `?externalizing_behaviour`: Externalizing behaviour in children (Chapter 6)
- `?cognitive_growth`: Cognitive growth in children (Chapter 6)
- `?opposites_naming`: Opposites naming task (Chapter 7)

There is one data set for longitudinal structural equation modelling:

- `?alcohol_use_2`: Adolescent alcohol consumption and peer pressure (Chapter 8)

There are twenty data sets for survival analysis:

- `?teachers`: Years to special education teacher turnover (Chapters 9 and 10)
- `?cocaine_relapse_1`: Weeks to cocaine relapse after treatment (Chapter 10)
- `?first_sex`: Age of first sexual intercourse (Chapters 10 and 11)
- `?suicide_ideation`: Age of first suicide ideation (Chapter 10)
- `?congresswomen`: House of Representatives tenure (Chapter 10)
- `?tenure`: Years to academic tenure (Chapter 12)
- `?first_depression_1`: Age of first depression (Chapter 12)
- `?first_arrest`: Age of first juvenile arrest (Chapter 12)
- `?math_dropout`: Math course history (Chapter 12)
- `?honking`: Time to horn honking (Chapter 13)
- `?alcohol_relapse`: Weeks to alcohol relapse after treatment (Chapter 13)
- `?judges`: Supreme Court justice tenure (Chapter 13)
- `?first_depression_2`: Age of first depression (Chapter 13)
- `?health_workers`: Length of health worker employment (Chapter 13)
- `?rearrest`: Days to inmate recidivism (Chapter 14)
- `?first_cocaine`: Age of first cocaine use (Chapter 15)
- `?cocaine_relapse_2`: Days to cocaine relapse after abstinence (Chapter 15)
- `?psychiatric_discharge`: Days to psychiatric hospital discharge (Chapter 15)
- `?physicians`: Physician career history (Chapter 15)
- `?monkeys`: Piagetian monkeys (Chapter 15)

## Documentation

See at <https://mccarthy-m-g.github.io/alda/> and also in the installed package: `help(package = "alda")`.

## References

Singer, J. D., & Willett, J. B. (2003). Applied longitudinal data analysis: Modeling change and event occurrence. Oxford University Press, USA. <https://doi.org/10.1093/acprof:oso/9780195152968.001.0001>
