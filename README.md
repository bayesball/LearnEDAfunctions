# LearnEDAfunctions

This package includes special functions and datasets for a course on Exploratory Data Analysis based on John Tukey's EDA text.

It can be installed from Jim Albert's Github site:

```
library(remotes)
install_github("bayesball/LearnEDAfunctions)
```

The only prerequisite packages are the dplyr and ggplot2 packages.


```{r}
library(LearnEDAfunctions)
```

# Datasets

- `act.scores.06.07`	ACT scores of states in the US.
- `baseball.attendance`	Attendance at baseball teams.
- `batting.history`	Yearly Batting Statistics for Major League Baseball
- `beatles`	Lengths of songs from Beatles' albums.
- `boston.marathon`	Boston Marathon completion times of women of different ages.
- `boston.marathon.wtimes`	Boston marathon winning times
- `braves.attendance`	Attendance at games of a baseball team
- `car.measurements`	Car measurements
-`church.2way`	Church attendance as a two-way table.
- `church.tseries`	Time series of worship attendance
- `college.ratings`	Ratings of National Universities in the U.S.
- `farms`	Number of farms in the states of the U.S.
- `fit.gaussian`	Fitting a Gaussian curve to binned data
- `football`	American football scores
- `gestation.periods`	Gestation periods for different animals.
- `grandma.19.40`	Grandmas Marathon completion times
- `heaviest.fish`	Fish world record catches
- `home.prices`	Home sales prices in the U.S.
- `homeruns.2000`	Team home run numbers for different seasons.
- `homeruns.61`	Home run counts in 1961
- `immigrants`	Immigrant counts to US.
- `island.areas`	Areas of islands from different continents.
- `lake`	Lake measurements
- `mortality.rates`	Infant mortality rates of countries
- `olympics.run`	Olympics running times.
- `olympics.speed.skating`	Olympics speed skating times.
- `olympics.swim`	Olympics swimming times.
- `pitching.history`	Yearly Pitching Statistics for Major League Baseball
- `pop.change`	Population change for all states in the U.S.
- `pop.densities`	Population densities of states for different years.
- `pop.england`	England population
- `rent.prices`	Rent prices in different cities.
- `salaries`	Salaries of different professions in different cities.
- `snowfall`	Snowfall amounts of two cities
- `studentdata`	Student dataset
- `temperatures`	Temperatures for different cities.
- `tukey.24a`	Tukey straightening exercise 24a
- `tukey.24b`	Tukey straightening exercise 24b
- `tukey.26a`	Tukey straightening exercise 24a
- `tukey.26b`	Tukey straightening exercise 24b
- `tukey.26c`	Tukey straightening exercise 24c
- `us.pop`	Population of United States

# Functions

## fit.gaussian() function

Fits a Gaussian curve to binned data.

```{r}
data <- rt(200,df=5)
bins <- pretty(range(data))
g.mean <- 0
g.sd <- 1
fit.gaussian(data, bins, g.mean, g.sd)
```

## half.slope.ratio() function

Half-slope ratio
 
```{r}
sx <- c(10,30,50)
sy <- c(5,8,20)
half.slope.ratio(sx, sy, 1, 1)
half.slope.ratio(sx, sy, -0.5, -0.5)
```
## han.R() function

Hanning a sequence.

```{r}
plot(WWWusage)
plot(smooth(WWWusage, kind="3RSS"))
plot(han(smooth(WWWusage, kind="3RSS")))
```

## hinkley() function

Hinkley's quick method.
 
```{r}
raw <- state.x77[, "Population"]
hinkley(raw)
logs <- log(raw)
hinkley(logs)
```
 
## lval_plus() function
 
Finds outliers by group using Tukey's rule

```{r}
lval_plus(beatles, time, album)
```
 
## lval() function
 
Letter values

```{r}
lval(rnorm(100))
```
 
## mtrans() function

```{r}
raw <- state.x77[,"Population"]
matched.roots <- mtrans(raw,0.5)
matched.logs <- mtrans(raw,0)
boxplot(data.frame(raw, matched.roots,
                   matched.logs))
```

## plot2way() function

Plot of an additive fit.

```{r}
temps <- matrix(data=c(50, 30, 35, 21, 38,
              73, 58, 65, 57, 63,
              88, 83, 89, 84, 86,
              73, 62, 68, 59, 66),
             nrow=5,ncol=4,
          dimnames=list(c("Atlanta",
              "Detroit", "Kansas City",
          "Minneapolis", "Philadelphia"),
          c("January", "April",
              "July", "October")))
fit <- medpolish(temps)
plot2way(fit$row + fit$overall, fit$col,
  dimnames(temps)[[1]],
  dimnames(temps)[[2]])
```

## power.t() function

Power transformation.

```{r}
power.t(c(3, 6, 5, 4, 7), 0.5)
```

## rline() function

Computation of a resistant line.

```{r}
df <- data.frame(x = 1:10,
          y = 3 * (1:10) + rnorm(10))
rline(y ~ x, df, iter=5)
```

## spread_level_plot() function

Spread versus level plot.

```{r}
spread_level_plot(beatles, time, album)
```

## symplot() function

Symmetry plot.

```{r}
symplot(rnorm(100))
# symmetry plot for exponential data
symplot(rexp(100))
```
