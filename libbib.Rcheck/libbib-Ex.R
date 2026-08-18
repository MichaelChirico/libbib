pkgname <- "libbib"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "libbib-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('libbib')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("car")
### * car

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: car
### Title: Return first element of vector
### Aliases: car

### ** Examples

library(data.table)
car(c(8, 6, 7, 5, 3, 0, 9))      # 8
mt <- as.data.table(mtcars)
dt_del_cols(mt, "cyl", "disp", "hp")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("car", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("check_isbn_10_check_digit")
### * check_isbn_10_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: check_isbn_10_check_digit
### Title: Check the check digit of an ISBN 10
### Aliases: check_isbn_10_check_digit

### ** Examples


check_isbn_10_check_digit("012491540X")      # TRUE
check_isbn_10_check_digit("0-124-91540-X")   # TRUE

# vectorized
check_isbn_10_check_digit(c("012491540X", "9004037812"))  # TRUE FALSE




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("check_isbn_10_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("check_isbn_13_check_digit")
### * check_isbn_13_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: check_isbn_13_check_digit
### Title: Check the check digit of an ISBN 13
### Aliases: check_isbn_13_check_digit

### ** Examples


check_isbn_13_check_digit("9780306406157")          # TRUE
check_isbn_13_check_digit("978-0-306-40615-7")      # TRUE

# vectorized
check_isbn_13_check_digit(c("978-0-306-40615-7", "9783161484103"))  # TRUE FALSE




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("check_isbn_13_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("check_issn_check_digit")
### * check_issn_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: check_issn_check_digit
### Title: Check the check digit of an ISSN
### Aliases: check_issn_check_digit

### ** Examples


check_issn_check_digit("2434561X")   # TRUE
check_issn_check_digit("2434-561X")  # TRUE

# vectorized
check_issn_check_digit(c("03785955", "2434561X", NA))  # TRUE TRUE NA
check_issn_check_digit(c("0378-5955", "2434-561X", NA))
# TRUE TRUE NA




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("check_issn_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("convert_to_isbn_13")
### * convert_to_isbn_13

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: convert_to_isbn_13
### Title: Convert ISBN 10 to ISBN 13
### Aliases: convert_to_isbn_13

### ** Examples


convert_to_isbn_13("012491540X")                # 9780124915404

# vectorized
convert_to_isbn_13(c("012491540X", "9004037810"))
# "9780124915404" "9789004037816"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("convert_to_isbn_13", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cp_lb_attributes")
### * cp_lb_attributes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cp_lb_attributes
### Title: Copy special libbib attributes from one object to another
### Aliases: cp_lb_attributes

### ** Examples


tmp1 <- "a"
set_lb_date(tmp1, "2021-05-08")
set_lb_attribute(tmp1, "note", "just an example")

tmp2 <- "b"
cp_lb_attributes(tmp1, tmp2)
attributes(tmp2)$lb.date
# [1] "2021-05-08"
attributes(tmp2)$lb.note
# [1] "just an example"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cp_lb_attributes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_add_to_col_names")
### * dt_add_to_col_names

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_add_to_col_names
### Title: Add string to all column names in a data.table
### Aliases: dt_add_to_col_names

### ** Examples

library(data.table)
DT <- as.data.table(iris)

dt_add_to_col_names(DT, "_post")
names(DT)
# [1] "Sepal.Length_post" "Sepal.Width_post"  "Petal.Length_post"
# [4] "Petal.Width_post"  "Species_post"

 DT <- as.data.table(iris)
dt_add_to_col_names(DT, "pre_", prefix=TRUE)
names(DT)
# [1] "pre_Sepal.Length" "pre_Sepal.Width"  "pre_Petal.Length" "pre_Petal.Width"
# [5] "pre_Species"

DT <- as.data.table(iris)
dt_add_to_col_names(DT, "_post", exclude="Species")
names(DT)
# [1] "Sepal.Length_post" "Sepal.Width_post"  "Petal.Length_post"
# [4] "Petal.Width_post"  "Species"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_add_to_col_names", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_counts_and_percents")
### * dt_counts_and_percents

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_counts_and_percents
### Title: Group by, count, and percent count in a data.table
### Aliases: dt_counts_and_percents

### ** Examples

library(data.table)

iris_dt <- as.data.table(iris)
dt_counts_and_percents(iris_dt, "Species")
mt <- as.data.table(mtcars)
mt[, cyl:=factor(cyl)]
dt_counts_and_percents(mt, "cyl")
dt_counts_and_percents(mt, "cyl", percent.cutoff=25)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_counts_and_percents", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_del_cols")
### * dt_del_cols

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_del_cols
### Title: Delete columns in a data.table
### Aliases: dt_del_cols

### ** Examples

library(data.table)
mt <- as.data.table(mtcars)
dt_del_cols(mt, "cyl", "disp", "hp")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_del_cols", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_keep_cols")
### * dt_keep_cols

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_keep_cols
### Title: Keep columns in a data.table
### Aliases: dt_keep_cols

### ** Examples

library(data.table)
mt <- as.data.table(mtcars)
dt_keep_cols(mt, "mpg", "am", "gear", "carb")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_keep_cols", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_na_breakdown")
### * dt_na_breakdown

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_na_breakdown
### Title: Get a breakdown of the NA-status of a column in a data.table
### Aliases: dt_na_breakdown

### ** Examples

library(data.table)

iris_dt <- as.data.table(iris)
iris_dt[sample(1:.N, 10), Species:=NA_character_]
dt_na_breakdown(iris_dt, "Species")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_na_breakdown", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_percent_not_na")
### * dt_percent_not_na

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_percent_not_na
### Title: Return the percentage of non-NA instances in a data.table column
### Aliases: dt_percent_not_na

### ** Examples

library(data.table)

mt <- as.data.table(mtcars)
mt[mpg<16, mpg:=NA]
dt_percent_not_na(mt, "mpg")         # 68.75




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_percent_not_na", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dt_set_clean_names")
### * dt_set_clean_names

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dt_set_clean_names
### Title: Takes a data.table and set to cleaned column names
### Aliases: dt_set_clean_names

### ** Examples

library(data.table)

ejemplo <- as.data.table(iris)
setnames(ejemplo, c("Sepal Length", "Sepal@Width", "Petal	Length",
                    "Petal\\nWidth", "Spêcies"))
dt_set_clean_names(ejemplo)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dt_set_clean_names", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("fread_plus_date")
### * fread_plus_date

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: fread_plus_date
### Title: Read a file and set a special libbib date attribute
### Aliases: fread_plus_date

### ** Examples

## Not run: 
##D   # there's a file called "iris-2021-05-08.csv" on disk
##D   dat <- fread_plus_date("iris.csv")
##D   attribute(dat)$lb.date
##D   # [1] "2021-05-08
##D 
##D   # can also read the full file name
##D   dat <- fread_plus_date("iris-2021-05-08.csv")
##D   attribute(dat)$lb.date
##D   # [1] "2021-05-08
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("fread_plus_date", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("fwrite_plus_date")
### * fwrite_plus_date

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: fwrite_plus_date
### Title: Write a file with a date appended to the file name.
### Aliases: fwrite_plus_date

### ** Examples

## Not run: 
##D 
##D set_lb_date(iris, "2021-05-08")
##D fwrite_plus_date(iris, "iris.csv.gz")
##D # "iris-2021-05-08.csv.gz" is now written to disk
##D 
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("fwrite_plus_date", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_all_lc_call_subject_letters")
### * get_all_lc_call_subject_letters

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_all_lc_call_subject_letters
### Title: Get all subject letters of LC Call Number
### Aliases: get_all_lc_call_subject_letters

### ** Examples


get_all_lc_call_subject_letters("Q172.5.E77")
# Q
get_all_lc_call_subject_letters("AF172.5.E77")
# NA

# vectorized
get_all_lc_call_subject_letters(c("Q 172.5", "AF172", "PR6023.A93"))
# Q NA PR




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_all_lc_call_subject_letters", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_clean_names")
### * get_clean_names

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_clean_names
### Title: Takes a data.frame and returns cleaned column names
### Aliases: get_clean_names

### ** Examples

ejemplo <- iris
names(ejemplo) <- c("Sepal Length", "Sepal@Width", "Petal	Length",
                    "Petal\\nWidth", "Spêcies")
# c("sepal_length" "sepal_width"  "petallength"  "petal_nwidth" "sp_cies")

# c("Sepal_Length" "Sepal_Width"  "PetalLength"  "Petal_nWidth" "Sp_cies")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_clean_names", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_country_from_code")
### * get_country_from_code

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_country_from_code
### Title: Conversion from country code to country name
### Aliases: get_country_from_code

### ** Examples


get_country_from_code("ck")
# Colombia

# tolerant of case and leading/trailing whitespace
get_country_from_code(c(" PE", "not-a-country", "nyu"))
# c("Peru", NA, "New York (State)")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_country_from_code", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_dewey_decimal_subject_class")
### * get_dewey_decimal_subject_class

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_dewey_decimal_subject_class
### Title: Conversion from Dewey Decimal call numbers to first-level
###   subject description
### Aliases: get_dewey_decimal_subject_class

### ** Examples


get_dewey_decimal_subject_class("709.05")     # Arts

get_dewey_decimal_subject_class("823.912")
# Literature (Belles-lettres) and rhetoric

# vectorized
get_dewey_decimal_subject_class(c("709.05", "invalid", NA, "823.912"))
# c("Arts", NA, NA, "Literature (Belles-lettres) and rhetoric")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_dewey_decimal_subject_class", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_dewey_decimal_subject_division")
### * get_dewey_decimal_subject_division

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_dewey_decimal_subject_division
### Title: Conversion from Dewey Decimal call numbers to second-level
###   subject description
### Aliases: get_dewey_decimal_subject_division

### ** Examples


get_dewey_decimal_subject_division("709.05")     # Arts

get_dewey_decimal_subject_division("823.912")
# "English and Old English literatures"

# vectorized
get_dewey_decimal_subject_division(c("709.05", "invalid", NA, "823.912"))
# c("Arts", NA, NA, "English and Old English literatures")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_dewey_decimal_subject_division", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_dewey_decimal_subject_section")
### * get_dewey_decimal_subject_section

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_dewey_decimal_subject_section
### Title: Conversion from Dewey Decimal call numbers to third-level
###   subject description
### Aliases: get_dewey_decimal_subject_section

### ** Examples


get_dewey_decimal_subject_section("709.05")
# "History, geographic treatment, biography"

get_dewey_decimal_subject_section("823.912")
# "English fiction"

# vectorized
get_dewey_decimal_subject_section(c("709.05", "invalid", NA, "823.912"))
# c("History, geographic treatment, biography", NA, NA,
#   "English fiction")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_dewey_decimal_subject_section", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_isbn_10_check_digit")
### * get_isbn_10_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_isbn_10_check_digit
### Title: Get ISBN 10 check digit
### Aliases: get_isbn_10_check_digit

### ** Examples


get_isbn_10_check_digit("012491540X")
get_isbn_10_check_digit("0-124-91540-X", allow.hyphens=TRUE)

# nine digit string
get_isbn_10_check_digit("900403781")

get_isbn_10_check_digit("onetwothre", errors.as.nas=TRUE)  # NA

# vectorized
get_isbn_10_check_digit(c("012491540X", "9004037810", "900403781"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_isbn_10_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_isbn_13_check_digit")
### * get_isbn_13_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_isbn_13_check_digit
### Title: Get ISBN 13 check digit
### Aliases: get_isbn_13_check_digit

### ** Examples


get_isbn_13_check_digit("9780306406157")

# 12 digit string
get_isbn_13_check_digit("978030640615")

get_isbn_13_check_digit("onetwothreefo", errors.as.nas=TRUE)  # NA

# vectorized
get_isbn_13_check_digit(c("9780306406157", "9783161484100"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_isbn_13_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_issn_check_digit")
### * get_issn_check_digit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_issn_check_digit
### Title: Get ISSN check digit
### Aliases: get_issn_check_digit

### ** Examples


get_issn_check_digit("03785955")

get_issn_check_digit("2434-561X", allow.hyphens=TRUE)

# nine digit string
get_issn_check_digit("0378595")

# vectorized
get_issn_check_digit(c("0378595", "2434561X", NA))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_issn_check_digit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_language_from_code")
### * get_language_from_code

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_language_from_code
### Title: Conversion from language code to language name
### Aliases: get_language_from_code

### ** Examples


get_language_from_code("yor")
# Yoruba

# tolerant of case and leading/trailing whitespace
get_language_from_code(c("yor", " SPA ", "not-a-language", "nah", NA))
# c("Yoruba", "Spanish", NA, "Nahuatl", NA)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_language_from_code", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_lc_call_first_letter")
### * get_lc_call_first_letter

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_lc_call_first_letter
### Title: Get the first letter of LC Call Number
### Aliases: get_lc_call_first_letter

### ** Examples


get_lc_call_first_letter("Q172.5.E77")
# Q
get_lc_call_first_letter("AF172.5.E77")
# NA

# vectorized
get_lc_call_first_letter(c("Q 172.5", "AF172", "PR6023.A93"))
# Q NA P




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_lc_call_first_letter", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("get_lc_call_subject_classification")
### * get_lc_call_subject_classification

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: get_lc_call_subject_classification
### Title: Conversion from Library of Congress Call number to subject
###   classification
### Aliases: get_lc_call_subject_classification

### ** Examples


get_lc_call_subject_classification("ND 237.S18 $b S87 1997")
# Fine Arts

get_lc_call_subject_classification("ND 237.S18 $b S87 1997", subclassification=TRUE)
# Painting

get_lc_call_subject_classification("PQ2246.M3")
# Language and Literature

get_lc_call_subject_classification("PQ2246.M3",
                                   subclassification=TRUE)
# "French, Italian, Spanish, and Portuguese literature"

get_lc_call_subject_classification("PQ2246.M3", already.parsed=TRUE)
# NA

get_lc_call_subject_classification("PQ", already.parsed=TRUE,
                                   subclassification=TRUE)
# "French, Italian, Spanish, and Portuguese literature"

# vectorized
get_lc_call_subject_classification(c("ND 237", "\\\\$a ND 2", "PQ2246.M3"),
                                   subclassification=TRUE)
# c("Painting", NA, "French, Italian, Spanish, and Portuguese literature")





base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("get_lc_call_subject_classification", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("is_valid_isbn_10")
### * is_valid_isbn_10

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: is_valid_isbn_10
### Title: Return TRUE if valid ISBN 10
### Aliases: is_valid_isbn_10

### ** Examples


is_valid_isbn_10("012491540X")    # TRUE
is_valid_isbn_10("0-124-91540-X") # TRUE

# vectorized
is_valid_isbn_10(c("012491540X", "9004037812"))      # TRUE FALSE
is_valid_isbn_10(c("012491540X", "hubo un tiempo"))  # TRUE FALSE




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("is_valid_isbn_10", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("is_valid_isbn_13")
### * is_valid_isbn_13

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: is_valid_isbn_13
### Title: Return TRUE if valid ISBN 13
### Aliases: is_valid_isbn_13

### ** Examples


is_valid_isbn_13("9780306406157")          # TRUE
is_valid_isbn_13("978-0-306-40615-7")      # TRUE

# vectorized
is_valid_isbn_10(c("012491540X", "9004037812"))  # TRUE FALSE
is_valid_isbn_13(c("978-0-306-40615-7", "9783161484103"))  # TRUE FALSE
is_valid_isbn_13(c("978-0-306-40615-7", "hubo un tiempo"))  # TRUE FALSE




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("is_valid_isbn_13", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("is_valid_issn")
### * is_valid_issn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: is_valid_issn
### Title: Return TRUE if valid ISSN
### Aliases: is_valid_issn

### ** Examples


is_valid_issn("2434561X")           # TRUE
is_valid_issn("2434-561X")          # TRUE

# vectorized

is_valid_issn(c("2434-561X", "2434-5611", "0378-5955", NA))
# TRUE FALSE TRUE NA




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("is_valid_issn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("is_valid_lc_call")
### * is_valid_lc_call

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: is_valid_lc_call
### Title: Check if LC Call Number is valid
### Aliases: is_valid_lc_call

### ** Examples


is_valid_lc_call("Q172.5.E77")
# TRUE
is_valid_lc_call("AF172.5.E77")
# FALSE

# vectorized
is_valid_lc_call(c("Q 172.5", "AF172", "PR6023.A93"))
# TRUE FALSE TRUE




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("is_valid_lc_call", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("loc_permalink_from_lccn")
### * loc_permalink_from_lccn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: loc_permalink_from_lccn
### Title: Get Library of Congress catalog permalinks from LCCNs
### Aliases: loc_permalink_from_lccn

### ** Examples

loc_permalink_from_lccn("n78-890351")        # "https://lccn.loc.gov/n78890351"
loc_permalink_from_lccn("85-2 ")             # "https://lccn.loc.gov/85000002"
loc_permalink_from_lccn("75-425165//r75")    # "https://lccn.loc.gov/75425165"

# vectorized
loc_permalink_from_lccn(c("###78890351#", NA, "n78-890351"))

# MARCXML metadata format
loc_permalink_from_lccn("73167510", format="marcxml")
# "https://lccn.loc.gov/73167510/marcxml"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("loc_permalink_from_lccn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("marc_008_get_info")
### * marc_008_get_info

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: marc_008_get_info
### Title: Get info from MARC control field 008
### Aliases: marc_008_get_info

### ** Examples


# reissue publication date
marc_008_get_info("950622r19701880ru            000 0 rus d")
#     pub_date pub_place_code lang_code
#        <int>         <char>    <char>
#  1:     1970             ru       rus

# The Brothers Karamazov (1970 reissue but original publication date)
marc_008_get_info("950622r19701880ru            000 0 rus d",
                  original.pub.date=TRUE)
#    pub_date pub_place_code lang_code
#       <int>         <char>    <char>
# 1:     1880             ru       rus

# vectorized
marc_008_get_info(c("101106s1992    gr            000 1 gre d", NA,
                    "180528s2017    ag            000 j spa d"))
#      pub_date pub_place_code lang_code
#         <int>         <char>    <char>
#   1:     1992             gr       gre
#   2:       NA           <NA>      <NA>
#   3:     2017             ag       spa




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("marc_008_get_info", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("marc_leader_get_info")
### * marc_leader_get_info

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: marc_leader_get_info
### Title: Get info from MARC leader
### Aliases: marc_leader_get_info

### ** Examples


marc_leader_get_info("00000cam a22000008i 4500")
#          record_type      bib_level
#               <char>         <char>
# 1: Language Material Monograph/Item

# vectorized
marc_leader_get_info(c("00000cam a2200000Ma 4500", NA,
                       "00000cem a2200000Ma 4500"))
#              record_type      bib_level
#                    <char>         <char>
#  1:     Language Material Monograph/Item
#  2:                  <NA>           <NA>
#  3: Cartographic material Monograph/Item




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("marc_leader_get_info", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("normalize_isbn")
### * normalize_isbn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: normalize_isbn
### Title: Attempt to enforce validity and canonical form to an ISBN
### Aliases: normalize_isbn

### ** Examples


normalize_isbn("012491540x")                           # "012491540X"
normalize_isbn("012491540x", convert.to.isbn.13=TRUE)
"9780124915404"

# vectorized
normalize_isbn(c("513213012491540x245",
                 "978966819^*!X7918",
                 NA,
                 "97815724115799781572411579"))
# "012491540X", "9789668197918", NA, "9781572411579"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("normalize_isbn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("normalize_isbn_10")
### * normalize_isbn_10

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: normalize_isbn_10
### Title: Attempt to enforce validity and canonical form to ISBN 10
### Aliases: normalize_isbn_10

### ** Examples


normalize_isbn_10("012491540x")                    # "012491540X"
normalize_isbn_10("012491540x xe32ea")             # "012491540X"
normalize_isbn_10("012491540x", convert.to.isbn.13=TRUE)
# "9780124915404"
normalize_isbn_10("513213012491540x")              # "012491540X"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("normalize_isbn_10", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("normalize_isbn_13")
### * normalize_isbn_13

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: normalize_isbn_13
### Title: Attempt to enforce validity and canonical form to ISBN 13
### Aliases: normalize_isbn_13

### ** Examples


normalize_isbn_13("978966819^*!X7918")        # "9789668197918"

# vectorized
normalize_isbn_13(c("978-9-66-819791-8", "__9__781572411579"))
# "9789668197918" "9781572411579"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("normalize_isbn_13", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("normalize_issn")
### * normalize_issn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: normalize_issn
### Title: Attempt to enforce validity and canonical form to ISSN
### Aliases: normalize_issn

### ** Examples


# adds leading zero
normalize_issn("3785955")                          # "03785955"

# adds X to 7 digit ISSN if valid
normalize_issn("2434561")                          # "2434561X"

normalize_issn("2434561", pretty=TRUE)             # "2434-561X"

# finds correct sequence
normalize_issn("21335212434561X")                  # "2434561X"

# vectorized
normalize_issn(c("__2434__561X", "2434561", "21335212434561X"))
# "2434561X" "2434561X" "2434561X"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("normalize_issn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("normalize_lccn")
### * normalize_lccn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: normalize_lccn
### Title: Attempt to enforce validity of LCCN and convert to normalized
###   form
### Aliases: normalize_lccn

### ** Examples


normalize_lccn("n 78890351 ")                  # "n78890351"

normalize_lccn("###78890351#")                 # "78890351"

normalize_lccn(" 79139101 /AC/r932")           #  "79139101"

normalize_lccn("85-2 ")                        #  "85000002"
normalize_lccn("85-2 ", allow.hyphens=FALSE)   #  NA

# vectorized
normalize_lccn(c("85-2 ", " 79139101 /AC/r932", "n 78890351 "))
# c("85000002", "79139101", "n78890351"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("normalize_lccn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("oclc_classify_link_from_standard_num")
### * oclc_classify_link_from_standard_num

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: oclc_classify_link_from_standard_num
### Title: Get OCLC Classify link from a standard number
### Aliases: oclc_classify_link_from_standard_num

### ** Examples


oclc_classify_link_from_standard_num("629725006")
# "http://classify.oclc.org/classify2/ClassifyDemo?search-standnum-txt=629725006&startRec=0"

oclc_classify_link_from_standard_num(c("039333712X", NA, "629725006"))
# [1] "http://classify.oclc.org/classify2/ClassifyDemo?search-standnum-txt=039333712X&startRec=0"
# [2] NA
# [3] "http://classify.oclc.org/classify2/ClassifyDemo?search-standnum-txt=629725006&startRec=0"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("oclc_classify_link_from_standard_num", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("recombine_with_sep_closure")
### * recombine_with_sep_closure

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: recombine_with_sep_closure
### Title: Return a function that will combine/contatenate a vector
### Aliases: recombine_with_sep_closure

### ** Examples


lambda <- recombine_with_sep_closure()
lambda(c(8, 6, 7))                               # "8;6;7"

# directly
recombine_with_sep_closure()(c(8,6,7))           #  "8;6;7"
lambda <- recombine_with_sep_closure(" ")
lambda(c("this", "that", NA,"the-other"))        # "this that NA the-other"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("recombine_with_sep_closure", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("remove_duplicates_and_nas")
### * remove_duplicates_and_nas

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: remove_duplicates_and_nas
### Title: Remove duplicate elements and NAs from a vector
### Aliases: remove_duplicates_and_nas

### ** Examples


remove_duplicates_and_nas(c(8, 6, 7, 5, 3, 0, 9, 6, NA, 3))
# 8 6 7 5 3 0 9

remove_duplicates_and_nas(c(NA, NA))
# NA




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("remove_duplicates_and_nas", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("set_lb_attribute")
### * set_lb_attribute

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: set_lb_attribute
### Title: Set special libbib attribute on object
### Aliases: set_lb_attribute

### ** Examples

set_lb_attribute(mtcars, "source", "R built-in dataset")

versicolor <- iris[iris$Species=="versicolor", ]
set_lb_attribute(versicolor, "note", "modified built-in dataset")
attributes(versicolor)$lb.note
# [1] "modified built-in dataset"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("set_lb_attribute", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("set_lb_date")
### * set_lb_date

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: set_lb_date
### Title: Set special libbib date attribute on object
### Aliases: set_lb_date

### ** Examples

set_lb_date(mtcars, "2021-05-08")
attributes(mtcars)$lb.date
# [1] "2021-05-08

set_lb_date(mtcars, Sys.Date())




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("set_lb_date", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("split_map_filter_reduce")
### * split_map_filter_reduce

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: split_map_filter_reduce
### Title: Split, Map, Filter, and Reduce a string vector
### Aliases: split_map_filter_reduce

### ** Examples


someisbns <- c("9782711875177;garbage-isbn;2711875172;2844268900",
               "1861897952; 978-1-86189-795-4")

# will return only the first ISBN for each record
split_map_filter_reduce(someisbns)
# "9782711875177" "1861897952"

# will return only the first ISBN for each record, after normalizing
# each ISBN
split_map_filter_reduce(someisbns, mapfun=function(x){normalize_isbn(x, convert.to.isbn.13=TRUE)})
# "9782711875177" "9781861897954"

# will return all ISBNs, for each record, separated by a semicolon
# after applying normalize_isbn to each ISBN
# note the duplicates introduced after normalization occurs
split_map_filter_reduce(someisbns, mapfun=function(x){normalize_isbn(x, convert.to.isbn.13=TRUE)},
                        reduxfun=recombine_with_sep_closure())
# "9782711875177;NA;9782711875177;9782844268907" "9781861897954;9781861897954"

# After splitting each items ISBN list by semicolon, this runs
# normalize_isbn in each of them. Duplicates are produced when
# an ISBN 10 converts to an ISBN 13 that is already in the ISBN
# list for the item. NAs are produced when an ISBN fails to normalize.
# Then, all duplicates and NAs are removed. Finally, the remaining
# ISBNs, for each record, are pasted together using a space as a separator
split_map_filter_reduce(someisbns, mapfun=function(x){normalize_isbn(x, convert.to.isbn.13=TRUE)},
                        filterfun=remove_duplicates_and_nas,
                        reduxfun=recombine_with_sep_closure(" "))
# "9782711875177 9782844268907" "9781861897954"




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("split_map_filter_reduce", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_api_bib_read_info_by")
### * worldcat_api_bib_read_info_by

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_api_bib_read_info_by
### Title: Get bibliographic info from a standard number
### Aliases: worldcat_api_bib_read_info_by
###   worldcat_api_bib_read_info_by_oclc worldcat_api_bib_read_info_by_isbn
###   worldcat_api_bib_read_info_by_issn

### ** Examples


## Not run: 
##D worldcat_api_bib_read_info_by_isbn("9780984201006")
##D #         oclc          isbn   issn                        title
##D #       <char>        <char> <char>                       <char>
##D # 1: 462894360 9780984201006   <NA> The Great Debate about Art /
##D #          author                   leader
##D #          <char>                   <char>
##D # 1: Harris, Roy, 00000cam a2200000 a 4500
##D #                                        oh08
##D #                                      <char>
##D # 1: 091031s2010    ilua     b    000 0 eng c
##D 
##D worldcat_api_bib_read_info_by_issn("13602365")
##D #        oclc   isbn     issn                        title author
##D #      <char> <char>   <char>                       <char> <char>
##D # 1: 37787277   <NA> 14664410 The journal of architecture.   <NA>
##D #                      leader                                     oh08
##D #                      <char>                                   <char>
##D # 1: 00000cas a2200000 a 4500 971015c19969999enkbx pso     0   a0eng c
##D 
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_api_bib_read_info_by", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_api_classify_by")
### * worldcat_api_classify_by

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_api_classify_by
### Title: Search WorldCat classify API by ISBN, ISSN, or OCLC number
### Aliases: worldcat_api_classify_by worldcat_api_classify_by_oclc
###   worldcat_api_classify_by_isbn worldcat_api_classify_by_issn

### ** Examples


## Not run: 
##D   worldcat_api_classify_by_oclc("93976650")
##D    #         oclc   title           author total_holdings total_eholdings call_type
##D    #       <char>  <char>           <char>          <int>           <int>    <char>
##D    # 1: 939766505 Lobster King, Richard J.            244             534       DDC
##D    # 2: 939766505 Lobster King, Richard J.            244             534       LCC
##D    #    recommendation holdings http_status_code classify_response_code
##D    #            <char>   <char>            <int>                  <int>
##D    # 1:        641.395      767              200                      0
##D    # 2:      QL444.M33      318              200                      0
##D 
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_api_classify_by", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_api_locations_by")
### * worldcat_api_locations_by

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_api_locations_by
### Title: Get holding libraries by standard number
### Aliases: worldcat_api_locations_by worldcat_api_locations_by_oclc
###   worldcat_api_locations_by_isbn worldcat_api_locations_by_issn

### ** Examples


## Not run: 
##D # worldcat_api_locations_by_oclc("877749545", max_libraries=10,
##D #                                include.bib.info=FALSE)
##D #         oclc institution_identifier
##D #       <char>                 <char>
##D # 1: 877749545                    NLE
##D # 2: 877749545                    NLW
##D # 3: 877749545                    EUM
##D # 4: 877749545                    LTU
##D # 5: 877749545                    ELU
##D # 6: 877749545                  UKUAL
##D #                                 institution_name copies
##D #                                           <char> <char>
##D # 1:                  National Library of Scotland      1
##D # 2:                     National Library of Wales      1
##D # 3:              University of Manchester Library      1
##D # 4: University of Leicester, David Wilson Library      1
##D # 5:     University of London Senate House Library      1
##D # 6:                 University of the Arts London      1
##D 
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_api_locations_by", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_api_search")
### * worldcat_api_search

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_api_search
### Title: Use the WorldCat Search API
### Aliases: worldcat_api_search

### ** Examples


## Not run: 
##D 
##D # A title search for "The Brothers Karamazov"
##D worldcat_api_search('$title = "Brothers Karamazov"')
##D 
##D # An exact title search for "The Brothers Karamazov"
##D worldcat_api_search('$title exact "Brothers Karamazov"')
##D 
##D # Search for title "Madame Bovary" by author "Gustave Flaubert"
##D # in language Greek (all results)
##D # (queries may span multiple lines)
##D sru <- '$author = "Gustave Flaubert" and $title="Madame Bovary"
##D           and $language=greek'
##D worldcat_api_search(sru, max_records=Inf)
##D 
##D # Hip Hop (subject) materials on Cassette, CD, or wax from years 1987 to 1990
##D sru <- '(($material_type=cas or $material_type=cda or $material_type=lps)
##D            and $subject="Rap") and $year="1987-1990"'
##D worldcat_api_search(sru)
##D 
##D # all materials with keyword "Common Lisp" at The New York Public Library
##D sru <- '$keyword="common lisp" and $holding_library=NYP'
##D worldcat_api_search(sru, max_records=Inf)
##D 
##D # 19th century materials on ethics (Dewey code 170s / LC Call prefix BJ)
##D sru <- '($dewey="17*" or $lc_call="bj*") and $year="18*"'
##D worldcat_api_search(sru, max_records=Inf)
##D 
##D # Music (Dewey 780s) materials that are only held by The New York Public
##D # Library (a "cg" code of 11 means there is only one holding)
##D # [searching with debugging]
##D sru <- '$dewey="78*" and $holding_library=NYP
##D           and $library_holdings_group=11'
##D worldcat_api_search(sru, debug=TRUE)
##D 
##D Keyword search for "danger music" from year 2010 to present
##D worldcat_api_search('$keyword="danger music" and $year="2010-"')
##D 
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_api_search", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_permalink_from_isbn")
### * worldcat_permalink_from_isbn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_permalink_from_isbn
### Title: Get WorldCat catalog permalinks from ISBNs
### Aliases: worldcat_permalink_from_isbn

### ** Examples


worldcat_permalink_from_isbn("1788393724")
# http://www.worldcat.org/isbn/1788393724

worldcat_permalink_from_isbn("0-124-91540-X")
# http://www.worldcat.org/isbn/012491540X

worldcat_permalink_from_isbn("0-124-91540-X", normalize=FALSE)
# http://www.worldcat.org/isbn/0-124-91540-X

# vectorized
worldcat_permalink_from_isbn(c("1788393724", NA, "0-124-91540-X"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_permalink_from_isbn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_permalink_from_issn")
### * worldcat_permalink_from_issn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_permalink_from_issn
### Title: Get WorldCat catalog permalinks from ISSNs
### Aliases: worldcat_permalink_from_issn

### ** Examples

worldcat_permalink_from_issn("0968-1221")   # http://www.worldcat.org/issn/0968-1221

worldcat_permalink_from_issn("2434-561X")   # http://www.worldcat.org/issn/2434561X

# vectorized
worldcat_permalink_from_issn(c("0968-1221", NA, "2434-561X"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_permalink_from_issn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("worldcat_permalink_from_oclc_number")
### * worldcat_permalink_from_oclc_number

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: worldcat_permalink_from_oclc_number
### Title: Get WorldCat catalog permalinks from OCLC numbers
### Aliases: worldcat_permalink_from_oclc_number

### ** Examples


worldcat_permalink_from_oclc_number("1005106045")
# http://www.worldcat.org/oclc/1005106045

# vectorized
worldcat_permalink_from_oclc_number(c("1049727704", NA,
                                      "1005106045"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("worldcat_permalink_from_oclc_number", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
