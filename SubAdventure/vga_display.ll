Revision 3
; Created by bitgen O.76xd at Tue Apr 16 14:22:42 2013
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Bit   185120 0x0006001c      0 Block=OLOGIC_X4Y0 Type=DRP
Bit   185121 0x0006001c      1 Block=OLOGIC_X4Y0 Type=DRP
Bit   185122 0x0006001c      2 Block=OLOGIC_X4Y0 Type=DRP
Bit   185123 0x0006001c      3 Block=OLOGIC_X4Y0 Type=DRP
Bit   185124 0x0006001c      4 Block=OLOGIC_X4Y0 Type=DRP
Bit   185125 0x0006001c      5 Block=OLOGIC_X4Y0 Type=DRP
Bit   185126 0x0006001c      6 Block=OLOGIC_X4Y0 Type=DRP
Bit   185127 0x0006001c      7 Block=OLOGIC_X4Y0 Type=DRP
Bit   185128 0x0006001c      8 Block=OLOGIC_X4Y0 Type=DRP
Bit   185129 0x0006001c      9 Block=OLOGIC_X4Y0 Type=DRP
Bit   185130 0x0006001c     10 Block=OLOGIC_X4Y0 Type=DRP
Bit   185131 0x0006001c     11 Block=OLOGIC_X4Y0 Type=DRP
Bit   185132 0x0006001c     12 Block=OLOGIC_X4Y0 Type=DRP
Bit   185133 0x0006001c     13 Block=OLOGIC_X4Y0 Type=DRP
Bit   185134 0x0006001c     14 Block=OLOGIC_X4Y0 Type=DRP
Bit   185135 0x0006001c     15 Block=OLOGIC_X4Y0 Type=DRP
Bit   185136 0x0006001c     16 Block=OLOGIC_X4Y0 Type=DRP
Bit   185137 0x0006001c     17 Block=OLOGIC_X4Y0 Type=DRP
Bit   185138 0x0006001c     18 Block=OLOGIC_X4Y0 Type=DRP
Bit   185139 0x0006001c     19 Block=OLOGIC_X4Y0 Type=DRP
Bit   185140 0x0006001c     20 Block=OLOGIC_X4Y0 Type=DRP
Bit   185141 0x0006001c     21 Block=OLOGIC_X4Y0 Type=DRP
Bit   185142 0x0006001c     22 Block=OLOGIC_X4Y0 Type=DRP
Bit   185143 0x0006001c     23 Block=OLOGIC_X4Y0 Type=DRP
Bit   185144 0x0006001c     24 Block=OLOGIC_X4Y0 Type=DRP
Bit   185145 0x0006001c     25 Block=OLOGIC_X4Y0 Type=DRP
Bit   185146 0x0006001c     26 Block=OLOGIC_X4Y0 Type=DRP
Bit   185147 0x0006001c     27 Block=OLOGIC_X4Y0 Type=DRP
Bit   185151 0x0006001c     31 Block=OLOGIC_X4Y0 Type=DRP
Bit   185152 0x0006001c     32 Block=OLOGIC_X4Y0 Type=DRP
Bit   185156 0x0006001c     36 Block=OLOGIC_X4Y0 Type=DRP
Bit   185157 0x0006001c     37 Block=OLOGIC_X4Y0 Type=DRP
Bit   185158 0x0006001c     38 Block=OLOGIC_X4Y0 Type=DRP
Bit   185159 0x0006001c     39 Block=OLOGIC_X4Y0 Type=DRP
Bit   185160 0x0006001c     40 Block=OLOGIC_X4Y0 Type=DRP
Bit   185161 0x0006001c     41 Block=OLOGIC_X4Y0 Type=DRP
Bit   185162 0x0006001c     42 Block=OLOGIC_X4Y0 Type=DRP
Bit   185163 0x0006001c     43 Block=OLOGIC_X4Y0 Type=DRP
Bit   185164 0x0006001c     44 Block=OLOGIC_X4Y0 Type=DRP
Bit   185165 0x0006001c     45 Block=OLOGIC_X4Y0 Type=DRP
Bit   185166 0x0006001c     46 Block=OLOGIC_X4Y0 Type=DRP
Bit   185167 0x0006001c     47 Block=OLOGIC_X4Y0 Type=DRP
Bit   185168 0x0006001c     48 Block=OLOGIC_X4Y0 Type=DRP
Bit   185169 0x0006001c     49 Block=OLOGIC_X4Y0 Type=DRP
Bit   185170 0x0006001c     50 Block=OLOGIC_X4Y0 Type=DRP
Bit   185171 0x0006001c     51 Block=OLOGIC_X4Y0 Type=DRP
Bit   185172 0x0006001c     52 Block=OLOGIC_X4Y0 Type=DRP
Bit   185173 0x0006001c     53 Block=OLOGIC_X4Y0 Type=DRP
Bit   185174 0x0006001c     54 Block=OLOGIC_X4Y0 Type=DRP
Bit   185175 0x0006001c     55 Block=OLOGIC_X4Y0 Type=DRP
Bit   185176 0x0006001c     56 Block=OLOGIC_X4Y0 Type=DRP
Bit   185177 0x0006001c     57 Block=OLOGIC_X4Y0 Type=DRP
Bit   185178 0x0006001c     58 Block=OLOGIC_X4Y0 Type=DRP
Bit   185179 0x0006001c     59 Block=OLOGIC_X4Y0 Type=DRP
Bit   185180 0x0006001c     60 Block=OLOGIC_X4Y0 Type=DRP
Bit   185181 0x0006001c     61 Block=OLOGIC_X4Y0 Type=DRP
Bit   185182 0x0006001c     62 Block=OLOGIC_X4Y0 Type=DRP
Bit   185183 0x0006001c     63 Block=OLOGIC_X4Y0 Type=DRP
Bit   242320 0x0008001c      0 Block=OLOGIC_X5Y0 Type=DRP
Bit   242321 0x0008001c      1 Block=OLOGIC_X5Y0 Type=DRP
Bit   242322 0x0008001c      2 Block=OLOGIC_X5Y0 Type=DRP
Bit   242323 0x0008001c      3 Block=OLOGIC_X5Y0 Type=DRP
Bit   242324 0x0008001c      4 Block=OLOGIC_X5Y0 Type=DRP
Bit   242325 0x0008001c      5 Block=OLOGIC_X5Y0 Type=DRP
Bit   242326 0x0008001c      6 Block=OLOGIC_X5Y0 Type=DRP
Bit   242327 0x0008001c      7 Block=OLOGIC_X5Y0 Type=DRP
Bit   242328 0x0008001c      8 Block=OLOGIC_X5Y0 Type=DRP
Bit   242329 0x0008001c      9 Block=OLOGIC_X5Y0 Type=DRP
Bit   242330 0x0008001c     10 Block=OLOGIC_X5Y0 Type=DRP
Bit   242331 0x0008001c     11 Block=OLOGIC_X5Y0 Type=DRP
Bit   242332 0x0008001c     12 Block=OLOGIC_X5Y0 Type=DRP
Bit   242333 0x0008001c     13 Block=OLOGIC_X5Y0 Type=DRP
Bit   242334 0x0008001c     14 Block=OLOGIC_X5Y0 Type=DRP
Bit   242335 0x0008001c     15 Block=OLOGIC_X5Y0 Type=DRP
Bit   242336 0x0008001c     16 Block=OLOGIC_X5Y0 Type=DRP
Bit   242337 0x0008001c     17 Block=OLOGIC_X5Y0 Type=DRP
Bit   242338 0x0008001c     18 Block=OLOGIC_X5Y0 Type=DRP
Bit   242339 0x0008001c     19 Block=OLOGIC_X5Y0 Type=DRP
Bit   242340 0x0008001c     20 Block=OLOGIC_X5Y0 Type=DRP
Bit   242341 0x0008001c     21 Block=OLOGIC_X5Y0 Type=DRP
Bit   242342 0x0008001c     22 Block=OLOGIC_X5Y0 Type=DRP
Bit   242343 0x0008001c     23 Block=OLOGIC_X5Y0 Type=DRP
Bit   242344 0x0008001c     24 Block=OLOGIC_X5Y0 Type=DRP
Bit   242345 0x0008001c     25 Block=OLOGIC_X5Y0 Type=DRP
Bit   242346 0x0008001c     26 Block=OLOGIC_X5Y0 Type=DRP
Bit   242347 0x0008001c     27 Block=OLOGIC_X5Y0 Type=DRP
Bit   242351 0x0008001c     31 Block=OLOGIC_X5Y0 Type=DRP
Bit   242352 0x0008001c     32 Block=OLOGIC_X5Y0 Type=DRP
Bit   242356 0x0008001c     36 Block=OLOGIC_X5Y0 Type=DRP
Bit   242357 0x0008001c     37 Block=OLOGIC_X5Y0 Type=DRP
Bit   242358 0x0008001c     38 Block=OLOGIC_X5Y0 Type=DRP
Bit   242359 0x0008001c     39 Block=OLOGIC_X5Y0 Type=DRP
Bit   242360 0x0008001c     40 Block=OLOGIC_X5Y0 Type=DRP
Bit   242361 0x0008001c     41 Block=OLOGIC_X5Y0 Type=DRP
Bit   242362 0x0008001c     42 Block=OLOGIC_X5Y0 Type=DRP
Bit   242363 0x0008001c     43 Block=OLOGIC_X5Y0 Type=DRP
Bit   242364 0x0008001c     44 Block=OLOGIC_X5Y0 Type=DRP
Bit   242365 0x0008001c     45 Block=OLOGIC_X5Y0 Type=DRP
Bit   242366 0x0008001c     46 Block=OLOGIC_X5Y0 Type=DRP
Bit   242367 0x0008001c     47 Block=OLOGIC_X5Y0 Type=DRP
Bit   242368 0x0008001c     48 Block=OLOGIC_X5Y0 Type=DRP
Bit   242369 0x0008001c     49 Block=OLOGIC_X5Y0 Type=DRP
Bit   242370 0x0008001c     50 Block=OLOGIC_X5Y0 Type=DRP
Bit   242371 0x0008001c     51 Block=OLOGIC_X5Y0 Type=DRP
Bit   242372 0x0008001c     52 Block=OLOGIC_X5Y0 Type=DRP
Bit   242373 0x0008001c     53 Block=OLOGIC_X5Y0 Type=DRP
Bit   242374 0x0008001c     54 Block=OLOGIC_X5Y0 Type=DRP
Bit   242375 0x0008001c     55 Block=OLOGIC_X5Y0 Type=DRP
Bit   242376 0x0008001c     56 Block=OLOGIC_X5Y0 Type=DRP
Bit   242377 0x0008001c     57 Block=OLOGIC_X5Y0 Type=DRP
Bit   242378 0x0008001c     58 Block=OLOGIC_X5Y0 Type=DRP
Bit   242379 0x0008001c     59 Block=OLOGIC_X5Y0 Type=DRP
Bit   242380 0x0008001c     60 Block=OLOGIC_X5Y0 Type=DRP
Bit   242381 0x0008001c     61 Block=OLOGIC_X5Y0 Type=DRP
Bit   242382 0x0008001c     62 Block=OLOGIC_X5Y0 Type=DRP
Bit   242383 0x0008001c     63 Block=OLOGIC_X5Y0 Type=DRP
Bit   242384 0x0008001c     64 Block=OLOGIC_X5Y2 Type=DRP
Bit   242385 0x0008001c     65 Block=OLOGIC_X5Y2 Type=DRP
Bit   242386 0x0008001c     66 Block=OLOGIC_X5Y2 Type=DRP
Bit   242387 0x0008001c     67 Block=OLOGIC_X5Y2 Type=DRP
Bit   242388 0x0008001c     68 Block=OLOGIC_X5Y2 Type=DRP
Bit   242389 0x0008001c     69 Block=OLOGIC_X5Y2 Type=DRP
Bit   242390 0x0008001c     70 Block=OLOGIC_X5Y2 Type=DRP
Bit   242391 0x0008001c     71 Block=OLOGIC_X5Y2 Type=DRP
Bit   242392 0x0008001c     72 Block=OLOGIC_X5Y2 Type=DRP
Bit   242393 0x0008001c     73 Block=OLOGIC_X5Y2 Type=DRP
Bit   242394 0x0008001c     74 Block=OLOGIC_X5Y2 Type=DRP
Bit   242395 0x0008001c     75 Block=OLOGIC_X5Y2 Type=DRP
Bit   242396 0x0008001c     76 Block=OLOGIC_X5Y2 Type=DRP
Bit   242397 0x0008001c     77 Block=OLOGIC_X5Y2 Type=DRP
Bit   242398 0x0008001c     78 Block=OLOGIC_X5Y2 Type=DRP
Bit   242399 0x0008001c     79 Block=OLOGIC_X5Y2 Type=DRP
Bit   242400 0x0008001c     80 Block=OLOGIC_X5Y2 Type=DRP
Bit   242401 0x0008001c     81 Block=OLOGIC_X5Y2 Type=DRP
Bit   242402 0x0008001c     82 Block=OLOGIC_X5Y2 Type=DRP
Bit   242403 0x0008001c     83 Block=OLOGIC_X5Y2 Type=DRP
Bit   242404 0x0008001c     84 Block=OLOGIC_X5Y2 Type=DRP
Bit   242405 0x0008001c     85 Block=OLOGIC_X5Y2 Type=DRP
Bit   242406 0x0008001c     86 Block=OLOGIC_X5Y2 Type=DRP
Bit   242407 0x0008001c     87 Block=OLOGIC_X5Y2 Type=DRP
Bit   242408 0x0008001c     88 Block=OLOGIC_X5Y2 Type=DRP
Bit   242409 0x0008001c     89 Block=OLOGIC_X5Y2 Type=DRP
Bit   242410 0x0008001c     90 Block=OLOGIC_X5Y2 Type=DRP
Bit   242411 0x0008001c     91 Block=OLOGIC_X5Y2 Type=DRP
Bit   242415 0x0008001c     95 Block=OLOGIC_X5Y2 Type=DRP
Bit   242416 0x0008001c     96 Block=OLOGIC_X5Y2 Type=DRP
Bit   242420 0x0008001c    100 Block=OLOGIC_X5Y2 Type=DRP
Bit   242421 0x0008001c    101 Block=OLOGIC_X5Y2 Type=DRP
Bit   242422 0x0008001c    102 Block=OLOGIC_X5Y2 Type=DRP
Bit   242423 0x0008001c    103 Block=OLOGIC_X5Y2 Type=DRP
Bit   242424 0x0008001c    104 Block=OLOGIC_X5Y2 Type=DRP
Bit   242425 0x0008001c    105 Block=OLOGIC_X5Y2 Type=DRP
Bit   242426 0x0008001c    106 Block=OLOGIC_X5Y2 Type=DRP
Bit   242427 0x0008001c    107 Block=OLOGIC_X5Y2 Type=DRP
Bit   242428 0x0008001c    108 Block=OLOGIC_X5Y2 Type=DRP
Bit   242429 0x0008001c    109 Block=OLOGIC_X5Y2 Type=DRP
Bit   242430 0x0008001c    110 Block=OLOGIC_X5Y2 Type=DRP
Bit   242431 0x0008001c    111 Block=OLOGIC_X5Y2 Type=DRP
Bit   242432 0x0008001c    112 Block=OLOGIC_X5Y2 Type=DRP
Bit   242433 0x0008001c    113 Block=OLOGIC_X5Y2 Type=DRP
Bit   242434 0x0008001c    114 Block=OLOGIC_X5Y2 Type=DRP
Bit   242435 0x0008001c    115 Block=OLOGIC_X5Y2 Type=DRP
Bit   242436 0x0008001c    116 Block=OLOGIC_X5Y2 Type=DRP
Bit   242437 0x0008001c    117 Block=OLOGIC_X5Y2 Type=DRP
Bit   242438 0x0008001c    118 Block=OLOGIC_X5Y2 Type=DRP
Bit   242439 0x0008001c    119 Block=OLOGIC_X5Y2 Type=DRP
Bit   242440 0x0008001c    120 Block=OLOGIC_X5Y2 Type=DRP
Bit   242441 0x0008001c    121 Block=OLOGIC_X5Y2 Type=DRP
Bit   242442 0x0008001c    122 Block=OLOGIC_X5Y2 Type=DRP
Bit   242443 0x0008001c    123 Block=OLOGIC_X5Y2 Type=DRP
Bit   242444 0x0008001c    124 Block=OLOGIC_X5Y2 Type=DRP
Bit   242445 0x0008001c    125 Block=OLOGIC_X5Y2 Type=DRP
Bit   242446 0x0008001c    126 Block=OLOGIC_X5Y2 Type=DRP
Bit   242447 0x0008001c    127 Block=OLOGIC_X5Y2 Type=DRP
Bit   273584 0x0009001c     64 Block=OLOGIC_X6Y2 Type=DRP
Bit   273585 0x0009001c     65 Block=OLOGIC_X6Y2 Type=DRP
Bit   273586 0x0009001c     66 Block=OLOGIC_X6Y2 Type=DRP
Bit   273587 0x0009001c     67 Block=OLOGIC_X6Y2 Type=DRP
Bit   273588 0x0009001c     68 Block=OLOGIC_X6Y2 Type=DRP
Bit   273589 0x0009001c     69 Block=OLOGIC_X6Y2 Type=DRP
Bit   273590 0x0009001c     70 Block=OLOGIC_X6Y2 Type=DRP
Bit   273591 0x0009001c     71 Block=OLOGIC_X6Y2 Type=DRP
Bit   273592 0x0009001c     72 Block=OLOGIC_X6Y2 Type=DRP
Bit   273593 0x0009001c     73 Block=OLOGIC_X6Y2 Type=DRP
Bit   273594 0x0009001c     74 Block=OLOGIC_X6Y2 Type=DRP
Bit   273595 0x0009001c     75 Block=OLOGIC_X6Y2 Type=DRP
Bit   273596 0x0009001c     76 Block=OLOGIC_X6Y2 Type=DRP
Bit   273597 0x0009001c     77 Block=OLOGIC_X6Y2 Type=DRP
Bit   273598 0x0009001c     78 Block=OLOGIC_X6Y2 Type=DRP
Bit   273599 0x0009001c     79 Block=OLOGIC_X6Y2 Type=DRP
Bit   273600 0x0009001c     80 Block=OLOGIC_X6Y2 Type=DRP
Bit   273601 0x0009001c     81 Block=OLOGIC_X6Y2 Type=DRP
Bit   273602 0x0009001c     82 Block=OLOGIC_X6Y2 Type=DRP
Bit   273603 0x0009001c     83 Block=OLOGIC_X6Y2 Type=DRP
Bit   273604 0x0009001c     84 Block=OLOGIC_X6Y2 Type=DRP
Bit   273605 0x0009001c     85 Block=OLOGIC_X6Y2 Type=DRP
Bit   273606 0x0009001c     86 Block=OLOGIC_X6Y2 Type=DRP
Bit   273607 0x0009001c     87 Block=OLOGIC_X6Y2 Type=DRP
Bit   273608 0x0009001c     88 Block=OLOGIC_X6Y2 Type=DRP
Bit   273609 0x0009001c     89 Block=OLOGIC_X6Y2 Type=DRP
Bit   273610 0x0009001c     90 Block=OLOGIC_X6Y2 Type=DRP
Bit   273611 0x0009001c     91 Block=OLOGIC_X6Y2 Type=DRP
Bit   273615 0x0009001c     95 Block=OLOGIC_X6Y2 Type=DRP
Bit   273616 0x0009001c     96 Block=OLOGIC_X6Y2 Type=DRP
Bit   273620 0x0009001c    100 Block=OLOGIC_X6Y2 Type=DRP
Bit   273621 0x0009001c    101 Block=OLOGIC_X6Y2 Type=DRP
Bit   273622 0x0009001c    102 Block=OLOGIC_X6Y2 Type=DRP
Bit   273623 0x0009001c    103 Block=OLOGIC_X6Y2 Type=DRP
Bit   273624 0x0009001c    104 Block=OLOGIC_X6Y2 Type=DRP
Bit   273625 0x0009001c    105 Block=OLOGIC_X6Y2 Type=DRP
Bit   273626 0x0009001c    106 Block=OLOGIC_X6Y2 Type=DRP
Bit   273627 0x0009001c    107 Block=OLOGIC_X6Y2 Type=DRP
Bit   273628 0x0009001c    108 Block=OLOGIC_X6Y2 Type=DRP
Bit   273629 0x0009001c    109 Block=OLOGIC_X6Y2 Type=DRP
Bit   273630 0x0009001c    110 Block=OLOGIC_X6Y2 Type=DRP
Bit   273631 0x0009001c    111 Block=OLOGIC_X6Y2 Type=DRP
Bit   273632 0x0009001c    112 Block=OLOGIC_X6Y2 Type=DRP
Bit   273633 0x0009001c    113 Block=OLOGIC_X6Y2 Type=DRP
Bit   273634 0x0009001c    114 Block=OLOGIC_X6Y2 Type=DRP
Bit   273635 0x0009001c    115 Block=OLOGIC_X6Y2 Type=DRP
Bit   273636 0x0009001c    116 Block=OLOGIC_X6Y2 Type=DRP
Bit   273637 0x0009001c    117 Block=OLOGIC_X6Y2 Type=DRP
Bit   273638 0x0009001c    118 Block=OLOGIC_X6Y2 Type=DRP
Bit   273639 0x0009001c    119 Block=OLOGIC_X6Y2 Type=DRP
Bit   273640 0x0009001c    120 Block=OLOGIC_X6Y2 Type=DRP
Bit   273641 0x0009001c    121 Block=OLOGIC_X6Y2 Type=DRP
Bit   273642 0x0009001c    122 Block=OLOGIC_X6Y2 Type=DRP
Bit   273643 0x0009001c    123 Block=OLOGIC_X6Y2 Type=DRP
Bit   273644 0x0009001c    124 Block=OLOGIC_X6Y2 Type=DRP
Bit   273645 0x0009001c    125 Block=OLOGIC_X6Y2 Type=DRP
Bit   273646 0x0009001c    126 Block=OLOGIC_X6Y2 Type=DRP
Bit   273647 0x0009001c    127 Block=OLOGIC_X6Y2 Type=DRP
Bit   769806 0x0019001c    206 Block=OLOGIC_X18Y7 Type=DRP
Bit   769814 0x0019001c    214 Block=OLOGIC_X18Y7 Type=DRP
Bit   769870 0x0019001c    270 Block=OLOGIC_X18Y9 Type=DRP
Bit   769878 0x0019001c    278 Block=OLOGIC_X18Y9 Type=DRP
Bit   769897 0x0019001c    297 Block=OLOGIC_X18Y8 Type=DRP
Bit   769905 0x0019001c    305 Block=OLOGIC_X18Y8 Type=DRP
Bit   769934 0x0019001c    334 Block=OLOGIC_X18Y11 Type=DRP
Bit   769942 0x0019001c    342 Block=OLOGIC_X18Y11 Type=DRP
Bit   769961 0x0019001c    361 Block=OLOGIC_X18Y10 Type=DRP
Bit   769969 0x0019001c    369 Block=OLOGIC_X18Y10 Type=DRP
Bit   770142 0x0019001c    542 Block=OLOGIC_X18Y13 Type=DRP
Bit   770150 0x0019001c    550 Block=OLOGIC_X18Y13 Type=DRP
Bit   770169 0x0019001c    569 Block=OLOGIC_X18Y12 Type=DRP
Bit   770177 0x0019001c    577 Block=OLOGIC_X18Y12 Type=DRP
