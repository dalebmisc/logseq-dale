add this to the steps below--------------leonid
IN SEGMENTATION, LEONID LOOKS FOR:
COMBINATION OF KS GAIN AND GOOD SEPARATION OF BAD RATES, LET'S SAY 1%

AND SHAWN LOOKS FOR:
KS GAIN, OR SMALL LOSS AND GOOD GAIN
GOOD NUMBER IN EACH SEGMENT
DOES IT MAKE BUSINESS SENSE, ESPECIALLY AS IT RELATED TO ADJUDICATION PROCESSES
WHAT ARE WE DOING TODAY, GENERALLY EASIER TO KEEP DOING SOMETHING THAT IS ACCEPTED



# document purpose

This document centralizes information gathered up while creating credit risk modelling related scorecards for the purpose of having a reference document for future work.

This is supplementary information.  The main documentation is provided by Shawn Sampson on SharePoint [here](https://fccfac.sharepoint.com/:f:/r/sites/PMDS-Adjudication978/Shared%20Documents/Model%20Development%20Guidelines?csf=1&web=1&e=4C5wxK).

## scorecard steps timeline

![](scorecard_process_files/scorecard_steps_timeline.png)

## scorecard steps

We need to trust the modelling process.  It has been proven and is defendable.

### model initiation

### create model development sample

Ideally create the model development sample that only includes the time periods for the model.  If this isn't done, then ensure in the documentation and analysis that you don't speak to time periods outside of in-time and out of time.  The exception in the documentation is you may have commentary about time periods that were excluded when talking about the time periods chosen for the model.

Sampling can be useful if it provides enough 'bads'.  Sampling can be done for speed.  Sampling can take all bads and a portion of the goods.  When sampling you develop the model on the sample and test on the full dataset.

Create dataset

Document dataset

Data quality checking

Make a master copy that nobody touches

### review data

### handle outliers, missing data, special codes

Set special codes in the data for situations such as not applicable.

### identify segments

### test / train split

p-value > 0.05 is good, <= 0.05 means populations differ and so the split isn't good.

### IV variable reduction

often gets rid of half

### clustering variable reduction

Used eigen = 0.7 for our clustering.  
    - If not enough clusters and variables may have to tweak this value.  
    - If we have too many clusters and colinearity then we may have to tweak this value.

from each cluster take lowest 1-R2 and highest IV, then can apply manual adjustments

can review with business to make manual adjustments

there are apparently other techniques to further reduce which we didn't do for behavioural models

### manual binning of features

Sometimes it is not feasible due to too many variables to manually bin at clustering time.  In these cases, you will manually bin at characteristic analysis time.

Monotonic trend on event rate and WOE

WOE differnce of 0.2 between buckets

Characteristic analysis, get heterogeneity of default rates between buckets across time on the in time training data
- Check heterogeneity separately on in time test and out of time to see if bins hold.
- Not required but can be done if there is a reason:  Check bin heterogeneity on post out of time data to see if the bins hold.  Be careful as the periods may not be representative (E.g. covid).  Don't check prior to in-time.
- Do not perform this before the in-time periods as these are older periods and not relevant.  Only the in time data and newer is relevant for the model.

Variable considerations:

Farm location province - Doesn't really change for a borrower.  Therefore it won't be all that predictive.  Also default rate behaviour may change if something happens with the province.

Number of months since earliest loan - From a business perspective couldn't really explain the relationship to the value versus the default rate, so we removed it.

Total owing - doesn't like variables we don't control.  The calculation for this could change and then the variable is inconsistent over time.

### feature selection

### create scorecard

8 to 12 features is good.

Fewer is acceptable.  Want to have a good variety of variables that measure different components of risk.

Use an intercept based scorecard where the smallest point a variable bin is 0.

Also have the scorecard points to be a whole number, so no decimal places.

#### characteristic analysis

Ensure bin default rates over time don't cross in the train, test, and out of time.  If there is a rare cross and good separation otherwise it is acceptable.  Use same process as manual binning process above.

#### fit statistics

75% is industry standard for a good model.

Out of time performance is generally lower.

Gini difference of 2% or more is considered significant, although this didn't seem to be the case for behavioural.  If significant, we want to be able to explain why.

#### spearman coefficient analysis

No specified measure on this.  Can be above 70% or 50%.

If features are too correlated remove one with lowest IV.

#### vif

drop features where vif > 5

#### check benchmark performance

Looked at performance stats by quarter to see if there is seasonality.  If we have the same relative performance for a given quarter in time and out of time then seasonality is likely the cause.

Checked performance using Equifax Risk Score to see if an external score has same out of time performance drop.

Other option we didn't use.  Create scorecard on out of time, how do features compare to our model.

There may be things happening in the out of time period such as drought that are affecting model performance.

### benchmarking

### model stress testing

## other topics

### consent / non-consent

really need to be clear on the requirements

they seemed to have difficulty with the concept that we have different business partners across quarters and the business partner information needs to be looked up for the snapshot date

#### suppression reduction techniques:

fewer bins

usually easier to get bad supression approved than goods

### dealing with the business

If we demonstrate we know their business they will trust us more.

### why don't we use monthly data instead of quarterly to give us more bads?

There is more overlap of the same customers in monthly time periods where the features may not be that different across months.  This causes some bias in the data.  So quarterly is preferred for credit risk behavioural modelling.  We are dealing with auto-correlation issues.

### stakeholder review of model

Be able to answer what is industry standard for good AUC? 75%

Be able to answer why is maximal contribution different for same variable across models.  Find a better way to represent this variable.

Sometimes good to run model on subpopulations to answer questions such as how do we know the model performs on them.

Provide summary of what is painful to explain in the presentation as pre-read materials.

Connect variable values to risk such as a higher value for this variable has a higher risk of default.

## THINGS TO LOOK INTO

how do we check if variables in the model are significant?  what is p-value, chi-squared

