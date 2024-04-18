# alda

<!-- badges: start -->
[![R-CMD-check](https://github.com/mccarthy-m-g/alda/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mccarthy-m-g/alda/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->
  
This package contains 31 data sets provided by Singer and Willet (2003) with their book, *Applied longitudinal data analysis: Modeling change and event occurrence*, that are suitable for longitudinal mixed effects modelling, longitudinal structural equation modelling, and survival analysis. All the data sets in this package are real data from real studies; however, most were modified by Singer and Willet (2003) for the illustration of statistical methods, so they may not match the results of the original studies.

There are eleven data sets for longitudinal mixed effects modelling:

- `?deviant_tolerance`: Adolescent tolerance of deviant behaviour (Chapter 2)
- `?early_intervention`: Early educational interventions and cognitive performance (Chapter 3)
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
- `?judges`: Supreme Court justice tenure (Chapters 13 and 15)
- `?first_depression_2`: Age of first depression (Chapter 13)
- `?health_workers`: Length of health worker employment (Chapter 13)
- `?rearrest`: Days to inmate recidivism (Chapters 14 and 15)
- `?first_cocaine`: Age of first cocaine use (Chapter 15)
- `?cocaine_relapse_2`: Days to cocaine relapse after abstinence (Chapter 15)
- `?psychiatric_discharge`: Days to psychiatric hospital discharge (Chapter 15)
- `?physicians`: Physician career history (Chapter 15)
- `?monkeys`: Piagetian monkeys (Chapter 15)

## Vignettes and articles

There is one vignette with tips and tricks for working with longitudinal data:

- `vignette("longitudinal-data-organization")`

There are fourteen articles on the package documentation website demonstrating how to recreate examples from the textbook in R:

- [Chapter 2](articles/chapter-2.html): Exploring longitudinal data on change
- [Chapter 3](articles/chapter-3.html): Introducing the multilevel model for change
- [Chapter 4](articles/chapter-4.html): Doing data analysis with the multilevel model for change
- [Chapter 5](articles/chapter-5.html): Treating time more flexibly
- [Chapter 6](articles/chapter-6.html): Modeling discontinuous and nonlinear change
- [Chapter 7](articles/chapter-7.html): Examining the multilevel model’s error covariance structure
- [Chapter 8](articles/chapter-8.html): Modeling change using covariance structure analysis
- [Chapter 9](articles/chapter-9.html): A framework for investigating event occurrence
- [Chapter 10](articles/chapter-10.html): Describing discrete-time event occurrence data
- [Chapter 11](articles/chapter-11.html): Fitting basic discrete-time hazard models
- [Chapter 12](articles/chapter-12.html): Extending the discrete-time hazard model
- [Chapter 13](articles/chapter-13.html): Describing continuous-time event occurrence data
- [Chapter 14](articles/chapter-14.html): Fitting the Cox regression model
- [Chapter 15](articles/chapter-15.html): Extending the Cox regression model

## Documentation

See at <https://mccarthy-m-g.github.io/alda/> and also in the installed package: `help(package = "alda")`.

## References

Singer, J. D., & Willett, J. B. (2003). Applied longitudinal data analysis: Modeling change and event occurrence. Oxford University Press, USA. <https://doi.org/10.1093/acprof:oso/9780195152968.001.0001>
