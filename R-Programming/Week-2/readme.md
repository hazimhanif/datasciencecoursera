#Introduction

For this first programming assignment you will write three functions that are meant to interact with dataset that accompanies this assignment. The dataset is contained in a zip file specdata.zip that you can download from the Coursera web site.

Although this is a programming assignment, you will be assessed using a separate quiz.

##Data

The zip file containing the data can be downloaded here:

[specdata.zip]
(https://eventing.coursera.org/api/redirectStrict/Kd1j8qTtxKa0R6fEuql4Frcedpw5Hz4hRR5Y79w444wxNX31SoBwQGrN_iM9WPsOTDvaE6dut6vSal8--me-hw.vBia6q4tDfITqzB7TUM9VA.q27KWvC_c0PQsEgsatOksg9ylRZYXGeuD73nYt2JZ2gF49ZN0suWaD0Hf70BpfYBfWRLJW8DdvrG5d6RNf0Ck6_y_PcT6pJxZShWJn-PvRb_SBILLHdl_dC2c3pRgNPiMXUzpwmtdI0YK-0s11-5vWi5kQKj9lMqxlW4xfZm5W_-n85OvNJApvXL89zwVj8sWRVl-z1RAEVmU5_RobC3DcjkQT54WYh7r_mCgCbi0pgTBs5SBkDimN4JycoS7DuFMpT-ym4AnroRX76fQWEdyc_GzuPtsvEP1NKK7moNAi-OLM6ujTFiKw2PcMFgyBoy8nMn1sMPx0jPHrU6YqRzrMG-BVY1m_xzFN_Um85M532OAg0m6VSES09TDAqm3doo)
The zip file contains 332 comma-separated-value (CSV) files containing pollution monitoring data for fine particulate matter (PM) air pollution at 332 locations in the United States. Each file contains data from a single monitor and the ID number for each monitor is contained in the file name. For example, data for monitor 200 is contained in the file "200.csv". Each file contains three variables:

Date: the date of the observation in YYYY-MM-DD format (year-month-day)
sulfate: the level of sulfate PM in the air on that date (measured in micrograms per cubic meter)
nitrate: the level of nitrate PM in the air on that date (measured in micrograms per cubic meter)
For this programming assignment you will need to unzip this file and create the directory 'specdata'. Once you have unzipped the zip file, do not make any modifications to the files in the 'specdata' directory. In each file you'll notice that there are many days where either sulfate or nitrate (or both) are missing (coded as NA). This is common with air pollution monitoring data in the United States.

## Part 1

Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows


You can see some example output from this function. The function that you write should be able to match this output. Please save your code to a file named pollutantmean.R.
[Output](https://eventing.coursera.org/api/redirectStrict/_HMJddToMq1_oLjqsmAz7D1NX8gazpuF4EFtBPoqbxAjqHiQKw7f6sg4ubhr0_IYZyBjAf3UfHEVq3LccN4o8w.KcYDSH8YQT5L6vvf4oXPSg.IRz9KA-l9hqp10oAlPqSG0sW-PIu-Sm1nT-2RsnRxj6kWPKIYnyJnzAKqa9zacdk6ForkS__9AhMwQQ8x5uN5HtWUeuG5Ew-M_AQGKzdhP-IMfIKN51KD7whLAuxN-WiOoZK8TTH61n8EnEDA41IaF06f97P1yqYoiX8VxQhOlHvmLYTtiGsMlaiREsL_zqekxsqpzZ3chgg9x22ud6UIqRJL99d_AhxseupxxeCk0TKvubVTZksnD63qU5r3E04hpULuloPyM4YHg3nUtFgncEa0ePYgm3N5qwGOeKYmaIRH9Ie7KRYaEh7R47MT4b2Wnek8H98R9-dynER38kKCG7-wWoE-8n3T8TOTyT1d7DighEraNjoumeNomBCuXqDOujv221qLH-n7ijhOx2BXBrcxyruZii6qd-jR8H0D9A)

## Part 2

Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. A prototype of this function follows


You can see some example output from this function. The function that you write should be able to match this output. Please save your code to a file named complete.R. To run the submit script for this part, make sure your working directory has the file complete.R in it.
[Output](https://eventing.coursera.org/api/redirectStrict/USVs5me9J_GTd8UY_V7oIntxhfBwZ7v1LvcaOS3H8AVauNMF5X7f-7fFOgbdHx_8D31LdnOrF80pcr0-insk6Q.drQ5rtkCvZHTEb4iglXojg.WZkQXNArqOSxgI4RSquA-_hN_XioHZt9zPYsSQYC4WIQySm8_ZmIP1HwTppdLJf3L2R_3sb-rrQ53TPc8csp36w0a3eeHf_xbWhM7iVjC8iwAxkLr4ydyemOL3GgdiOE2IK4vdxZnw9BCOywecN9OTscPDS5vpZbujMhZfTY5XAKxsfPirpyB5U-0NDOUqSY7es2W3NMpUm29leZ4iwdyfVDuJhW62atMUvkG1fb84CztazJc9xXH2fyiV36-ZLvqsOphmMJvDnJ_C87JPnd6FaJuY7PaH65-jhMo7mWnOlE8T31C68CBfoUqwVZIup8BYx_eI5gh3R0FHWHMB4EM_UyjSBjCvPC1N-A8eefEyEA4cNNmI1mtwZPdVCFlWyE3-U5gjP3wXTjltPzOaknQA)

## Part 3

Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. A prototype of this function follows


For this function you will need to use the 'cor' function in R which calculates the correlation between two vectors. Please read the help page for this function via '?cor' and make sure that you know how to use it.

You can see some example output from this function. The function that you write should be able to match this output. Please save your code to a file named corr.R. To run the submit script for this part, make sure your working directory has the file corr.R in it.
[Output](https://eventing.coursera.org/api/redirectStrict/UtJFVlcw37M2XsXldrgq6kp-CTjlFTohgr6qsxkO3rUht_GYL6whrycyjSc3P5lABzL-J5W6UAYV-QoTpwML1g._qTDQ7N2hTbEQz-xs_2JZw.jMu748f0b0sScS_ulkC-JisW8eci7Lij_SGSqrrS8GGzQNQRgZww4upHk6soZBe_tBEJ-9FVkBFKVNOC8xskPVgNhbgrODrjUYdfPsT1tDwOMRoECwWtNxSJ1y6VpstuR6_x9Y6UYGmEQ9Sq6dmWEI5od3UzVhwgLikwdzaooHUF-M0pl3eeFJSuNz80M9ya1WRSFSJSEcrEPUUQzEtjSC3Acj4GwcG_uL4jldEPzroHfZFje2NY3lGzmy7_XAX3_Q2i93XLPY0JZYWTZtjWvoemL1NRX2TJrJ1EGY5wOgVgcSDUZ6Zl6BmB8zwcXlhbiDnm8xPIoj124encrf0NI1z-1Xb0yQ_aKEtqUxB8Ln4q10EdxdsXcPOb8fm3AGjr)

This assignment is about correlation. Find more info about correlation on:
(https://www.mathsisfun.com/data/correlation.html)

Note: Do not round any of the results
##Grading

This assignment will be graded using a quiz.
