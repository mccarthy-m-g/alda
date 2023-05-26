# Import function from tibble to suppress R CMD check NOTE.
#' @importFrom tibble tibble
NULL

# Chapter 2 -------------------------------------------------------------------

#' Adolescent tolerance of deviant behaviour
#'
#' A subset of data from the National Youth Survey (NYS) measuring tolerance of
#' deviant behaviour in adolescents over time (Raudenbush & Chan, 1992).
#'
#' @format ## `deviant_tolerance_pp`
#' A person-period data frame with `r nrow(deviant_tolerance_pp)` rows and
#' `r ncol(deviant_tolerance_pp)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`age`}{Adolescent age in years.}
#'   \item{`tolerance`}{Average score across a 9-item scale assessing attitudes favourable to deviant behaviour. Each item used a four point scale (1 = very wrong, 2 = wrong, 3 = a little bit wrong, 4 = not wrong at all).}
#'   \item{`male`}{Binary indicator for whether the adolescent is a male.}
#'   \item{`exposure`}{Average score across a 9-item scale assessing level of exposure to deviant peers. Each item used a five point Likert score (ranging from 0 = none, to 4 = all).}
#' }
#' @note
#' Raudenbush and Chan (1992) comment that `exposure` was a time-varying
#' predictor in the original study; however, Singer and Willett (2003) provide
#' `exposure` as a time-invariant predictor.
#' @source
#' Raudenbush, S. W., & Chan, W. S. (1992). Growth curve analysis in
#' accelerated longitudinal designs. Journal of Research in Crime and
#' Delinquency, 29, 387–411. <https://doi.org/10.1177/0022427892029004001>
#' @rdname deviant_tolerance
#' @aliases deviant_tolerance
"deviant_tolerance_pp"

#' @rdname deviant_tolerance
#' @format ## `deviant_tolerance_pl`
#'
#' A person-level data frame with `r nrow(deviant_tolerance_pl)` rows and
#' `r ncol(deviant_tolerance_pl)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`tolerance_11`, `tolerance_12`, `tolerance_13`, `tolerance_14`, `tolerance_15`,}{Average score across a 9-item scale assessing attitudes favourable to deviant behaviour at ages 11, 12, 13, 14, and 15. Each item used a four point scale (1 = very wrong, 2 = wrong, 3 = a little bit wrong, 4 = not wrong at all).}
#'   \item{`male`}{Binary indicator for whether the adolescent is a male.}
#'   \item{`exposure`}{Average score across a 9-item scale assessing level of exposure to deviant peers. Each item used a five point Likert score (ranging from 0 = none, to 4 = all).}
#' }
"deviant_tolerance_pl"

# Chapter 4 -------------------------------------------------------------------

#' Adolescent and peer alcohol use
#'
#' A subset of data from Curran, Stice, and Chassin (1997) measuring the
#' relation between changes in alcohol use and changes in peer alcohol use over
#' a 3-year period in a community-based sample of Hispanic and Caucasian
#' adolescents.
#'
#' @format
#' A person-period data frame with `r nrow(alcohol_use_1)` rows and
#' `r ncol(alcohol_use_1)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`age`}{in years.}
#'   \item{`child_of_alcoholic`}{Binary indicator for whether the adolescent is a child of an alcoholic parent.}
#'   \item{`male`}{Binary indicator for whether the adolescent is a male.}
#'   \item{`alcohol_use`}{Square root of the summed scores of four eight-point items measuring frequency of alcohol use.}
#'   \item{`peer_alcohol_use`}{Square root of the summed scores of two six-point items measuring frequency of peer alcohol use.}
#' }
#' @source
#' Curran, P. J., Stice, E., & Chassin, L. (1997). The relation between
#' adolescent and peer alcohol use: A longitudinal random coefficients model.
#' Journal of Consulting and Clinical Psychology, 65, 130–140.
#' <https://doi.org/10.1037//0022-006x.65.1.130>
"alcohol_use_1"

# Chapter 5 -------------------------------------------------------------------

#' Peabody Individual Achievement Test reading scores
#'
#' A subset of data from the Children of the National Longitudinal Study of
#' Youth measuring changes in the reading subtest of the Peabody Individual
#' Achievement Test (PIAT) in a sample of 89 African-American children at ages
#' 6, 8, and 10.
#'
#' @format
#' A person-period data frame with `r nrow(reading_scores)` rows and
#' `r ncol(reading_scores)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`wave`}{Wave of measurement.}
#'   \item{`age_group`}{Expected age on each measurement occassion.}
#'   \item{`age`}{Age in years at time of measurement.}
#'   \item{`reading_score`}{Reading score on the reading subtest of the Peabody Individual Achievement Test (PIAT).}
#' }
#' @source
#' US Bureau of Labor and Statistics. National Longitudinal Survey of Youth
#' (Children of the NLSY). <https://www.bls.gov/nls/nlsy79-children.htm>
"reading_scores"

#' High school dropout labour market experiences
#'
#' A subset of data from the National Longitudinal Study of Youth tracking the
#' labour market experiences of male high school dropouts (Murnane, Boudett, &
#' Willett, 1999).
#'
#' @format ## `dropout_wages`
#'
#' A person-period data frame with `r nrow(dropout_wages)` rows and
#' `r ncol(dropout_wages)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`log_wages`}{Natural logarithm of wages.}
#'   \item{`experience`}{Labour force experience in years, tracked from dropouts' first day of work.}
#'   \item{`ged`}{Binary indicator for whether the dropout obtained a GED.}
#'   \item{`postsecondary_education`}{Binary indicator for whether the dropout obtained post-secondary education.}
#'   \item{`black`}{Binary indicator for whether the dropout is black.}
#'   \item{`hispanic`}{Binary indicator for whether the dropout is hispanic.}
#'   \item{`highest_grade`}{Highest grade completed.}
#'   \item{`unemployment_rate`}{Unemployment rate in the local geographic area.}
#' }
#' @source
#' Murnane, R. J., Boudett, K. P., & Willett, J. B. (1999). Do male dropouts
#' benefit from obtaining a GED, postsecondary education, and training?
#' Evaluation Review, 23, 475–502. <https://doi.org/10.1177/0193841x9902300501>
"dropout_wages"

#' @rdname dropout_wages
#' @format ## `dropout_wages_subset`
#'
#' A person-period data frame with `r nrow(dropout_wages_subset)` rows and
#' `r ncol(dropout_wages_subset)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`log_wages`}{Natural logarithm of wages.}
#'   \item{`experience`}{Labour force experience in years, tracked from dropouts' first day of work.}
#'   \item{`black`}{Binary indicator for whether the dropout is black.}
#'   \item{`highest_grade`}{Highest grade completed.}
#' }
"dropout_wages_subset"

#' Unemployment and depression
#'
#' A subset of data from Ginexi and colleagues (2000) measuring changes in
#' depressive symptoms after job loss in a sample of 254 recently unemployed men
#' and women.
#'
#' @format
#' A person-period data frame with `r nrow(depression_unemployment)` rows and
#' `r ncol(depression_unemployment)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`months`}{Months since job loss.}
#'   \item{`depression`}{Center for Epidemiologic Studies' Depression (CES-D) scale score (Radloff, 1977)}
#'   \item{`unemployed`}{Binary indicator for whether the participant was unemployed at time of interview.}
#' }
#' @source
#' Ginexi, E. M., Howe, G. W., & Caplan, R. D. (2000). Depression and control
#' beliefs in relation to reemployment: What are the directions of effect?
#' Journal of Occupational Health Psychology, 5, 323–336.
#' <https://doi.org/10.1037//1076-8998.5.3.323>
#' @references
#' Radloff, L. S. (1977). The CES-D scale: A self report major depressive
#' disorder scale for research in the general population. Applied Psychological
#' Measurement, 1, 385–401. <https://doi.org/10.1177/014662167700100306>
"depression_unemployment"

#' Antidepressant medication and positive mood
#'
#' A subset of data from Tomarken, Shelton, Elkins, and Anderson (1997)
#' measuring the relation between changes in positive mood and supplemental
#' antidepressant medication over the course of a week in a sample of 73 men and
#' women already receiving nonpharmacological therapy for depression.
#'
#' @format
#' A person-period data frame with `r nrow(antidepressants)` rows and
#' `r ncol(antidepressants)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`wave`}{Wave of measurement.}
#'   \item{`day`}{Day of measurement.}
#'   \item{`reading`}{Time of day of measurement.}
#'   \item{`time_of_day`}{Time of day of measurement expressed numerically (0 for morning readings; 0.33 for afternoon readings; 0.67 for evening readings).}
#'   \item{`time`}{Time of measurement expressed as a combination of `day` and `time_of_day`.}
#'   \item{`positive_mood`}{Positive mood score.}
#'   \item{`treatment`}{Treatment condition (placebo pills = 0, antidepressant pills = 1)}
#' }
#' @source
#' Tomarken, A. J., Shelton, R. C., Elkins, L., & Anderson, T. (1997). Sleep
#' deprivation and anti-depressant medication: Unique effects on positive and
#' negative affect. Poster session presented at the 9th annual meeting of the
#' American Psychological Society, Washington, DC.
"antidepressants"

# Chapter 6 -------------------------------------------------------------------

#' Berkeley Growth Study
#'
#' A subset of data from the Berkeley Growth Study measuring changes in IQ of a
#' single girl followed from childhood into older adulthood (Bayley, 1935).
#'
#' @format
#' A person-period data frame with `r nrow(berkeley)` rows and
#' `r ncol(berkeley)` columns:
#'
#' \describe{
#'   \item{`age`}{Age of the girl in years.}
#'   \item{`iq`}{IQ score.}
#' }
#' @source
#' Bayley, N. (1935). The development of motor abilities during the first
#' three years. Monographs of the Society for Research in Child Development, 1.
"berkeley"

#' Externalizing behaviour in children
#'
#' A subset of data from Keiley, Bates, Dodge, and Pettit (2000) measuring
#' changes in externalizing behaviour in a sample of 45 children tracked from
#' first through sixth grade.
#'
#' @format
#' A person-period data frame with `r nrow(externalizing_behaviour)` rows and
#' `r ncol(externalizing_behaviour)` columns:
#'
#' \describe{
#'   \item{`id`}{Child ID.}
#'   \item{`time`}{Time of measurement.}
#'   \item{`externalizing_behaviour`}{Sum of scores on Achenbach's (1991) Child Behavior Checklist. Scores range from 0 to 68}
#'   \item{`female`}{Binary indicator for whether the adolescent is a female.}
#'   \item{`grade`}{Grade year.}
#' }
#' @source
#' Keiley, M. K., Bates, J. E., Dodge, K. A., & Pettit, G. S. (2000). A
#' cross-domain growth analysis: Externalizing and internalizing behavior during
#' 8 years of childhood. Journal of Abnormal Child Psychology, 28, 161–179.
#' <https://doi.org/10.1023%2Fa%3A1005122814723>
#' @references
#' Achenbach, T. M. (1991). Manual for the Child Behavior Checklist 4–18 and
#' 1991 Profile. Burlington, VT: University of Vermont Press.
"externalizing_behaviour"

#' Cognitive growth in children
#'
#' Data from Tivnan (1980) measuring changes in cognitive growth over a
#' three-week period in a sample of 17 first and second-graders.
#'
#' @format
#' A person-period data frame with `r nrow(cognitive_growth)` rows and
#' `r ncol(cognitive_growth)` columns:
#'
#' \describe{
#'   \item{`id`}{Child ID.}
#'   \item{`game`}{Game number. Each child played up to a maximum of 27 games.}
#'   \item{`nmoves`}{The number of moves completed before making a catastrophic error.}
#'   \item{`read`}{Score on an unnamed standardized reading test.}
#' }
#' @source
#' Tivnan, T. (1980). Improvements in performance on cognitive tasks: The
#' acquisition of new skills by elementary school children. Unpublished doctoral
#' dissertation. Harvard University, Graduate School of Education.
"cognitive_growth"

# Chapter 7 -------------------------------------------------------------------

#' Opposites naming Task
#'
#' Artificial data created by Willett (1988) measuring changes in performance on
#' a hypothetical "opposites naming" task over a four week period in a sample of
#' 35 people.
#'
#' @format
#' A person-period data frame with `r nrow(opposites_naming)` rows and
#' `r ncol(opposites_naming)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`time`}{Time of measurement.}
#'   \item{`wave`}{Wave of measurement.}
#'   \item{`opposites_naming_score`}{Score on the "opposites naming" task.}
#'   \item{`baseline_cognitive_score`}{Baseline score on a standardized instrument assessing general cognitive skill.}
#' }
#' @source
#' Willett, J. B. (1988). Questions and answers in the measurement of change.
#' In E. Rothkopf (Ed.), Review of research in education (1988–89) (pp.
#' 345–422). Washington, DC: American Educational Research Association.
#' <https://doi.org/10.3102/0091732X015001345>
"opposites_naming"

# Chapter 8 -------------------------------------------------------------------

#' Adolescent alcohol consumption and peer pressure
#'
#' Data from Barnes, Farrell, and Banerjee (1994) measuring the relation between
#' changes in alcohol use and changes in peer pressure to use alcohol in a
#' sample of 1122 Black and White adolescents tracked from the beginning of
#' seventh grade through the end of eighth grade.
#'
#' @format
#' A person-period data frame with `r nrow(alcohol_use_2)` rows and
#' `r ncol(alcohol_use_2)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`time`}{Time of measurement.}
#'   \item{`female`}{Binary indicator for whether the adolescent is a female.}
#'   \item{`alcohol_use`}{Natural logarithm of the averaged scores of three six-point items measuring frequency of beer, wine, and liquor consumption, respectively.}
#'   \item{`peer_pressure`}{Natural logarithm of a six-point item measuring frequency friends offered alcoholic drinks during the past month.}
#' }
#' #' @note
#' Barnes, Farrell, and Banerjee (1994) report a sample of only 699 adolescents;
#' however, they note that this was an ongoing longitudinal study which likely
#' explains the sample size discrepancy with the data used by Singer and Willett
#' (2003).
#' @source
#' Barnes, G. M., Farrell, M. P., & Banerjee, S. (1994). Family influences on
#' alcohol abuse and other problem behaviors among black and white adolescents
#' in a general population sample. Journal of Research on Adolescence, 4,
#' 183–201. <https://doi.org/10.1207/s15327795jra0402_2>
"alcohol_use_2"

# Chapter 9 -------------------------------------------------------------------

#' Years to special education teacher turnover
#'
#' A subset of data from Singer (1993) measuring how many years 3941 newly hired
#' special educators in Michigan stayed in teaching between 1972 and 1978.
#' Teachers were followed for up to 13 years or until they stopped teaching in
#' the state.
#'
#' @format
#' A person-level data frame with `r nrow(teachers)` rows and
#' `r ncol(teachers)` columns:
#'
#' \describe{
#'   \item{`id`}{Teacher ID.}
#'   \item{`years`}{The number of years between a teacher's dates of hire and departure from the Michigan public schools.}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Singer, J. D. (1992). Are special educators' careers special? Results from
#' a 13-Year Longitudinal Study. Exceptional Children, 59, 262–279.
#' <https://doi.org/10.1177/001440299305900309>
"teachers"

# Chapter 10 ------------------------------------------------------------------

#' Weeks to cocaine relapse after treatment
#'
#' A subset of data from Hall, Havassy, and Wasserman's (1990) measuring the
#' number of weeks of relapse to cocaine use in a sample of 104 former addicts
#' released from an in-patient treatment program. In-patients were followed for
#' up to 12 weeks or until they used cocaine for 7 consecutive days.
#'
#' @format
#' A person-level data frame with `r nrow(cocaine_relapse_1)` rows and
#' `r ncol(cocaine_relapse_1)` columns:
#'
#' \describe{
#'   \item{`id`}{In-patient ID.}
#'   \item{`weeks`}{The number of weeks between an in-patient's release and relapse to cocaine use.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`needle`}{Binary indicator for whether cocaine was ever used intravenously.}
#' }
#' @source
#' Hall, S. M., Havassy, B. E., & Wasserman, D. A. (1990). Commitment to
#' abstinence and acute stress in relapse to alcohol, opiates, and nicotine.
#' Journal of Consulting and Clinical Psychology, 58, 175–181.
#' <https://doi.org/10.1037//0022-006x.58.2.175>
"cocaine_relapse_1"

#' Age of first sexual intercourse
#'
#' A subset of data from Capaldi, Crosby, and Stoolmiller's (1996) measuring the
#' grade year of first sexual intercourse in a sample of 180 at-risk
#' heterosexual adolescent males. Adolescent males were followed from Grade 7 up
#' to Grade 12 or until they reported having had sexual intercourse for the
#' first time.
#'
#' @format
#' A person-level data frame with `r nrow(first_sex)` rows and
#' `r ncol(first_sex)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`grade`}{Grade year of first sexual intercourse.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`parental_transition`}{Binary indicator for whether the adolescent experienced a parental transition (where their parents separated or repartnered).}
#'   \item{`parental_antisociality`}{Composite score across four indicators measuring parents' level of antisocial behaviour during the child's formative years.}
#' }
#' @note
#' Capaldi, Crosby, and Stoolmiller's (1996) original sample consisted of 182
#' adolescent males after applying exclusion criteria for analysis; Singer and
#' Willett (2003) excluded an additional two males from the data who reported
#' having anal intercourse with another male.
#' @source
#' Capaldi, D. M., Crosby, L., & Stoolmiller, M. (1996). Predicting the timing
#' of first sexual intercourse for at-risk adolescent males. Child Development,
#' 67, 344–359. <https://doi.org/10.2307/1131818>
"first_sex"

#' Age of first suicide ideation
#'
#' A subset of data from Bolger and colleagues (1989) measuring age of first
#' suicide ideation in a sample of 391 undergraduate students aged 16 to 22.
#' Age of first suicide ideation was measured with a two-item survey asking
#' respondents "Have you ever thought of committing suicide?" and if so, "At
#' what age did the thought first occur to you?"
#'
#' @format
#' A person-level data frame with `r nrow(suicide_ideation)` rows and
#' `r ncol(suicide_ideation)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`time`}{Reported age of first suicide ideation.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`age`}{Participant age at the time of the survey.}
#' }
#' @source
#' Bolger, N., Downey, G., Walker, E., & Steininger, P. (1989). The onset of
#' suicide ideation in childhood and adolescence. Journal of Youth and
#' Adolescence, 18, 175–189. <https://doi.org/10.1007/BF02138799>
"suicide_ideation"

#' House of Representatives tenure
#'
#' Data measuring how long all 168 women who were elected to the U.S. House of
#' Representatives between 1919 and 1996 remained in office. Representatives
#' were followed for up to eight terms or until 1998.
#'
#' @format
#' A person-level data frame with `r nrow(congresswomen)` rows and
#' `r ncol(congresswomen)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`name`}{Representative name.}
#'   \item{`time`}{Number of terms in office.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`democrat`}{Party affiliation.}
#' }
"congresswomen"

# Chapter 11 ------------------------------------------------------------------


# Chapter 12 ------------------------------------------------------------------

#' Years to academic tenure
#'
#' Data from Gamse and Conger (1997) measuring the number of years to receiving
#' tenure in a sample of 260 semifinalists and fellowship recipients in the
#' National Academy of Education–Spencer Foundation PostDoctoral Fellowship
#' Program who took an academic job after earning a doctorate. Academics were
#' followed for up to nine years or until they received tenure.
#'
#' @format
#' A person-level data frame with `r nrow(tenure)` rows and
#' `r ncol(tenure)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`years`}{Number of years to receiving tenure.}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Gamse, B. C., & Conger, D. (1997). An evaluation of the Spencer
#' post-doctoral dissertation program. Cambridge, MA: Abt Associates.
"tenure"

#' Age of first depression
#'
#' A subset of data from Wheaton, Rozell, and Hall (1997) measuring the relation
#' between age of first depressive episode and several childhood and adult
#' traumatic stressors in a random sample of 1393 adults living in metropolitan
#' Toronto, Ontario. Age of first depressive episode and traumatic stressors was
#' determined through a structured interview.
#'
#' @format
#' A person-period data frame with `r nrow(first_depression_1)` rows and
#' `r ncol(first_depression_1)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`onset`}{Age of first depressive episode.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`interview_age`}{Age at time of interview.}
#'   \item{`female`}{Binary indicator for whether the adult is a female.}
#'   \item{`nsibs`}{Number of siblings.}
#'   \item{`bigfamily`}{Binary indicator for whether the adult has five or more siblings.}
#'   \item{`period`}{Age each record corresponds to.}
#'   \item{`depress`}{Binary indicator for whether the adult experienced a depressive episode.}
#'   \item{`pd`}{Binary indicator for whether the adult's parents divorced at this or any previous age.}
#' }
#' @source
#' Wheaton, B., Roszell, P., & Hall, K. (1997). The impact of twenty childhood
#' and adult traumatic stressors on the risk of psychiatric disorder. In I. H.
#' Gotlib & B. Wheaton (Eds.), Stress and adversity over the life course:
#' Trajectories and turning points (pp. 50–72). New York: Cambridge University
#' Press. <https://doi.org/10.1017/CBO9780511527623.003>
"first_depression_1"

#' Age of first juvenile arrest
#'
#' Data from Keiley and Martin (2002) measuring the effect of child abuse on the
#' risk of first juvenile arrest in a sample of 1553 adolescents aged 8 to 18.
#' Adolescents were followed up to age 18 or until they were arrested.
#'
#' @format
#' A person-period data frame with `r nrow(first_arrest)` rows and
#' `r ncol(first_arrest)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`time`}{Age of first juvenile arrest.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`abused`}{Binary indicator for whether the adolescent was abused.}
#'   \item{`black`}{Binary indicator for whether the adolescent is black.}
#'   \item{`abused_black`}{Binary indicator for whether the adolescent was abused and is black.}
#'   \item{`d8-d18`}{Discrete time indicators for each age.}
#'   \item{`period`}{Age each record corresponds to.}
#'   \item{`event`}{Binary indicator for whether the adolescent was arrested.}
#' }
#' @source
#' Keiley, M. K., & Martin, N. C. (2002). Child abuse, neglect, and juvenile
#' delinquency: How “new” statistical approaches can inform our understanding of
#' “old” questions—a reanalysis of Widon, 1989. Manuscript submitted for
#' publication.
"first_arrest"

#' Math course History
#'
#' Data from Graham (1997) measuring the relation between mathematics
#' course-taking and gender identity in a sample of 3790 tenth grade high school
#' students. Students were followed for up to 5 terms (eleventh grade, twelfth
#' grade, and the first three semesters of college) or until they stopped
#' enrolling in mathematics courses.
#'
#' @format
#' A person-period data frame with `r nrow(math_dropout)` rows and
#' `r ncol(math_dropout)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`last_term`}{The term a student stopped enrolling in mathematics courses.}
#'   \item{`woman`}{Binary indicators for whether the student identified as a woman.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`hs11-hs12`}{Discrete time indicators for each term of high school.}
#'   \item{`coll1-coll3`}{Discrete time indicators for each term of college.}
#'   \item{`term`}{Term each record corresponds to.}
#'   \item{`event`}{Binary indicator for whether the student stopped enrolling in mathematics courses at a given term.}
#' }
#' @source
#' Graham, S. E. (1997). The exodus from mathematics: When and why?
#' Unpublished doctoral dissertation. Harvard University, Graduate School of
#' Education.
"math_dropout"

# Chapter 13 ------------------------------------------------------------------

#' Time to horn honking
#'
#' A subset of data from Diekmann and colleagues (1996) measuring time to horn
#' honking in a sample of 57 motorists who were purposefully blocked at a green
#' light by a Volkswagen Jetta at a busy intersection near the centre of Munich,
#' West Germany on two busy afternoons (Sunday and Monday) in 1998. Motorists
#' were followed until they honked their horns or took an alternative action
#' (beaming or changing lanes).
#'
#' @format
#' A person-level data frame with `r nrow(honking)` rows and
#' `r ncol(honking)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`seconds`}{Number of seconds to horn honking or an alternative action.}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Diekmann, A., Jungbauer-Gans, M., Krassnig, H., & Lorenz, S. (1996). Social
#' status and aggression: A field study analyzed by survival analysis. Journal
#' of Social Psychology, 136, 761–768.
#' <https://doi.org/10.1080/00224545.1996.9712252>
"honking"

#' Weeks to alcohol relapse after treatment
#'
#' A subset of data from Cooney and colleagues (1991) measuring weeks to first
#' "heavy drinking" day in a sample of 89 recently treated alcoholics.
#' Individuals were followed for up to two years (around 104.286 weeks) or until
#' they relapsed.
#'
#' @format
#' A person-level data frame with `r nrow(alcohol_relapse)` rows and
#' `r ncol(alcohol_relapse)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`weeks`}{Number of weeks to first "heavy drinking" day}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Cooney, N. L., Kadden, R. M., Litt, M. D., & Getter, H. (1991). Matching
#' alcoholics to coping skills or interactional therapies: Two-year follow-up
#' results. Journal of Consulting and Clinical Psychology, 59, 598–601.
#' <https://doi.org/10.1037/0022-006X.59.4.598>
"alcohol_relapse"

#' Supreme Court justice tenure
#'
#' Data from Zorn and Van Winkle (2000) how long all 107 justices appointed to
#' the U.S. Supreme Court between 1789 and 1980 remained in their position.
#'
#' @format
#' A person-level data frame with `r nrow(judges)` rows and
#' `r ncol(judges)` columns:
#'
#' \describe{
#'   \item{`id`}{Justice ID.}
#'   \item{`tenure`}{Time to retirement or death in years.}
#'   \item{`dead`}{Binary indicator for whether the justice died.}
#'   \item{`retired`}{Binary indicator for whether the justice retired.}
#'   \item{`left_appointment`}{Binary indicator for whether the justice left their appointment.}
#'   \item{`appointment_age`}{Age at time of appointment.}
#'   \item{`appointment_year`}{Year of appointment.}
#' }
#' @source
#' Zorn, C. J., & van Winkle, S. R. (2000). A competing risks model of Supreme
#' Court vacancies, 1780–1992. Political Behavior, 22, 145–166.
"judges"

#' Age of first depression
#'
#' Data from Sorenson, Rutter, and Aneshensel (1991) measuring age of first
#' depressive episode in a sample of 2974 adults. Age of first depressive
#' episode was measured by asking respondents whether and, if so, at what age
#' they first experienced a depressive episode.
#'
#' @format
#' A person-level data frame with `r nrow(first_depression_2)` rows and
#' `r ncol(first_depression_2)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`age`}{in years.}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Sorenson, S. B., Rutter, C. M., & Aneshensel, C. S. (1991). Depression in
#' the community: An investigation into age of onset. Journal of Consulting and
#' Clinical Psychology, 59, 541546. <https://doi.org/10.1037/0022-006X.59.4.541>
"first_depression_2"

#' Length of health worker employment
#'
#' A subset of data from Singer and colleagues (1998) measuring length of
#' employment in a sample of 2074 health care workers hired by community and
#' migrant health centres. Health care workers were followed for up to 33 months
#' or until termination of employment.
#'
#' @format
#' A person-level data frame with `r nrow(health_workers)` rows and
#' `r ncol(health_workers)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`weeks`}{Number of weeks to termination of employment.}
#'   \item{`censor`}{Censoring status.}
#' }
#' @source
#' Singer, J. D., Davidson, S., Graham, S., & Davidson, H. S. (1998).
#' Physician retention in community and migrant health centers: Who stays and
#' for how long? Medical Care, 38, 11981213.
#' <https://doi.org/10.1097/00005650-199808000-00008>
"health_workers"

# Chapter 14 ------------------------------------------------------------------

#' Days to inmate recidivism
#'
#' Data from Henning and Frueh (1996) measuring measuring days to rearrest in
#' a sample of 194 inmates recently released from a medium security prison. Inmates
#' were followed for up to three years or until they were rearrested.
#'
#' @format
#' A person-level data frame with `r nrow(rearrest)` rows and
#' `r ncol(rearrest)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`days`}{Number of days to rearrest.}
#'   \item{`months`}{Number of months to rearrest, on the scale on an "average" month (with 30.4375 days).}
#'   \item{`censor`}{Censoring status.}
#'   \item{`personal`}{Committed a person-related crime}
#'   \item{`property`}{Binary indicator for whether the inmate committed a property crime.}
#'   \item{`age`}{Centred age at time or release.}
#' }
#' @source
#' Henning, K. R., & Frueh, B. C. (1996). Cognitive-behavioral treatment of
#' incarcerated offenders: An evaluation of the Vermont Department of
#' Corrections' cognitive self-change program. Criminal Justice and Behavior,
#' 23, 523–541. <https://doi.org/10.1177/0093854896023004001>
"rearrest"

# Chapter 15 ------------------------------------------------------------------

#' Age of first cocaine use
#'
#' Data from Burton and colleagues (1996) measuring the relation between age of
#' first cocaine use and drug-use history in a random sample of 1658 white
#' American men. Age of first cocaine use and drug-use history was determined
#' through two interviews eleven years apart (1974 and 1985).
#'
#' @format
#' A person-level data frame with `r nrow(first_cocaine)` rows and
#' `r ncol(first_cocaine)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`used_cocaine_age`}{Age of first cocaine use.}
#'   \item{`censor`}{Censoring status.}
#'   \item{birth_year}{}
#'   \item{`early_marijuana_use`}{Binary indicator for whether marijuana was used before age 17.}
#'   \item{`used_marijuana`}{Binary indicator for whether the participant used marijuana during the study period.}
#'   \item{`used_marijuana_age`}{Age the participant first used marijuana.}
#'   \item{`sold_marijuana`}{Binary indicator for whether the participant sold marijuana during the study period.}
#'   \item{`sold_marijuana_age`}{Age the participant first sold marijuana.}
#'   \item{`early_drug_use`}{Binary indicator for whether other drugs were used before age 17.}
#'   \item{`used_drugs`}{Binary indicator for whether the participant used other drugs during the study period.}
#'   \item{`used_drugs_age`}{Age the participant first used other drugs.}
#'   \item{`sold_drugs`}{Binary indicator for whether the participant sold other drugs during the study period.}
#'   \item{`sold_drugs_age`}{Age the participant first sold other drugs.}
#'   \item{`rural`}{Binary indicator for whether the participant lived in a rural area.}
#' }
#' @source
#' Burton, R. P. D., Johnson, R. J., Ritter, C., & Clayton. R. R. (1996). The
#' effects of role socialization on the initiation of cocaine use: An event
#' history analysis from adolescence into middle adulthood. Journal of Health
#' and Social Behavior, 37, 75–90. <https://doi.org/10.2307/2137232>
"first_cocaine"

#' Days to cocaine relapse after abstinence
#'
#' Data from Hall and colleagues (1990) measuring the relation between the
#' number of days of relapse to cocaine use and several predictors that might
#' be associated relapse in a sample of 104 newly abstinent cocaine users.
#' Former addicts were followed for up to 12 weeks or until relapse.
#'
#' @format
#' A person-period data frame with `r nrow(cocaine_relapse_2)` rows and
#' `r ncol(cocaine_relapse_2)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`days`}{Number of days of relapse to cocaine use.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`needle`}{Binary indicator for whether cocaine was ever used intravenously.}
#'   \item{`base_mood`}{Positive mood score on a standardized question at an intake interview taken during the last week of treatment.}
#'   \item{`followup`}{Week of follow-up interview.}
#'   \item{`mood`}{Positive mood score on a standardized question.}
#' }
#' @source
#' Hall, S. M., Havassy, B. E., & Wasserman, D. A. (1990). Commitment to
#' abstinence and acute stress in relapse to alcohol, opiates, and nicotine.
#' Journal of Consulting and Clinical Psychology, 58, 175–181.
#' <https://doi.org/10.1037//0022-006x.58.2.175>
"cocaine_relapse_2"

#' Days to psychiatric hospital discharge
#'
#' A subset of data from Foster (2000) measuring the relation between the number
#' of days to discharge from a psychiatric hospital and type of treatment plan
#' in a sample of 174 adolescents with emotional and behavioural problems.
#'
#' @format
#' A person-level data frame with `r nrow(psychiatric_discharge)` rows and
#' `r ncol(psychiatric_discharge)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`days`}{Number of days to discharge.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`treatment_plan`}{Binary indicator for whether the patient had a traditional coverage plan (0) or an innovative coverage plan (1).}
#' }
#' @source
#' Foster, E. M. (2000). Does the continuum of care reduce inpatient length of
#' stay? Evaluation and Program Planning, 23, 53–65.
#' <https://doi.org/10.1016/S0149-7189(99)00037-3>
"psychiatric_discharge"

#' Physician career history
#'
#' A subset of data from Singer and colleagues (1998) measuring length of
#' employment in a sample of 812 physicians hired by community and migrant
#' health centres. Physicians were followed for up to 33 months or until
#' termination of employment. The measurement window began on January 1, 1990,
#' and ended on September 30, 1992.
#'
#' @format
#' A person-level data frame with `r nrow(physicians)` rows and
#' `r ncol(physicians)` columns:
#'
#' \describe{
#'   \item{`id`}{Participant ID.}
#'   \item{`start_date`}{Date of hire.}
#'   \item{`end_date`}{Date of departure.}
#'   \item{`entry`}{Number of years since hire the physician worked before entering the measurement window.}
#'   \item{`exit`}{Number of years the physician worked until departure.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`part_time`}{Binary indicator for whether the physician worked part time.}
#'   \item{`age`}{Age at time of hire.}
#' }
#' @source
#' Singer, J. D., Davidson, S., Graham, S., & Davidson, H. S. (1998).
#' Physician retention in community and migrant health centers: Who stays and
#' for how long? Medical Care, 38, 11981213.
#' <https://doi.org/10.1097/00005650-199808000-00008>
"physicians"

#' Piagetian monkeys
#'
#' Data from Ha, Kimpo, and Sackett (1997) measuring age of first demonstration
#' of object recognition in a sample of 123 pigtailed macaques. Monkeys were
#' followed for up to 37 days or until they demonstrated the classic Piagetian
#' stage of development known as object recognition.
#'
#' @format
#' A person-level data frame with `r nrow(monkeys)` rows and
#' `r ncol(monkeys)` columns:
#'
#' \describe{
#'   \item{`id`}{Monkey ID.}
#'   \item{`sessions`}{Number of sessions the monkey completed until demonstrating object recognition.}
#'   \item{`initial_age`}{Age at initial testing in days.}
#'   \item{`end_age`}{Age at end of testing in days.}
#'   \item{`censor`}{Censoring status.}
#'   \item{`birth_weight`}{Decile equivalent of the monkey's birth weight in comparison to colony-wide sex-specific standards.}
#'   \item{`female`}{Binary indicator for whether the adolescent is a female.}
#' }
#' @source
#' Ha, J. C., Kimpo, C. L., & Sackett, G. P. (1997). Multiple-spell,
#' discrete-time survival analysis of developmental data: Object concept in
#' pigtailed macaques. Developmental Psychology, 33, 1054–1059.
#' <https://doi.org/10.1037//0012-1649.33.6.1054>
"monkeys"
