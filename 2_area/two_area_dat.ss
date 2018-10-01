#V3.30.07.01-safe;_2017_08_07;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
#_user_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_user_info_available_at:https://vlab.ncep.noaa.gov/group/stock-synthesis
#_Start_time: Wed Aug  9 13:50:26 2017
#_Number_of_datafiles: 3

#_observed data: 
#V3.30.07.01-safe;_2017_08_07;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
1945 #_StartYr
2017 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Ngenders
40 #_Nages=accumulator age
2 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=ignore 
#_survey_timing: -1=for use of catch-at-age to override the month value associated with a datum 
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type timing area units need_catch_mult fleetname
 1 -1 1 1 0 Area1_Comm  # 1
 1 -1 2 1 0 Area2_Comm  # 2
 3 1 1 1 0 Depletion  # 3
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch)
#_NOTE:  catch data is ignored for survey fleets
-999 1 1 0 0
1945 1 1 0 0
1946 1 1 0 0
1947 1 1 0 0
1948 1 1 0 0
1949 1 1 0 0
1950 1 1 0 0
1951 1 1 0 0
1952 1 1 0 0
1953 1 1 0 0
1954 1 1 0 0
1955 1 1 0 0
1956 1 1 0 0
1957 1 1 0 0
1958 1 1 0 0
1959 1 1 0 0
1960 1 1 0 0.02
1961 1 1 19932.6 0.05
1962 1 1 18650.5 0.05
1963 1 1 17508.2 0.05
1964 1 1 16506.4 0.05
1965 1 1 15639.1 0.05
1966 1 1 14896.4 0.05
1967 1 1 14266.3 0.05
1968 1 1 13736 0.05
1969 1 1 13292.8 0.05
1970 1 1 12924.5 0.05
1971 1 1 12620.1 0.05
1972 1 1 12369.6 0.05
1973 1 1 12164.2 0.05
1974 1 1 11996.3 0.05
1975 1 1 11859.4 0.05
1976 1 1 11748.2 0.05
1977 1 1 11657.8 0.05
1978 1 1 11584.7 0.05
1979 1 1 11525.5 0.05
1980 1 1 11477.6 0.05
1981 1 1 11439 0.05
1982 1 1 11407.8 0.05
1983 1 1 11382.7 0.05
1984 1 1 11362.5 0.05
1985 1 1 11346.2 0.05
1986 1 1 11333.1 0.05
1987 1 1 11322.6 0.05
1988 1 1 11314.1 0.05
1989 1 1 11307.3 0.05
1990 1 1 11301.9 0.05
1991 1 1 11297.5 0.05
1992 1 1 11294 0.05
1993 1 1 11291.1 0.05
1994 1 1 11288.8 0.05
1995 1 1 11287 0.05
1996 1 1 11285.5 0.05
1997 1 1 11284.4 0.05
1998 1 1 11283.4 0.05
1999 1 1 11282.7 0.05
2000 1 1 11282.1 0.05
2001 1 1 11281.6 0.05
2002 1 1 11281.2 0.05
2003 1 1 11280.9 0.05
2004 1 1 11280.6 0.05
2005 1 1 11280.4 0.05
2006 1 1 11280.2 0.05
2007 1 1 11280.1 0.05
2008 1 1 11280 0.05
2009 1 1 11279.9 0.05
2010 1 1 11279.9 0.05
2011 1 1 11279.8 0.05
2012 1 1 11279.8 0.05
2013 1 1 11279.7 0.05
2014 1 1 11279.7 0.05
2015 1 1 11279.7 0.05
2016 1 1 11279.7 0.05
2017 1 1 11279.6 0.05
-999 1 2 0 0
1945 1 2 0 0
1946 1 2 0 0
1947 1 2 0 0
1948 1 2 0 0
1949 1 2 0 0
1950 1 2 0 0
1951 1 2 0 0
1952 1 2 0 0
1953 1 2 0 0
1954 1 2 0 0
1955 1 2 0 0
1956 1 2 0 0
1957 1 2 0 0
1958 1 2 0 0
1959 1 2 0 0
1960 1 2 0 0.02
1961 1 2 19932.6 0.05
1962 1 2 18650.5 0.05
1963 1 2 17508.2 0.05
1964 1 2 16506.4 0.05
1965 1 2 15639.1 0.05
1966 1 2 14896.4 0.05
1967 1 2 14266.3 0.05
1968 1 2 13736 0.05
1969 1 2 13292.8 0.05
1970 1 2 12924.5 0.05
1971 1 2 12620.1 0.05
1972 1 2 12369.6 0.05
1973 1 2 12164.2 0.05
1974 1 2 11996.3 0.05
1975 1 2 11859.4 0.05
1976 1 2 11748.2 0.05
1977 1 2 11657.8 0.05
1978 1 2 11584.7 0.05
1979 1 2 11525.5 0.05
1980 1 2 11477.6 0.05
1981 1 2 11439 0.05
1982 1 2 11407.8 0.05
1983 1 2 11382.7 0.05
1984 1 2 11362.5 0.05
1985 1 2 11346.2 0.05
1986 1 2 11333.1 0.05
1987 1 2 11322.6 0.05
1988 1 2 11314.1 0.05
1989 1 2 11307.3 0.05
1990 1 2 11301.9 0.05
1991 1 2 11297.5 0.05
1992 1 2 11294 0.05
1993 1 2 11291.1 0.05
1994 1 2 11288.8 0.05
1995 1 2 11287 0.05
1996 1 2 11285.5 0.05
1997 1 2 11284.4 0.05
1998 1 2 11283.4 0.05
1999 1 2 11282.7 0.05
2000 1 2 11282.1 0.05
2001 1 2 11281.6 0.05
2002 1 2 11281.2 0.05
2003 1 2 11280.9 0.05
2004 1 2 11280.6 0.05
2005 1 2 11280.4 0.05
2006 1 2 11280.2 0.05
2007 1 2 11280.1 0.05
2008 1 2 11280 0.05
2009 1 2 11279.9 0.05
2010 1 2 11279.9 0.05
2011 1 2 11279.8 0.05
2012 1 2 11279.8 0.05
2013 1 2 11279.7 0.05
2014 1 2 11279.7 0.05
2015 1 2 11279.7 0.05
2016 1 2 11279.7 0.05
2017 1 2 11279.6 0.05
-9999 0 0 0 0

 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Area1_Comm
2 1 0 0 # Area2_Comm
3 34 0 0 # Depletion
#_yr month fleet obs stderr
1960 7 1 26274.3 0.3 #_orig_obs: 20063.3 Area1_Comm
1961 7 1 28816.2 0.3 #_orig_obs: 19136 Area1_Comm
1962 7 1 15156.5 0.3 #_orig_obs: 17403.1 Area1_Comm
1963 7 1 13083.6 0.3 #_orig_obs: 15904.2 Area1_Comm
1964 7 1 31486.2 0.3 #_orig_obs: 14628 Area1_Comm
1965 7 1 16570.3 0.3 #_orig_obs: 13555.6 Area1_Comm
1966 7 1 9971.33 0.3 #_orig_obs: 12664.2 Area1_Comm
1967 7 1 17082.8 0.3 #_orig_obs: 11930.1 Area1_Comm
1968 7 1 10138.4 0.3 #_orig_obs: 11330.5 Area1_Comm
1969 7 1 16579.9 0.3 #_orig_obs: 10844.1 Area1_Comm
1970 7 1 8814.45 0.3 #_orig_obs: 10451.8 Area1_Comm
1971 7 1 11489.9 0.3 #_orig_obs: 10137.2 Area1_Comm
1972 7 1 17432.5 0.3 #_orig_obs: 9885.83 Area1_Comm
1973 7 1 18945.4 0.3 #_orig_obs: 9685.82 Area1_Comm
1974 7 1 9905.9 0.3 #_orig_obs: 9527.18 Area1_Comm
1975 7 1 7493.93 0.3 #_orig_obs: 9401.68 Area1_Comm
1976 7 1 14069 0.3 #_orig_obs: 9302.64 Area1_Comm
1977 7 1 18144.7 0.3 #_orig_obs: 9224.63 Area1_Comm
1978 7 1 19099.8 0.3 #_orig_obs: 9163.29 Area1_Comm
1979 7 1 9748.02 0.3 #_orig_obs: 9115.12 Area1_Comm
1980 7 1 12977.6 0.3 #_orig_obs: 9077.35 Area1_Comm
1981 7 1 12639.9 0.3 #_orig_obs: 9047.76 Area1_Comm
1982 7 1 11412.2 0.3 #_orig_obs: 9024.61 Area1_Comm
1983 7 1 14619.4 0.3 #_orig_obs: 9006.49 Area1_Comm
1984 7 1 11825.9 0.3 #_orig_obs: 8992.34 Area1_Comm
1985 7 1 14950.5 0.3 #_orig_obs: 8981.28 Area1_Comm
1986 7 1 8320.5 0.3 #_orig_obs: 8972.64 Area1_Comm
1987 7 1 12993.1 0.3 #_orig_obs: 8965.9 Area1_Comm
1988 7 1 9632.13 0.3 #_orig_obs: 8960.64 Area1_Comm
1989 7 1 18375.7 0.3 #_orig_obs: 8956.54 Area1_Comm
1990 7 1 13401.3 0.3 #_orig_obs: 8953.34 Area1_Comm
1991 7 1 11860.8 0.3 #_orig_obs: 8950.85 Area1_Comm
1992 7 1 14729 0.3 #_orig_obs: 8948.9 Area1_Comm
1993 7 1 9455.5 0.3 #_orig_obs: 8947.39 Area1_Comm
1994 7 1 12559.5 0.3 #_orig_obs: 8946.21 Area1_Comm
1995 7 1 13089.9 0.3 #_orig_obs: 8945.29 Area1_Comm
1996 7 1 15620.8 0.3 #_orig_obs: 8944.57 Area1_Comm
1997 7 1 16251.2 0.3 #_orig_obs: 8944.01 Area1_Comm
1998 7 1 7902.33 0.3 #_orig_obs: 8943.58 Area1_Comm
1999 7 1 17515.8 0.3 #_orig_obs: 8943.24 Area1_Comm
2000 7 1 12832.6 0.3 #_orig_obs: 8942.98 Area1_Comm
2001 7 1 10795 0.3 #_orig_obs: 8942.77 Area1_Comm
2002 7 1 14883.9 0.3 #_orig_obs: 8942.61 Area1_Comm
2003 7 1 11636.3 0.3 #_orig_obs: 8942.49 Area1_Comm
2004 7 1 7514.59 0.3 #_orig_obs: 8942.39 Area1_Comm
2005 7 1 16851.4 0.3 #_orig_obs: 8942.31 Area1_Comm
2006 7 1 11433.1 0.3 #_orig_obs: 8942.25 Area1_Comm
2007 7 1 11503.3 0.3 #_orig_obs: 8942.21 Area1_Comm
2008 7 1 12536.1 0.3 #_orig_obs: 8942.17 Area1_Comm
2009 7 1 10110.4 0.3 #_orig_obs: 8942.15 Area1_Comm
2010 7 1 11281 0.3 #_orig_obs: 8942.12 Area1_Comm
2011 7 1 11571.3 0.3 #_orig_obs: 8942.11 Area1_Comm
2012 7 1 17547.7 0.3 #_orig_obs: 8942.09 Area1_Comm
2013 7 1 18486.1 0.3 #_orig_obs: 8942.08 Area1_Comm
2014 7 1 14785.2 0.3 #_orig_obs: 8942.08 Area1_Comm
2015 7 1 5344.49 0.3 #_orig_obs: 8942.07 Area1_Comm
2016 7 1 12425.7 0.3 #_orig_obs: 8942.06 Area1_Comm
2017 7 1 10975.6 0.3 #_orig_obs: 8942.06 Area1_Comm
1960 7 2 26274.3 0.3 #_orig_obs: 20063.3 Area1_Comm
1961 7 2 28816.2 0.3 #_orig_obs: 19136 Area1_Comm
1962 7 2 15156.5 0.3 #_orig_obs: 17403.1 Area1_Comm
1963 7 2 13083.6 0.3 #_orig_obs: 15904.2 Area1_Comm
1964 7 2 31486.2 0.3 #_orig_obs: 14628 Area1_Comm
1965 7 2 16570.3 0.3 #_orig_obs: 13555.6 Area1_Comm
1966 7 2 9971.33 0.3 #_orig_obs: 12664.2 Area1_Comm
1967 7 2 17082.8 0.3 #_orig_obs: 11930.1 Area1_Comm
1968 7 2 10138.4 0.3 #_orig_obs: 11330.5 Area1_Comm
1969 7 2 16579.9 0.3 #_orig_obs: 10844.1 Area1_Comm
1970 7 2 8814.45 0.3 #_orig_obs: 10451.8 Area1_Comm
1971 7 2 11489.9 0.3 #_orig_obs: 10137.2 Area1_Comm
1972 7 2 17432.5 0.3 #_orig_obs: 9885.83 Area1_Comm
1973 7 2 18945.4 0.3 #_orig_obs: 9685.82 Area1_Comm
1974 7 2 9905.9 0.3 #_orig_obs: 9527.18 Area1_Comm
1975 7 2 7493.93 0.3 #_orig_obs: 9401.68 Area1_Comm
1976 7 2 14069 0.3 #_orig_obs: 9302.64 Area1_Comm
1977 7 2 18144.7 0.3 #_orig_obs: 9224.63 Area1_Comm
1978 7 2 19099.8 0.3 #_orig_obs: 9163.29 Area1_Comm
1979 7 2 9748.02 0.3 #_orig_obs: 9115.12 Area1_Comm
1980 7 2 12977.6 0.3 #_orig_obs: 9077.35 Area1_Comm
1981 7 2 12639.9 0.3 #_orig_obs: 9047.76 Area1_Comm
1982 7 2 11412.2 0.3 #_orig_obs: 9024.61 Area1_Comm
1983 7 2 14619.4 0.3 #_orig_obs: 9006.49 Area1_Comm
1984 7 2 11825.9 0.3 #_orig_obs: 8992.34 Area1_Comm
1985 7 2 14950.5 0.3 #_orig_obs: 8981.28 Area1_Comm
1986 7 2 8320.5 0.3 #_orig_obs: 8972.64 Area1_Comm
1987 7 2 12993.1 0.3 #_orig_obs: 8965.9 Area1_Comm
1988 7 2 9632.13 0.3 #_orig_obs: 8960.64 Area1_Comm
1989 7 2 18375.7 0.3 #_orig_obs: 8956.54 Area1_Comm
1990 7 2 13401.3 0.3 #_orig_obs: 8953.34 Area1_Comm
1991 7 2 11860.8 0.3 #_orig_obs: 8950.85 Area1_Comm
1992 7 2 14729 0.3 #_orig_obs: 8948.9 Area1_Comm
1993 7 2 9455.5 0.3 #_orig_obs: 8947.39 Area1_Comm
1994 7 2 12559.5 0.3 #_orig_obs: 8946.21 Area1_Comm
1995 7 2 13089.9 0.3 #_orig_obs: 8945.29 Area1_Comm
1996 7 2 15620.8 0.3 #_orig_obs: 8944.57 Area1_Comm
1997 7 2 16251.2 0.3 #_orig_obs: 8944.01 Area1_Comm
1998 7 2 7902.33 0.3 #_orig_obs: 8943.58 Area1_Comm
1999 7 2 17515.8 0.3 #_orig_obs: 8943.24 Area1_Comm
2000 7 2 12832.6 0.3 #_orig_obs: 8942.98 Area1_Comm
2001 7 2 10795 0.3 #_orig_obs: 8942.77 Area1_Comm
2002 7 2 14883.9 0.3 #_orig_obs: 8942.61 Area1_Comm
2003 7 2 11636.3 0.3 #_orig_obs: 8942.49 Area1_Comm
2004 7 2 7514.59 0.3 #_orig_obs: 8942.39 Area1_Comm
2005 7 2 16851.4 0.3 #_orig_obs: 8942.31 Area1_Comm
2006 7 2 11433.1 0.3 #_orig_obs: 8942.25 Area1_Comm
2007 7 2 11503.3 0.3 #_orig_obs: 8942.21 Area1_Comm
2008 7 2 12536.1 0.3 #_orig_obs: 8942.17 Area1_Comm
2009 7 2 10110.4 0.3 #_orig_obs: 8942.15 Area1_Comm
2010 7 2 11281 0.3 #_orig_obs: 8942.12 Area1_Comm
2011 7 2 11571.3 0.3 #_orig_obs: 8942.11 Area1_Comm
2012 7 2 17547.7 0.3 #_orig_obs: 8942.09 Area1_Comm
2013 7 2 18486.1 0.3 #_orig_obs: 8942.08 Area1_Comm
2014 7 2 14785.2 0.3 #_orig_obs: 8942.08 Area1_Comm
2015 7 2 5344.49 0.3 #_orig_obs: 8942.07 Area1_Comm
2016 7 2 12425.7 0.3 #_orig_obs: 8942.06 Area1_Comm
2017 7 2 10975.6 0.3 #_orig_obs: 8942.06 Area1_Comm
2017  7  3   0.3  0.3
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note, only have units and errtype for fleets with discard 
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  use positive partition value for mean body wt, negative partition for mean body length 
#_yr month fleet part obs stderr
#  -9999 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
2 # minimum size in the population (lower edge of first bin and size at age 0.00) 
90 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0.0001 0.0001 0 0 0 0 1 #_fleet:1_Area1_Comm
0.0001 0.0001 0 0 0 0 1 #_fleet:2_Area2_Comm
0.0001 0.0001 0 0 0 0 1 #_fleet:3_Depletion
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
31 #_N_LengthBins; then enter lower edge of each length bin
 20 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
#_yr month fleet sex part Nsamp datavector(female-male)
 2017 7 1 3 0 100  0 0 2 1 0 4 1 2 3 1 2 1 4 4 1 4 4 2 4 1 2 3 1 1 3 0 0 1 0 0 0 1 0 1 1 2 0 2 3 2 2 4 1 3 1 1 0 4 4 5 4 0 0 3 3 0 0 0 0 0 1 0
 2017 7 2 3 0 100  0 0 2 1 0 4 1 2 3 1 2 1 4 4 1 4 4 2 4 1 2 3 1 1 3 0 0 1 0 0 0 1 0 1 1 2 0 2 3 2 2 4 1 3 1 1 0 4 4 5 4 0 0 3 3 0 0 0 0 0 1 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
25 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5 21.5 22.5 23.5 24.5 25.5 26.5 27.5 28.5 29.5 30.5 31.5 32.5 33.5 34.5 35.5 36.5 37.5 38.5 39.5 40.5
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0.0001 0.0001 0 0 0 0 1 #_fleet:1_Area1_Comm
0.0001 0.0001 0 0 0 0 1 #_fleet:2_Area2_Comm
0.0001 0.0001 0 0 0 0 1 #_fleet:3_Depletion
2 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
2017  7 1  3 0 1 -1 -25 100  0 1 2 12 10 6 5 4 2 1 0 0 2 1 0 0 0 0 1 0 0 1 0 0 0 0 0 2 15 4 4 1 4 8 2 1 3 2 1 2 1 1 0 0 1 0 0 0 0 0
2017  7 2  3 0 1 -1 -25 100  0 1 2 12 10 6 5 4 2 1 0 0 2 1 0 0 0 0 1 0 0 1 0 0 0 0 0 2 15 4 4 1 4 8 2 1 3 2 1 2 1 1 0 0 1 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999
