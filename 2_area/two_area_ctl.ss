#V3.30.07.01-safe;_2017_08_07;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
#C Logistic, asymptotic selectivity do age comp better informs about movement
#_data_and_control_files: two_area_dat.ss // two_area_ctl.ss
#V3.30.07.01-safe;_2017_08_07;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11.6
#_user_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_user_info_available_at:https://vlab.ncep.noaa.gov/group/stock-synthesis
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and also read and use growth parameters
1  #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
3 # recr_dist_method for parameters:  2=main effects for GP, Area, Settle timing; 3=each Settle entity
1 # not yet implemented; Future usage: Spawner-Recruitment: 1=global; 2=by area
2 #  number of recruitment settlement assignments 
0 # unused option
#GPattern month  area  age (for each settlement assignment)
 1 1 1 0
 1 1 2 0
#
2 #_N_movement_definitions
1 # first age that moves (real age at begin of season, not integer)
# seas,GP,source_area,dest_area,minage,maxage
 1 1 1 2 1 10
 1 1 2 1 1 10
#
1 #_Nblock_Patterns
 1 #_blocks_per_pattern 
# begin and end years of blocks
 1944 1944
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#  autogen
1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
# 
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement 
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K; 4=not implemented
1.66 #_Growth_Age_for_L1
25 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (fixed at 0.2 in 3.24; value should approx initial Z; -999 replicates 3.24)
0  #_placeholder for future growth feature
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
3 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_ LO HI INIT PRIOR PR_SD PR_type PHASE env_var&link dev_link dev_minyr dev_maxyr dev_PH Block Block_Fxn
 0.01 0.1 0.15 0.15 0.007 6 -3 0 0 0 0 0.5 0 0 # NatM_p_1_Fem_GP_1
 10 45 20 38.5 5 6 -3 0 0 0 0 0.5 0 0 # L_at_Amin_Fem_GP_1
 40 90 80 66.795 5 6 -3 0 0 0 0 0.5 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.4 0.16 0.21 0.5 6 -4 0 0 0 0 0.5 0 0 # VonBert_K_Fem_GP_1
 0.02 0.2 0.06 0.06 0.5 6 -4 0 0 0 0 0.5 0 0 # CV_young_Fem_GP_1
 0.02 0.2 0.06 0.06 99 6 -6 0 0 0 0 0.5 0 0 # CV_old_Fem_GP_1
 0 1 2.44e-06 2.44e-06 0.8 6 -2 0 0 0 0 0.5 0 0 # Wtlen_1_Fem
 0 4 3.34694 3.34694 0.8 6 -2 0 0 0 0 0.5 0 0 # Wtlen_2_Fem
 55 55 55 55 0.8 6 -2 0 0 0 0 0.5 0 0 # Mat50%_Fem
 -3 3 -0.25 -0.25 0.8 6 -2 0 0 0 0 0.5 0 0 # Mat_slope_Fem
 -3 3 1 1 0.8 6 -2 0 0 0 0 0.5 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 0.8 6 -2 0 0 0 0 0.5 0 0 # Eggs/kg_slope_wt_Fem
 0.01 0.1 0.15 0.15 0.007 6 -3 0 0 0 0 0.5 0 0 # NatM_p_1_Mal_GP_1
 10 45 20 38.5 5 6 -3 0 0 0 0 0.5 0 0 # L_at_Amin_Mal_GP_1
 40 90 80 66.795 5 6 -3 0 0 0 0 0.5 0 0 # L_at_Amax_Mal_GP_1
 0.05 0.4 0.16 0.21 0.5 6 -4 0 0 0 0 0.5 0 0 # VonBert_K_Mal_GP_1
 0.02 0.2 0.06 0.06 0.5 6 -4 0 0 0 0 0.5 0 0 # CV_young_Mal_GP_1
 0.02 0.2 0.06 0.06 99 6 -6 0 0 0 0 0.5 0 0 # CV_old_Mal_GP_1
 0 1 2.44e-06 2.44e-06 0.8 6 -2 0 0 0 0 0.5 0 0 # Wtlen_1_Mal
 0 4 3.34694 3.34694 0.8 6 -2 0 0 0 0 0.5 0 0 # Wtlen_2_Mal
 -4 4 0 0 99 0 -1 0 0  0    0   0.5 0 0 # RecrDist_GP_1_area_1_month_1
 -4 4 0 0 99 0  2 0 2 1960 2017   4 0 0 # RecrDist_GP_1_area_2_month_1
 1 1 1 1 1 0 -1 0 0 0 0 0 0 0 # CohortGrowDev
 -7 4 -6 0 99 0 -1 0 0 0 0 0.5 0 0 # MoveParm_A_seas_1_GP_1from_1to_2
 -7 4 -6 0 99 0 -1 0 0 0 0 0.5 0 0 # MoveParm_B_seas_1_GP_1from_1to_2
 -7 4 -6 0 99 0 -1 0 0 0 0 0.5 0 0 # MoveParm_A_seas_1_GP_1from_2to_1
 -7 4 -6 0 99 0 -1 0 0 0 0 0.5 0 0 # MoveParm_B_seas_1_GP_1from_2to_1
 1e-06 0.999999 0.5 0.5 0.5 0 -99 0 0 0 0 0 0 0 # FracFemale_GP_1
#
# timevary MG parameters 
#_ LO HI INIT PRIOR PR_SD PR_type  PHASE
 0.0001 2 0.5 0.5 0.5 6 -5 # RecrDist_GP_1_area_2_month_1_dev_se
   -0.99 0.99 0 0 0.5 6 -6 # RecrDist_GP_1_area_2_month_1_dev_autocorr
# info on dev vectors created for MGparms are reported with other devs after tag parameter section 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm; 8=Shepard_3Parm
0  # 0/1 to use steepness in initial equ recruitment calculation
0  #  future feature:  0/1 to make realized sigmaR a function of SR curvature
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn #  parm_name
             8            12            11           9.2            99             6          1          0          0          0          0          0          0          0 # SR_LN(R0)
           0.2             1      0.999999           0.6            99             6         -2          0          0          0          0          0          0          0 # SR_BH_steep
           0.2           1.5           0.5           0.5             1             6         -5          0          0          0          0          0          0          0 # SR_sigmaR
            -5             5             0             0            99             6         -6          0          0          0          0          0          0          0 # SR_regime
             0             2             0            -1             1             6         -3          0          0          0          0          0          0          0 # SR_autocorr
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1950 # first year of main recr_devs; early devs can preceed this era
2017 # last year of main recr_devs; forecast devs start in following year
3 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -4 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 945 #_last_early_yr_nobias_adj_in_MPD
 1940 #_first_yr_fullbias_adj_in_MPD
 2017 #_last_yr_fullbias_adj_in_MPD
 2018 #_first_recent_yr_nobias_adj_in_MPD
 0.0 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#  1950R 1951R 1952R 1953R 1954R 1955R 1956R 1957R 1958R 1959R 1960R 1961R 1962R 1963R 1964R 1965R 1966R 1967R 1968R 1969R 1970R 1971R 1972R 1973R 1974R 1975R 1976R 1977R 1978R 1979R 1980R 1981R 1982R 1983R 1984R 1985R 1986R 1987R 1988R 1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 2002R 2003R 2004R 2005R 2006R 2007R 2008F 2009F 2010F 2011F 2012F 2013F 2014F 2015F 2016F 2017F 2018F 2019F 2020F
#  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# implementation error by year in forecast:  0 0 0
#
#Fishing Mortality info 
0.02 # F ballpark
2000 # F ballpark year (neg value to disable)
2 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
1.5 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
 0.07 1 0 # overall start F value; overall phase; N detailed inputs to read
#Fleet Yr Seas F_value se phase (for detailed setup of F_Method=2; -Yr to fill remaining years)
#
#_initial_F_parms; count = 0
#_ LO HI INIT PRIOR PR_SD  PR_type  PHASE
#2020 2038
# F rates by fleet
# Yr:  1945 1946 1947 1948 1949 1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020
# seas:  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# Area1_Comm 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.0720151 0.0720151 0.0720151
# Area2_Comm 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.07 0.0720151 0.0720151 0.0720151
#
#_Q_setup
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
         1         1         0         0         0         0  #  Area1_Comm
         2         1         0         0         0         0  #  Area2_Comm
         3         1         0         0         0         0  #  Depletion
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
           -15            15      -2.66968             0             1             0          1          0          0          0          0          0          0          0  #  LnQ_base_Area1_Comm(1)
           -15            15      -2.66968             0             1             0          1          0          0          0          0          0          0          0  #  LnQ_base_Area2_Comm(2)
           -15            15             0             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_Depletion(3)
#_no timevary Q parameters
#
#_size_selex_types
#_discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead;_4=define_dome-shaped_retention
#_Pattern Discard Male Special
 1 0 0 0 # 1 Area1_Comm
 1 0 0 0 # 2 Area2_Comm
 0 0 0 0 # 3 Depletion
#
#_age_selex_types
#_Pattern Discard Male Special
 10 0 0 0 # 1 Area1_Comm
 10 0 0 0 # 2 Area2_Comm
 10 0 0 0 # 3 Depletion
#
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
             1            80            40            55            99             6          3          0          0          0          0        0.5          0          0  #  SizeSel_P1_Area1_Comm(1)
             0            60            10            10            99             6          4          0          0          0          0        0.5          0          0  #  SizeSel_P2_Area1_Comm(1)
             1            80            40            55            99             6          3          0          0          0          0        0.5          0          0  #  SizeSel_P1_Area2_Comm(2)
             0            60            10            10            99             6          4          0          0          0          0        0.5          0          0  #  SizeSel_P2_Area2_Comm(2)
#_no timevary selex parameters
#
0   #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# deviation vectors for timevary parameters
#  base   base first block   block  env  env   dev   dev   dev   dev   dev
#  type  index  parm trend pattern link  var  vectr link _mnyr  mxyr phase  dev_vector
#      1    22     1     0     0     0     0     1     2  1960  2017    -3      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0
     #
# Input variance adjustments factors: 
 #_1=add_to_survey_CV
 #_2=add_to_discard_stddev
 #_3=add_to_bodywt_CV
 #_4=mult_by_lencomp_N
 #_5=mult_by_agecomp_N
 #_6=mult_by_size-at-age_N
 #_7=mult_by_generalized_sizecomp
#_Factor  Fleet  Value
 -9999   1    0  # terminator
#
2 #_maxlambdaphase
1 #_sd_offset
# read 1 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin; 17=F_ballpark
#like_comp fleet  phase  value  sizefreq_method
 1 3 1 1e-05 1
-9999  1  1  1  1  #  terminator
#
# lambdas (for info only; columns are phases)
#  0 1 #_CPUE/survey:_1
#  0 1 #_CPUE/survey:_2
#  1e-05 1e-05 #_CPUE/survey:_3
#  0 1 #_lencomp:_1
#  0 1 #_lencomp:_2
#  0 0 #_lencomp:_3
#  0 1 #_agecomp:_1
#  0 1 #_agecomp:_2
#  0 0 #_agecomp:_3
#  0 1 #_init_equ_catch
#  0 1 #_recruitments
#  1 1 #_parameter-priors
#  1 1 #_parameter-dev-vectors
#  1 1 #_crashPenLambda
#  0 1 # F_ballpark_lambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

