parameters BaseMVA /
  100
/;
set circuits(*) /
  "'BL'"
/;
set branches(*) /
  i_1
  i_2
  i_3
  i_4
  i_5
  i_6
  i_7
  i_8
  i_9
  i_10
  i_11
  i_12
  i_13
  i_14
  i_15
  i_16
  i_17
  i_18
  i_19
  i_20
/;
set buses(*) /
  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12
  13
  14
/;
set contingencies(*) /
  1
/;
set generators(*) /
  l_1
  l_2
  l_3
  l_4
  l_5
/;
set polynomialCostTerms(*) /
  m_0
  m_1
  m_2
/;
set units(*) /
  "'1 '"
/;
alias(circuits,c);
alias(branches,i);
alias(buses,j);
alias(contingencies,k);
alias(generators,l);
alias(polynomialCostTerms,m);
alias(units,u);
set ijOrigin(i,j) /
  i_1.1
  i_2.1
  i_3.2
  i_4.2
  i_5.2
  i_6.3
  i_7.4
  i_8.6
  i_9.6
  i_10.6
  i_11.7
  i_12.7
  i_13.9
  i_14.9
  i_15.10
  i_16.12
  i_17.13
  i_18.4
  i_19.4
  i_20.5
/;
set ijDestination(i,j) /
  i_1.2
  i_2.5
  i_3.3
  i_4.4
  i_5.5
  i_6.4
  i_7.5
  i_8.11
  i_9.12
  i_10.13
  i_11.8
  i_12.9
  i_13.10
  i_14.14
  i_15.11
  i_16.13
  i_17.14
  i_18.7
  i_19.9
  i_20.6
/;
set icMap(i,c) /
  i_1."'BL'"
  i_2."'BL'"
  i_3."'BL'"
  i_4."'BL'"
  i_5."'BL'"
  i_6."'BL'"
  i_7."'BL'"
  i_8."'BL'"
  i_9."'BL'"
  i_10."'BL'"
  i_11."'BL'"
  i_12."'BL'"
  i_13."'BL'"
  i_14."'BL'"
  i_15."'BL'"
  i_16."'BL'"
  i_17."'BL'"
  i_18."'BL'"
  i_19."'BL'"
  i_20."'BL'"
/;
set ljMap(l,j) /
  l_1.1
  l_2.2
  l_3.3
  l_4.6
  l_5.8
/;
set luMap(l,u) /
  l_1."'1 '"
  l_2."'1 '"
  l_3."'1 '"
  l_4."'1 '"
  l_5."'1 '"
/
set ikInactive(i,k) /
  i_9.1
/;
set lkInactive(l,k) /
/;
parameter jBaseKV(j) /
  1         100.00000000
  2         100.00000000
  3         100.00000000
  4         100.00000000
  5         100.00000000
  6         100.00000000
  7         100.00000000
  8         100.00000000
  9         100.00000000
  10         100.00000000
  11         100.00000000
  12         100.00000000
  13         100.00000000
  14         100.00000000
/;
parameter jShuntConductance(j) /
  1           0.00000000
  2           0.00000000
  3           0.00000000
  4           0.00000000
  5           0.00000000
  6           0.00000000
  7           0.00000000
  8           0.00000000
  9           0.00000000
  10           0.00000000
  11           0.00000000
  12           0.00000000
  13           0.00000000
  14           0.00000000
/;
parameter jShuntSusceptance(j) /
  1           0.00000000
  2           0.00000000
  3           0.00000000
  4           0.00000000
  5           0.00000000
  6           0.00000000
  7           0.00000000
  8           0.00000000
  9          19.00000000
  10           0.00000000
  11           0.00000000
  12           0.00000000
  13           0.00000000
  14           0.00000000
/;
parameter jVoltageMagnitudeMin(j) /
  1           0.90000000
  2           0.90000000
  3           0.90000000
  4           0.90000000
  5           0.90000000
  6           0.90000000
  7           0.90000000
  8           0.90000000
  9           0.90000000
  10           0.90000000
  11           0.90000000
  12           0.90000000
  13           0.90000000
  14           0.90000000
/;
parameter jVoltageMagnitudeMax(j) /
  1           1.10000000
  2           1.10000000
  3           1.10000000
  4           1.10000000
  5           1.10000000
  6           1.10000000
  7           1.10000000
  8           1.10000000
  9           1.10000000
  10           1.10000000
  11           1.10000000
  12           1.10000000
  13           1.10000000
  14           1.10000000
/;
parameter jRealPowerDemand(j) /
  1           0.00000000
  2          21.70000000
  3          94.20000000
  4          47.80000000
  5           7.60000000
  6          11.20000000
  7           0.00000000
  8           0.00000000
  9          29.50000000
  10           9.00000000
  11           3.50000000
  12           6.10000000
  13          13.50000000
  14          14.90000000
/;
parameter jReactivePowerDemand(j) /
  1           0.00000000
  2          12.70000000
  3          19.00000000
  4          -3.90000000
  5           1.60000000
  6           7.50000000
  7           0.00000000
  8           0.00000000
  9          16.60000000
  10           5.80000000
  11           1.80000000
  12           1.60000000
  13           5.80000000
  14           5.00000000
/;
parameter iSeriesResistance(i) /
  i_1           0.01938000
  i_2           0.05403000
  i_3           0.04699000
  i_4           0.05811000
  i_5           0.05695000
  i_6           0.06701000
  i_7           0.01335000
  i_8           0.09498000
  i_9           0.12291000
  i_10           0.06615000
  i_11           0.00000000
  i_12           0.00000000
  i_13           0.03181000
  i_14           0.12711000
  i_15           0.08205000
  i_16           0.22092000
  i_17           0.17093000
  i_18           0.00000000
  i_19           0.00000000
  i_20           0.00000000
/;
parameter iSeriesReactance(i) /
  i_1           0.05917000
  i_2           0.22304000
  i_3           0.19797000
  i_4           0.17632000
  i_5           0.17388000
  i_6           0.17103000
  i_7           0.04211000
  i_8           0.19890000
  i_9           0.25581000
  i_10           0.13027000
  i_11           0.17615000
  i_12           0.11001000
  i_13           0.08450000
  i_14           0.27038000
  i_15           0.19207000
  i_16           0.19988000
  i_17           0.34802000
  i_18           0.20912000
  i_19           0.55618000
  i_20           0.25202000
/;
parameter iChargingSusceptance(i) /
  i_1           0.05280000
  i_2           0.04920000
  i_3           0.04380000
  i_4           0.03400000
  i_5           0.03460000
  i_6           0.01280000
  i_7           0.00000000
  i_8           0.00000000
  i_9           0.00000000
  i_10           0.00000000
  i_11           0.00000000
  i_12           0.00000000
  i_13           0.00000000
  i_14           0.00000000
  i_15           0.00000000
  i_16           0.00000000
  i_17           0.00000000
  i_18           0.00000000
  i_19           0.00000000
  i_20           0.00000000
/;
parameter iTapRatio(i) /
  i_1           1.00000000
  i_2           1.00000000
  i_3           1.00000000
  i_4           1.00000000
  i_5           1.00000000
  i_6           1.00000000
  i_7           1.00000000
  i_8           1.00000000
  i_9           1.00000000
  i_10           1.00000000
  i_11           1.00000000
  i_12           1.00000000
  i_13           1.00000000
  i_14           1.00000000
  i_15           1.00000000
  i_16           1.00000000
  i_17           1.00000000
  i_18           0.97800000
  i_19           0.96900000
  i_20           0.93200000
/;
parameter iPhaseShift(i) /
  i_1           0.00000000
  i_2           0.00000000
  i_3           0.00000000
  i_4           0.00000000
  i_5           0.00000000
  i_6           0.00000000
  i_7           0.00000000
  i_8           0.00000000
  i_9           0.00000000
  i_10           0.00000000
  i_11           0.00000000
  i_12           0.00000000
  i_13           0.00000000
  i_14           0.00000000
  i_15           0.00000000
  i_16           0.00000000
  i_17           0.00000000
  i_18           0.00000000
  i_19           0.00000000
  i_20           0.00000000
/;
parameter iPowerMagnitudeMax(i) /
  i_1        9999.00000000
  i_2        9999.00000000
  i_3        9999.00000000
  i_4        9999.00000000
  i_5        9999.00000000
  i_6        9999.00000000
  i_7        9999.00000000
  i_8        9999.00000000
  i_9        9999.00000000
  i_10        9999.00000000
  i_11        9999.00000000
  i_12        9999.00000000
  i_13        9999.00000000
  i_14        9999.00000000
  i_15        9999.00000000
  i_16        9999.00000000
  i_17        9999.00000000
  i_18        9999.00000000
  i_19        9999.00000000
  i_20        9999.00000000
/;
parameter lRealPowerMin(l) /
  l_1           0.00000000
  l_2           0.00000000
  l_3           0.00000000
  l_4           0.00000000
  l_5           0.00000000
/;
parameter lRealPowerMax(l) /
  l_1        9999.00000000
  l_2        9999.00000000
  l_3        9999.00000000
  l_4        9999.00000000
  l_5        9999.00000000
/;
parameter lReactivePowerMin(l) /
  l_1       -9999.00000000
  l_2         -40.00000000
  l_3           0.00000000
  l_4          -6.00000000
  l_5          -6.00000000
/;
parameter lReactivePowerMax(l) /
  l_1       99990.00200000
  l_2          50.00000000
  l_3          40.00000000
  l_4          24.00000000
  l_5          24.00000000
/;
parameter lmRealPowerCostCoefficient(l,m) /
  l_1.m_0        1375.90000000
  l_1.m_1         140.38426140
  l_1.m_2           2.082286932
  l_2.m_0          67.90000000
  l_2.m_1           5.275836689
  l_2.m_2           0.013475833
  l_3.m_0        2576.52000000
  l_3.m_1         143.33631150
  l_3.m_2           0.049040857
  l_4.m_0          92.88000000
  l_4.m_1           4.86711941
  l_4.m_2           0.001861248
  l_5.m_0         243.33333330
  l_5.m_1         163.61812520
  l_5.m_2           1.974646976
/;
parameter lmRealPowerCostExponent(l,m) /
  l_1.m_0           0.00000000
  l_1.m_1           1.00000000
  l_1.m_2           2.00000000
  l_2.m_0           0.00000000
  l_2.m_1           1.00000000
  l_2.m_2           2.00000000
  l_3.m_0           0.00000000
  l_3.m_1           1.00000000
  l_3.m_2           2.00000000
  l_4.m_0           0.00000000
  l_4.m_1           1.00000000
  l_4.m_2           2.00000000
  l_5.m_0           0.00000000
  l_5.m_1           1.00000000
  l_5.m_2           2.00000000
/;
parameter lParticipationFactor(l) /
  l_1           5.00000000
  l_2          19.00000000
  l_3          49.25000000
  l_4          38.75000000
  l_5           3.00000000
/;