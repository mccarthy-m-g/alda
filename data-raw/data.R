# Raw data retrieved from: https://stats.oarc.ucla.edu/other/examples/alda/
library(dplyr)
library(tidyr)
library(purrr)
library(readr)
library(fs)
library(haven)
library(janitor)

sas_data  <- list.files("data-raw/data/raw", full.names = TRUE)
filenames <- list.files("data-raw/data/raw") |> path_ext_remove()
sas_data  <- set_names(sas_data, filenames)
tidy_data <- map(sas_data, \(.x) .x |> read_sas() |> clean_names())

# Chapter 2 -------------------------------------------------------------------

deviant_tolerance_pl <- tidy_data$tolerance |>
  rename(
    tolerance_11 = tol11,
    tolerance_12 = tol12,
    tolerance_13 = tol13,
    tolerance_14 = tol14,
    tolerance_15 = tol15
  )

deviant_tolerance_pp <- tidy_data$tolerance_pp |>
  select(-time)

# Chapter 3 -------------------------------------------------------------------

# Data not publicly available

# Chapter 4 -------------------------------------------------------------------

alcohol_use_1 <- tidy_data$alcohol1_pp |>
  rename(
    child_of_alcoholic = coa,
    alcohol_use = alcuse,
    peer_alcohol_use = peer
  ) |>
  select(-c(age_14, cpeer, ccoa))

# Chapter 5 -------------------------------------------------------------------

reading_scores <- tidy_data$reading_pp |>
  rename(
    age_group = agegrp,
    reading_score = piat
  )

dropout_wages <- tidy_data$wages_pp |>
  rename(
    log_wages = lnw,
    experience = exper,
    postsecondary_education = postexp,
    highest_grade = hgc,
    unemployment_rate = uerate
  ) |>
  select(-hgc_9, -(ue_7:ue1))

dropout_wages_subset <- tidy_data$wages_small_pp |>
  rename(
    log_wages = lnw,
    experience = exper
  ) |>
  mutate(highest_grade = hgc_9 + 9) |>
  select(-hgc_9)

depression_unemployment <- tidy_data$unemployment_pp |>
  rename(
    depression = cesd,
    unemployed = unemp
  )

antidepressants <- tidy_data$medication_pp |>
  rename(
    treatment = treat,
    time_of_day = timeofday,
    positive_mood = pos
  ) |>
  mutate(
    reading = case_when(
      time_of_day == 0 ~ "8 AM",
      between(time_of_day, 0.332, 0.334) ~ "3 PM",
      between(time_of_day, 0.666, 0.668) ~ "10 PM"
    ),
    .after = "day"
  ) |>
  select(-(time333:final)) |>
  relocate(treatment, .after = positive_mood)

# Chapter 6 -------------------------------------------------------------------

berkeley <- tidy_data$berkeley_pp

externalizing_behaviour <- tidy_data$external_pp |>
  rename(externalizing_behaviour = external)

cognitive_growth <- tidy_data$foxngeese_pp |>
  rename(reading_score = read)

# Chapter 7 -------------------------------------------------------------------

opposites_naming <- tidy_data$opposites_pp |>
  rename(
    opposites_naming_score = opp,
    baseline_cognitive_score = cog
  ) |>
  select(-ccog)

# Chapter 8 -------------------------------------------------------------------

alcohol_use_2 <- tidy_data$alcohol2_pp |>
  rename(
    alcohol_use = alcuse,
    peer_pressure = peer
  ) |>
  select(-(alc1:i))

# Chapter 9 -------------------------------------------------------------------

teachers <- tidy_data$teachers |>
  rename(years = t)

# Chapter 10 ------------------------------------------------------------------

cocaine_relapse_1 <- tidy_data$cocaine_relapse |>
  rename(
    weeks = week,
    needle = nasal
  )

first_sex <- tidy_data$firstsex |>
  rename(
    grade = time,
    parental_transition = pt,
    parental_antisociality = pas
  )

suicide_ideation <- tidy_data$suicide_orig

congresswomen <- tidy_data$congress_orig |>
  rename(democrat = dem)

# Chapter 11 ------------------------------------------------------------------

# Reuses data from previous chapters

# Chapter 12 ------------------------------------------------------------------

tenure <- tidy_data$tenure_orig |>
  rename(years = time)

first_depression_1 <- tidy_data$depression_pp |>
  rename(
    depress = event,
    interview_age = age,
    censor_age = censage
  ) |>
  select(-(censor_age:aged), -(sibs12:sibs9plus), -(one:age_18cub))

first_arrest <- tidy_data$firstarrest_pp |>
  rename(
    abused_black = ablack
  )

math_dropout <- tidy_data$mathdropout_pp |>
  rename(
    woman = female,
    term = period,
    last_term = lastpd
  ) |>
  select(-c(one, ltime))

# Chapter 13 ------------------------------------------------------------------

honking <- tidy_data$honking

alcohol_relapse <- tidy_data$alcohol_relapse |>
  relocate(id, weeks, censor)

judges <- tidy_data$judges |>
  rename(
    retired = retire,
    left_appointment = leave,
    appointment_age = age,
    appointment_year = year
  )

first_depression_2 <- tidy_data$firstdepression

health_workers <- tidy_data$healthworkers

# Chapter 14 ------------------------------------------------------------------

rearrest <- tidy_data$rearrest |>
  rename(
    person_crime = personal,
    property_crime = property,
    age = cage
  ) |>
  mutate(days = floor(months * 30.4375), .before = months)

# Chapter 15 ------------------------------------------------------------------

first_cocaine <- tidy_data$firstcocaine |>
  rename(
    used_cocaine_age = cokeage,
    early_marijuana_use = earlymj,
    early_drug_use = earlyod,
    used_marijuana = mjyes,
    used_marijuana_age = mjage,
    sold_marijuana = sellmjyes,
    sold_marijuana_age = sellmjage,
    used_drugs = odyes,
    used_drugs_age = odage,
    sold_drugs = sdyes,
    sold_drugs_age = sdage
  )

cocaine_relapse_2 <- tidy_data$relapse_days |>
  rename(
    needle = nasal,
    base_mood = basemood
  ) |>
  select(-starts_with(c("week", "aver"))) |>
  pivot_longer(
    cols = starts_with("mood"),
    names_to = "followup",
    names_pattern = "([[:digit:]]+)",
    values_to = "mood"
  )

psychiatric_discharge <- tidy_data$lengthofstay |>
  rename(treatment_plan = treat)

physicians <- tidy_data$doctors |>
  rename(
    start_date = stdate,
    end_date = enddate,
    part_time = parttime
  )

monkeys <- tidy_data$monkeys |>
  rename(birth_weight = bodywt)

# Save tidied data ------------------------------------------------------------

# Object names are needed to save everything iteratively
data_sets <- ls()[
  !(ls() %in% c("sas_data", "filenames", "tidy_data", "transfer_library", "data_sets"))
]

invisible(map(
  data_sets,
  function(.x) {
    file_path <- paste0("data-raw/data/tidy/", .x, ".csv")
    write_csv(eval(parse(text = .x), env = .GlobalEnv), file = file_path)
  }
))

usethis::use_data(
  deviant_tolerance_pl,
  deviant_tolerance_pp,
  alcohol_use_1,
  reading_scores,
  dropout_wages,
  dropout_wages_subset,
  depression_unemployment,
  antidepressants,
  berkeley,
  externalizing_behaviour,
  cognitive_growth,
  opposites_naming,
  alcohol_use_2,
  teachers,
  cocaine_relapse_1,
  first_sex,
  suicide_ideation,
  congresswomen,
  tenure,
  first_depression_1,
  first_arrest,
  math_dropout,
  honking,
  alcohol_relapse,
  judges,
  first_depression_2,
  health_workers,
  rearrest,
  first_cocaine,
  cocaine_relapse_2,
  psychiatric_discharge,
  physicians,
  monkeys,
  overwrite = TRUE
)
