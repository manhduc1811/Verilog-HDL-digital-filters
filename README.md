# Verilog-HDL-digital-filters

Digital filters (FIR/ IIR) simulation by Matlab FDA tool and Verilog HDL

#20210106-NOTE:
* Linear filter:        for example "mean filter" is linear filter.
* Non-linear filter:    for example "median filter" is non-linear filter.

#What is the difference?
* Fi(a+b) = Fi(a) + Fi(b), then Fi is called linear filter.
* Hence, 
         * mean = (x1 + ...+ xN)/N; 
         * median:
                  * y1 = med(2, 3, 80) = 3,
                  * y2 = med(3, 80, 6) = med(3, 6, 80) = 6,
                  * y3 = med(80, 6, 2) = med(2, 6, 80) = 6,
                  * y4 = med(6, 2, 3) = med(2, 3, 6) = 3,
 #mducng
