---
coding: utf-8

title: Attacks on Static Diffie-Hellman Oracles
abbrev: staticdh
docname: draft-riastradh-cfrg-staticdh-latest
category: info

ipr: trust200902
area: General
workgroup: Crypto Forum Research Group
keyword: Internet-Draft

stand_alone: yes
smart_quotes: no
pi: [toc, sortrefs, symrefs]

author:
 -
    ins: T.R. Campbell
    name: Taylor R. Campbell
    organization: Random Float LLC
    email: campbell+cfrg@mumble.net

normative:
  RFC2119:

informative:
  DH76:
    title: New Directions in Cryptography
    target: https://www-ee.stanford.edu/~hellman/publications/24.pdf
    author:
      -
        ins: W. Diffie
        name: Whitfield Diffie
      -
        ins: M.E. Hellman
        name: Martin E. Hellman
    date: 1976
    seriesinfo:
      IEEE: Transactions on Information Theory 22(6)
      DOI: 10.1109/TIT.1976.1055638

  PH78:
    title: >
      An improved algorithm for computing logarithms over GF(p)
      and its cryptographic significance
    target: https://ieeexplore.ieee.org/document/1055817
    author:
      -
        ins: S.C. Pohlig
        name: Stephen C. Pohlig
      -
        ins: M.E. Hellman
        name: Martin E. Hellman
    date: 1978
    seriesinfo:
      IEEE: Transactions on Information Theory 24(1)
      DOI: 10.1109/TIT.1978.1055817

  Pollard78:
    title: Monte Carlo methods for index computation (mod p)
    target: https://www.jstor.org/stable/2006496
    author:
      ins: J.M. Pollard
      name: John M. Pollard
    date: 1978
    seriesinfo:
      AMS: Mathematics of Computation 32(143)
      ISSN: 0025-5718
      DOI: 10.2307/2006496

  CvA89:
    title: Undeniable Signatures
    target: https://link.springer.com/chapter/10.1007/0-387-34805-0_20
    author:
      -
        ins: D. Chaum
        name: David Chaum
      -
        ins: H. van Antwerpen
        name: Hans van Antwerpen
    date: 1989
    seriesinfo:
      CRYPTO: 1989
      Springer: LNCS 435
      ISSN: 0302-9743
      ISBN: 978-0-387-34805-6
      DOI: 10.1007/0-387-34805-0_20

  Schnorr89:
    title: Efficient Identification and Signatures for Smart Cards
    target: https://link.springer.com/chapter/10.1007/0-387-34805-0_22
    author:
      ins: C.P. Schnorr
      name: Claus P. Schnorr
    date: 1989
    seriesinfo:
      CRYPTO: 1989
      Springer: LNCS 435
      ISSN: 0302-9743
      ISBN: 978-0-387-97317-3
      DOI: 10.1007/0-387-34805-0_22

  Maurer94:
    title: >
      Towards the Equivalence of Breaking the Diffie-Hellman Protocol
      and Computing Discrete Logarithms
    author:
      ins: U.M. Maurer
      name: Ueli M. Maurer
    date: 1994
    seriesinfo:
      CRYPTO: 1994
      Springer: LNCS 839
      ISSN: 0302-9743
      ISBN: 978-3-540-58333-2
      DOI: 10.1007/3-540-48658-5_26

  LL97:
    title: >
      A key recovery attack on discrete log-based schemes
      using a prime order subgroup
    target: https://link.springer.com/chapter/10.1007/BFb0052240
    author:
      -
        ins: C.H. Lim
        name: Chae Hoon Lim
      -
        ins: P.J. Lee
        name: Pil Joong Lee
    date: 1997
    seriesinfo:
      CRYPTO: 1997
      Springer: LNCS 1294
      ISSN: 0302-9743
      ISBN: 978-3-540-63384-6
      DOI: 10.1007/BFb0052240

  WZ98:
    title: Faster Attacks on Elliptic Curve Cryptosystems
    target: https://link.springer.com/chapter/10.1007/3-540-48892-8_15
    author:
      -
        ins: M.J. Wiener
        name: Michael J. Wiener
      -
        ins: R.J. Zuccherato
        name: Robert J. Zuccherato
    date: 1998
    seriesinfo:
      SAC: 1998
      Springer: LNCS 1556
      ISSN: 0302-9743
      ISBN: 978-3-540-65894-8
      DOI: 10.1007/3-540-48892-8_15

  OW99:
    title: Parallel collision search with cryptanalytic applications
    target: https://link.springer.com/article/10.1007/PL00003816
    author:
      -
        ins: P.C. van Oorschot
        name: Paul C. van Oorschot
      -
        ins: M.J. Wiener
        name: Michael J. Wiener
    date: 1999
    seriesinfo:
      IACR: Journal of Cryptology 12
      ISSN: 0933-2790
      DOI: 10.1007/PL00003816

  FK00:
    title: Server-assisted generation of a strong secret from a password
    target: https://ieeexplore.ieee.org/document/883724
    author:
      -
        ins: W. Ford
        name: Warwick Ford
      -
        ins: B.S. Kaliski Jr.
        name: Burton S. Kaliski Jr.
    date: 2000
    seriesinfo:
      "WET ICE": 2000
      ISSN: 1080-1383
      ISBN: 0-7695-0798-0
      DOI: 10.1109/ENABL.2000.883724

  SEC2:
    title: "SEC 2: Recommended Elliptic Curve Domain Parameters"
    target: https://www.secg.org/SEC2-Ver-1.0.pdf
    author:
      org: Certicom Research
    date: 2000

  BG04:
    title: The Static Diffie-Hellman Problem
    target: https://eprint.iacr.org/2004/306
    author:
      -
        ins: D.R.L. Brown
        name: Daniel R.L. Brown
      -
        ins: R.P. Gallant
        name: Robert P. Gallant
    date: 2004
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2004/306"

  Sutter05:
    title: >
      The Free Lunch Is Over: A Fundamental Turn Toward Concurrency in Software
    target: http://www.gotw.ca/publications/concurrency-ddj.htm
    author:
      ins: H. Sutter
      name: Herb Sutter
    date: 2005
    seriesinfo:
      "Dr. Dobb's Journal": 30(3)
      ISSN: 1044-789X

  Bernstein06:
    title: "Curve25519: new Diffie-Hellman speed records"
    target: https://link.springer.com/chapter/10.1007/11745853_14
    author:
      ins: D.J. Bernstein
      name: Daniel J. Bernstein
    date: 2006
    seriesinfo:
      PKC: 2006
      Springer: LNCS 3958
      ISSN: 0302-9743
      ISBN: 978-3-540-33851-2
      DOI: 10.1007/11745853_14

  Cheon06:
    title: Security Analysis of the Strong Diffie-Hellman Problem
    target: https://link.springer.com/chapter/10.1007/11761679_1
    author:
      ins: J.H. Cheon
      name: Jung Hee Cheon
    date: 2006
    seriesinfo:
      EUROCRYPT: 2006
      Springer: LNCS 4004
      ISSN: 0302-9743
      ISBN: 978-3-540-34546-6
      DOI: 10.1007/11761679_1

  KKM07:
    title: Remarks on Cheon's Algorithms for Pairing-Related Problems
    target: https://link.springer.com/chapter/10.1007/978-3-540-73489-5_17
    author:
      -
        ins: S. Koazaki
        name: Shunji Koazaki
      -
        ins: T. Kutsuma
        name: Taketeru Kutsuma
      -
        ins: K. Matsuo
        name: Kazuto Matsuo
    date: 2007
    seriesinfo:
      PBC: 2007
      Springer: LNCS 4575
      ISSN: 0302-9743
      ISBN: 978-3-540-73488-8
      DOI: 10.1007/978-3-540-73489-5_17

  KM07:
    title: >
      Another Look at Non-standard Discrete Log and Diffie-Hellman Problems
    target: https://eprint.iacr.org/2007/442
    author:
      -
        ins: N. Koblitz
        name: Neal Koblitz
      -
        ins: A. Menezes
        name: Alfred Menezes
    date: 2007
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2007/442"

  JLNT09:
    title: >
      Oracle-Assisted Static Diffie-Hellman Is Easier Than
      Discrete Logarithms
    target: https://link.springer.com/chapter/10.1007/978-3-642-10868-6_21
    author:
      -
        ins: A. Joux
        name: Antoine Joux
      -
        ins: R. Lercier
        name: Reynald Lercier
      -
        ins: D. Naccache
        name: David Naccache
      -
        ins: E. Thomé
        name: Emmanuel Thomé
    date: 2009
    seriesinfo:
      IMACC: 2009
      Springer: LNCS 5921
      ISSN: 0302-9743
      ISBN: 978-3-642-10868-6
      DOI: 10.1007/978-3-642-10868-6_21

  Satoh09:
    title: On Generalization of Cheon's algorithm
    target: https://eprint.iacr.org/2009/058
    author:
      ins: T. Satoh
      name: Takakazu Satoh
    date: 2009
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2009/058"

  IBM10:
    title: >
      Made in IBM Labs: IBM Scientists Demonstrate World's Fastest Graphene
      Transistor
    target: https://www-03.ibm.com/press/us/en/pressrelease/29343.wss
    author:
      org: IBM
    date: 2010

  Cheon10:
    title: Discrete Logarithm Problem with Auxiliary Inputs
    target: https://link.springer.com/article/10.1007/s00145-009-9047-0
    author:
      ins: J.H. Cheon
      name: Jung Hee Cheon
    date: 2010
    seriesinfo:
      IACR: Journal of Cryptology 23(3)
      ISSN: 0933-2790
      DOI: 10.1007/s00145-009-9047-0

  Granger10:
    title: >
      On the Static Diffie-Hellman Problem on Elliptic Curves
      over Extension Fields
    target: https://link.springer.com/chapter/10.1007/978-3-642-17373-8_17
    author:
      ins: R. Granger
      name: Robert Granger
    date: 2010
    seriesinfo:
      ASIACRYPT: 2010
      Springer: LNCS 6477
      ISSN: 0302-9743
      ISBN: 978-3-642-17372-1
      DOI: 10.1007/978-3-642-17373-8_17

  Vitse10:
    title: >
      New timings for oracle-assisted SDHP on the IPSEC Oracle
      'Well Known Group' 3 curve
    target: https://listserv.nodak.edu/cgi-bin/wa.exe?A2=NMBRTHRY;eab301e0.1007&S=
    author:
      ins: V. Vitse
      name: Vanessa Vitse
    date: 2010-07-08

  BDLSY11:
    title: High-speed high-security signatures
    target: https://cr.yp.to/papers.html#ed25519
    author:
      -
        ins: D.J. Bernstein
        name: Daniel J. Bernstein
      -
        ins: N. Duif
        name: Nils Duif
      -
        ins: T. Lange
        name: Tanja Lange
      -
        ins: P. Schwabe
        name: Peter Schwabe
      -
        ins: B.-Y. Yang
        name: Bo-Yin yang
    date: 2011
    seriesinfo:
      CHES: 2011
      Springer: LNCS 6917
      ISSN: 0302-9743
      ISBN: 978-3-642-23950-2
      DOI: 10.1007/978-3-642-23951-9_9

  JV11:
    title: >
      Elliptic Curve Discrete Logarithm Problems over Small Degree
      Extension Fields
    target: https://link.springer.com/article/10.1007/s00145-011-9116-z
    author:
      -
        ins: A. Joux
        name: Antoine Joux
      -
        ins: V. Vitse
        name: Vanessa Vitse
    date: 2011
    seriesinfo:
      IACR: Journal of Cryptology 26(1)
      ISSN: 0933-2790
      DOI: 10.1007/s00145-011-9116-z

  JV12:
    title: >
      Cover and Decomposition Index Calculus on Elliptic Curves Made Practical
    target: https://link.springer.com/chapter/10.1007/978-3-642-29011-4_3
    date: 2012
    seriesinfo:
      EUROCRYPT: 2012
      Springer: LNCS 7237
      ISSN: 0302-9743
      ISBN: 978-3-642-29011-4
      DOI: 10.1007/978-3-642-29011-4_3

  KC12:
    title: >
      A New Approach to Discrete Logarithm Problem with Auxiliary Inputs
    target: https://eprint.iacr.org/2012/609
    author:
      -
        ins: T. Kim
        name: Taechan Kim
      -
        ins: J.H. Cheon
        name: Jung Hee Cheon
    date: 2012
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2012/609"

  Barbulescu13:
    title: Algorithms for discrete logarithm in finite fields
    target: https://hal.univ-lorraine.fr/tel-01750438
    author:
      ins: R. Barbulescu
      name: Razvan Barbulescu
    date: 2013
    seriesinfo:
      PhD: University of Lorraine

  FIPS186-4:
    title: Digital Signature Standard
    target: https://dx.doi.org/10.6028/NIST.FIPS.186-4
    date: 2013
    author:
      org: National Institute of Standards and Technology
    seriesinfo:
      FIPS: PUB 186-4
      DOI: 10.6028/NIST.FIPS.186-4

  JP13:
    title: The Special Number Field Sieve in F_{p^n}
    target: https://link.springer.com/chapter/10.1007/978-3-319-04873-4_3
    author:
      -
        ins: A. Joux
        name: Antoine Joux
      -
        ins: C. Pierrot
        name: Cécile Pierrot
    date: 2013
    seriesinfo:
      "Pairing-Based Cryptography": 2013
      Springer: LNCS 8365
      ISSN: 0302-9743
      ISBN: 978-3-319-04873-4
      DOI: 10.1007/978-3-319-04873-4_3

  FHJRV14:
    title: >
      Symmetrized Summation Polynomials: Using Small Order Torsion
      Points to Speed Up Elliptic Curve Index Calculus
    target: https://link.springer.com/chapter/10.1007/978-3-642-55220-5_3
    author:
      -
        ins: J-C Faugère
        name: Jean-Charles Faugère
      -
        ins: L. Huot
        name: Louise Huot
      -
        ins: A. Joux
        name: Antoine Joux
      -
        ins: G. Renault
        name: Guénaël Renault
      -
        ins: V. Vitse
        name: Vanessa Vitse
    date: 2014
    seriesinfo:
      EUROCRYPT: 2014
      Springer: LNCS 8441
      ISSN: 0302-9743
      ISBN: 978-3-642-55220-5
      DOI: 10.1007/978-3-642-55220-5_3

  KCL14:
    title: >
      Analysis on a generalized algorithm for the strong discrete
      logarithm problem with auxiliary inputs
    target: https://www.ams.org/journals/mcom/2014-83-288/S0025-5718-2014-02813-5/
    author:
      -
        ins: M. Kim
        name: Minkyu Kim
      -
        ins: J.H. Cheon
        name: Jung Hee Cheon
      -
        ins: I.-S. Lee
        name: In-Sok Lee
    date: 2014
    seriesinfo:
      AMS: Mathematics of Computation 83(288)
      ISSN: 0025-5718
      DOI: 10.1090/S0025-5718-2014-02813-5

  Kim14:
    title: Discrete Logarithm Problem with Auxiliary Inputs
    target: https://s-space.snu.ac.kr/bitstream/10371/121277/1/000000017025.pdf
    author:
      ins: T. Kim
      name: Taechan Kim
    date: 2014
    seriesinfo:
      PhD: Seoul National University

  ZZCGZ14:
    title: >
      Black-Box Separations for One-More (Static) CDH and Its Generalization
    target: https://link.springer.com/chapter/10.1007/978-3-662-45608-8_20
    author:
      -
        ins: J. Zhang
        name: Jiang Zhang
      -
        ins: Z. Zhang
        name: Zhenfeng Zhang
      -
        ins: Y. Chen
        name: Yu Chen
      -
        ins: Y. Guo
        name: Yanfei Guo
      -
        ins: Z. Zhang
        name: Zongyang Zhang
    date: 2014
    seriesinfo:
      ASIACRYPT: 2014
      Springer: LNCS 8874
      ISSN: 0302-9743
      ISBN: 978-3-662-45608-8
      DOI: 10.1007/978-3-662-45608-8_20

  CL15:
    title: >
      FourQ: four-dimensional decompositions on a Q-curve
      over the Mersenne prime
    target: https://eprint.iacr.org/2015/565
    author:
      -
        ins: C. Costello
        name: Craig Costello
      -
        ins: P. Longa
        name: Patrick Longa
    date: 2015
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2015/565"

  GG15:
    title: >
      Summation Polynomial Algorithms for Elliptic Curves in
      Characteristic Two
    target: https://link.springer.com/chapter/10.1007/978-3-319-13039-2_24
    author:
      -
        ins: S.D. Galbraith
        name: Steven D. Galbraith
      -
        ins: S.W. Gebregiyorgis
        name: Shishay W. Gebregiyorgis
    date: 2015
    seriesinfo:
      INDOCRYPT: 2014
      Springer: LNCS 8885
      ISSN: 0302-9743
      ISBN: 978-3-319-13039-2
      DOI: 10.1007/978-3-319-13039-2_24

  Hamburg15:
    title: "Decaf: Eliminating Cofactors Through Point Compression"
    target: https://link.springer.com/chapter/10.1007/978-3-662-47989-6_34
    author:
      ins: M. Hamburg
      name: Mike Hamburg
    date: 2015
    seriesinfo:
      CRYPTO: 2015
      Springer: LNCS 9215
      ISSN: 0302-9743
      ISBN: 978-3-662-47988-9
      DOI: 10.1007/978-3-662-47989-6_34

  FGHT16:
    title: A kilobit hidden SNFS discrete logarithm computation
    target: https://link.springer.com/chapter/10.1007/978-3-319-56620-7_8
    author:
      -
        ins: J. Fried
        name: Joshua Fried
      -
        ins: P. Gaudry
        name: Pierrick Gaudry
      -
        ins: N. Heninger
        name: Nadia Heninger
      -
        ins: E. Thomé
        name: Emmanuel Thomé
    date: 2016
    seriesinfo:
      EUROCRYPT: 2017
      Springer: LNCS 10210
      ISSN: 0302-9743
      ISBN: 978-3-319-56620-7
      DOI: 10.1007/978-3-319-56620-7_8

  GG16:
    title: Recent progress on the elliptic curve discrete logarithm problem
    target: https://link.springer.com/article/10.1007%2Fs10623-015-0146-7
    author:
      -
        ins: S.D. Galbraith
        name: Steven D. Galbraith
      -
        ins: P. Gaudry
        name: Pierrick Gaudry
    date: 2015
    seriesinfo:
      "Designs, Codes, and Cryptography": 44(1)
      ISSN: 1573-7586
      DOI: 10.1007/s10623-015-0146-7

  Kim16:
    title: Multiple Discrete Logarithm Problems with Auxiliary Inputs
    target: https://link.springer.com/chapter/10.1007%2F978-3-662-48797-6_8
    author:
      ins: T. Kim
      name: Taechan Kim
    date: 2015
    seriesinfo:
      ASIACRYPT: 2015
      Springer: LNCS 9452
      ISSN: 0302-9743
      ISBN: 978-3-662-48796-9
      DOI: 10.1007/978-3-662-48797-6_8

  LS17:
    title: Disclosure of a Major Bug in CryptoNote Based Currencies
    target: https://www.getmonero.org/2017/05/17/disclosure-of-a-major-bug-in-cryptonote-based-currencies.html
    author:
      -
        ins: luigi1111
        name: luigi1111
      -
        ins: R. Spagni
        name: Riccardo "fluffypony" Spagni
    date: 2017-05-17
    seriesinfo:
      Monero: blog

  SafeCurves:
    title: "SafeCurves: choosing safe curves for elliptic-curve cryptography"
    target:  https://safecurves.cr.yp.to
    author:
      -
        ins: D.J. Bernstein
        name: Daniel J. Bernstein
      -
        ins: T. Lange
        name: Tanja Lange
    date: 2017

  James19:
    title: >
      Forget graphene CPUs, AMD says "we're stuck on silicon for at
      least seven to ten years"
    target: https://www.pcgamesn.com/amd/stuck-on-silicon-past-3nm-7-10-years
    author:
      ins: D. James
      name: Dave James
    date: 2019

  Davidson19:
    title: Supporting the latest version of the Privacy Pass Protocol
    target: https://blog.cloudflare.com/supporting-the-latest-version-of-the-privacy-pass-protocol/
    author:
      ins: A. Davidson
      name: Alex Davidson
    date: 2019-10-28
    seriesinfo:
      Cloudflare: blog post

  deValence20:
    title: It’s 255:19AM.  Do you know what your validation criteria are?
    target: https://hdevalence.ca/blog/2020-10-04-its-25519am
    author:
      ins: H. de Valence
      name: Henry de Valence
    date: 2020-10-04

  GGMP21:
    title: On Index Calculus Algorithms for Subfield Curves
    target: https://link.springer.com/chapter/10.1007/978-3-030-81652-0_5
    author:
      -
        ins: S.D. Galbraith
        name: Steven D. Galbraith
      -
        ins: R. Granger
        name: Robert Granger
      -
        ins: S-P Merz
        name: Simon-Philipp Merz
      -
        ins: C. Petit
        name: Christophe Petit
    date: 2021
    seriesinfo:
      SAC: 2021
      Springer: LNCS 12804
      ISSN: 0302-9743
      ISBN: 978-3-030-81652-0
      DOI: 10.1007/978-3-030-81652-0_5

  GKLWZ20:
    title: Computation of a 30750-Bit Binary Field Discrete Logarithm
    target: https://eprint.iacr.org/2020/965
    author:
      -
        ins: R. Granger
        name: Robert Granger
      -
        ins: T. Kleinjung
        name: Thorsten Kleinjung
      -
        ins: A.K. Lenstra
        name: Arjen K. Lenstra
      -
        ins: B. Wesolowski
        name: Benjamin Wesolowski
      -
        ins: J. Zumbrägel
        name: Jens Zumbrägel
    date: 2020
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2020/965"

  MS23:
    title: >
      Dlog is Practically as Hard (or Easy) as DH –
      Solving Dlogs via DH Oracles on EC Standards
    target: https://eprint.iacr.org/2023/539
    author:
      -
        ins: A. May
        name: Alexander May
      -
        ins: C.R.T. Schneider
        name: Carl Richard Theodor Schneider
    date: 2023
    seriesinfo:
      IACR: "Cryptology ePrint Archive: Report 2023/539"

  PariGP:
    title: PARI/GP Development Headquarters
    target: https://pari.math.u-bordeaux.fr/
    date: 2023-03-15

  eBATS:
    title: "eBATS: ECRYPT Benchmarking of Asymmetric Systems"
    target: https://bench.cr.yp.to/ebats.html
    author:
      -
        ins: D.J. Bernstein
        name: Daniel J. Bernstein
      -
        ins: T. Lange
        name: Tanja Lange
    date: 2023-04-01

  HWBOT:
    title: >
      CPU Frequency: Hall of Fame -- World Records Achieved with CPU Frequency
    target: https://hwbot.org/benchmark/cpu_frequency/halloffame
    date: 2023-04-01

  BlockchainHashrate:
    title: Total Hash rate (TH/s)
    target: https://www.blockchain.com/explorer/charts/hash-rate
    date: 2023-04-01

  PariGPPkgs:
    title: Optional PARI/GP packages
    target: https://pari.math.u-bordeaux.fr/packages.html
    date: 2023-04-24


--- abstract

A **static Diffie-Hellman (DH) oracle** is an oracle that multiplies a
 given element P in a group written additively by a secret scalar k,
 yielding k\*P.
Certain cryptographic protocols such as oblivious pseudorandom function
 families (OPRFs) rely on an adversary's inability either to recover k
 or to compute k\*Q for a random element Q chosen after queries to the
 static DH oracle.
This memo summarizes the state of the art in attacks enabled by static
 DH oracles, and the resistance of widely used groups to such attacks.


--- middle

# Introduction

In a finite group written additively, the **discrete logarithm
 problem** (DLP) is to find a secret scalar k given (G, k\*G) where G
 is a known element of the group, typically a standard generator.
Ephemeral Diffie-Hellman key agreement such as in TLS {{?RFC8446}}
 relies on the related **computational Diffie-Hellman problem** (CDH):
 given (x\*G, y\*G), find xy\*G.
(Note: For consistency, we write all groups additively in this memo, as
 is typical for elliptic curves.)

Traditional protocols involving Diffie-Hellman, including ephemeral key
 agreement in TLS and static key agreement in the original proposal of
 Diffie and Hellman {{DH76}}, use the shared secret xy\*G to derive a
 key for encryption, and necessarily avoid exposing xy\*G itself to an
 adversary -- the adversary only learns x\*G, y\*G, and the ciphertext
 encrypted using xy\*G, but not xy\*G itself.

Newer protocols based on oblivious pseudorandom function families
 (OPRF, {{?I-D.irtf-cfrg-voprf}}), such as OPAQUE
 {{?I-D.irtf-cfrg-opaque}} and Privacy Pass
 {{?I-D.ietf-privacypass-protocol}}, inspired by the Ford-Kaliski
 password-hardening protocol {{FK00}}, take advantage of the algebraic
 structure of the group to do more.
An OPRF is a protocol by which a client and a server can jointly
 evaluate a pseudorandom function family (PRF) with a key known only to
 the server on an input known only to the client, giving an output also
 known only to the client.
To do this, the server deliberately exposes k\*P given an arbitrary
 element P, where k is a secret key known only to the server.


## Taxonomy of Problems

A **static DH oracle** reveals k\*P given an arbitrary base P where k
 is a secret.
The **static DH problem** (SDH or SDHP, {{BG04}}) is to compute k\*Q
 for random Q determined after the adversary's last oracle query.

The **discrete log problem with auxiliary inputs** (DLPwAI,
 {{Cheon10}}) is to recover k given
 (G, k\*G, k^2\*G, k^3\*G, ..., k^q\*G)
 for some q.
DLPwAI is obviously at least as hard as SDH:
Given a static DH oracle, an adversary can find the auxiliary inputs
 for DLPwAI, and then if the adversary can solve DLPwAI they can
 trivially solve a static DH problem by using the secret k to compute
 k\*Q directly given the challenge Q.

It is unknown whether SDH is at least as hard as DLPwAI.
Many SDH attacks work via DLPwAI, but there are exceptions like
 {{JLNT09}}, {{Granger10}}, and {{JV11}} which solve SDH directly but
 not DLPwAI.

The **generalized discrete log problem with auxiliary inputs**
 (GDLPwAI, {{Kim14}}) is to recover k given
 (k^e_1 \* G, k^e_2 \* G, ..., k^e_q \* G)
 for arbitrary integers e_1, e_2, ..., e_q.
Static DH oracles only expose k\*P, not arbitrary powers of k, so
 although GDLPwAI algorithms can make more economical use of a subset
 of the powers of k, this economy is of theoretical rather than
 practical interest.

A more detailed taxonomy of related problems is given in {{KM07}}
 together with some relations between them; some black-box separations
 are given in {{ZZCGZ14}}.


# Conventions and Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this
document are to be interpreted as described in BCP 14 {{RFC2119}} {{!RFC8174}}
when, and only when, they appear in all capitals, as shown here.


# Static DH Oracle Examples

OPAQUE {{?I-D.irtf-cfrg-opaque}} uses an OPRF to derive a secret from a
 password that the server is oblivious to, and relies on the secret key
 to prevent other than the server from computing the same secret to
 test password guesses.

Privacy Pass {{?I-D.ietf-privacypass-protocol}} uses an OPRF to create
 anonymized tokens.
A server can issue tokens to clients, but can't distinguish or track
 clients by them.
Clients can prove ownership of tokens, but can't forge new ones.

Both protocols essentially compute the PRF:

~~~
H2(t, k*H1(t)).
~~~

Here t is the client's secret PRF input, k is the server's secret PRF
 key, and H1 and H2 are hash funtions.

To do this, the client computes Q := H1(t) and derives P := r\*H1(t) or
 P := H1(t) + R, where r is a scalar or R is a group element chosen
 uniformly at random and kept secret to the client ("multiplicative" or
 "additive blinding").

The server, given P, then reveals k\*P (from which the client
 can undo the blinding to complete the protocol).
Thus, since the server must answer for arbitrary P, the server
 implements a static DH oracle.


# Assumptions

Static DH attacks have query costs -- the number of queries that must
 be answered by the legitimate server, such as a Privacy Pass token
 issuer, in order for the attack to succeed.

The best attacks on elliptic curves over prime fields are generic
 static DH attacks, which require _sequential_ queries: each query
 submitted by the adversary (except the first one) depends on the
 oracle's answer to the previous query.
(Some attacks on elliptic curves over extension fields, or on the
 multiplicative groups of finite fields, can take advantage of parallel
 queries.)

We make the following assumptions about legitimate servers to put
 realistic limits on the sequential query costs of feasible attacks:

- CPUs run at less than 10 GHz.

  World records for CPU frequencies have plateaued at about 9 GHz over
   the past decade {{HWBOT}}, after many years of increases.
  For the past two decades, the semiconductor industry has switched its
   focus to wider parallelism, not higher frequencies, after reaching
   what seem to be hard physical limits to overcome in further
   frequency scaling {{Sutter05}}.

  In 2010 IBM reported a graphene-based transistor oscillating at more
   than 100 GHz {{IBM10}}, but that avenue of research appears to have
   no foreseeable future in graphene-based CPUs at such frequencies
   {{James19}}.

- Oracle queries cost at least 1000 CPU cycles.

  World records for Diffie-Hellman operations reported by {{eBATS}}
   have not improved below 28 000 CPU cycles (gls254 on the AMD
   Zen2 microarchitecture), after many years of incremental
   improvements.

These assumptions imply a lower bound of 100 nanoseconds per query.

At 100 nanoseconds per query, the following table shows the minimum
 real time to achieve a prescribed number of sequential queries:

~~~
queries         time

2^10            102 microseconds
2^20            104 milliseconds
2^30            107 seconds
2^40            30.5 hours = 1.27 days
2^50            3.57 years

2^51            7.14 years
2^52            14.2 years
2^53            28.5 years
2^54            57.1 years
2^55            114 years
~~~

For the purposes of this memo, we consider 2^55 to be a hard limit on
 the number of sequential queries, absent a revolutionary breakthrough
 in computing.

These are extremely conservative assumptions -- we make no assumptions
 about communication or context-switch cost, and most servers in the
 real world have nowhere near the capacity to approach this.
E.g., if the server runs at 4 GHz, and the group costs 28 000 cycles
 for scalar multiplication, then each query takes 7 microseconds, so
 2^50 sequential queries would take nearly a quarter of a millennium.

Note that it is the _legitimate server's_ capacity that limits the
 feasible query cost.
ASICs fabricated by the adversary can reduce the computational cost of
 attacks, but can't affect the legitimate server's capacity to answer
 the adversary's queries.

Engineers building systems out of graphene CPUs operating at 100 GHz to
 compute dramatically improved elliptic curve scalar multiplication
 algorithms at fewer than 1000 cycles per scalarmult MUST reconsider
 these assumptions.


# Cofactors

Generic DLP security requires a subgroup of large prime order.
If the whole group's order is h\*p where p is the largest prime factor,
 h is called the cofactor.
For prime-order groups, h = 1.
Composite-order groups with h > 1 pose various complications:

- The Pohlig-Hellman algorithm {{PH78}} costs O(log(h\*p) sqrt{p}), so
   it is not enough for h\*p to be large; p itself must also be large.

  To defeat Pohlig-Hellman, traditional finite-field DLP applications
   that only expose (G, k\*G) where G is a standard generator, such as
   Schnorr signatures and DSA, use Schnorr groups {{Schnorr89}}
   {{FIPS186-4}} {{?RFC2412}}:
  The standard generator G is chosen to generate the order-p subgroup
   of (Z/qZ)^* where q = hp + 1 and p is a prime large enough that
   Pohlig-Hellman is out of reach, typically near 2^256.

- Traditional Diffie-Hellman key agreement with static keys {{DH76}}
   {{Bernstein06}} is also subject to the active Lim-Lee small-subgroup
   attack {{LL97}}:
  The adversary submits elements P_1, P_2, ..., P_n of small orders
   o_1, o_2, ..., o_n to learn ciphertexts or hashes H(k\*P_1),
   H(k\*P_2), ..., H(k\*P_n), with H treated as a black box.
  The adversary can then recover k mod o_1, k mod o_2, ..., k mod o_n
   by brute force search.

  To defeat the small-subgroup attack, traditional finite-field DH
   applications use safe primes q = 2p + 1, with the smallest possible
   cofactor h = 2, so that the attack reveals at most only one bit of
   information {{?RFC2785}}.
  The secret scalar may also be chosen to be congruent to zero modulo
   h, as in X25519 {{Bernstein06}} {{?RFC7748}}, so the attack reveals
   nothing except in incorrect implementations.
  The static DH oracle may alternatively refuse to answer a query at an
   element P if p\*P is nonzero, meaning Q does not lie in the order-p
   subgroup.

- Signature schemes involving composite-order groups such as Ed25519
   {{BDLSY11}} {{?RFC8032}} may treat multiple different byte strings
   representing signatures as equivalent.

  This doesn't affect signature security -- existential unforgeability
   under chosen-message attack, or EUF-CMA.
  But there are byte strings that are interpreted as valid by some
   verifiers and invalid by others leading to trouble in distributed
   consensus applications {{deValence20}}.
  It has also led to vulnerabilities in protocols that relied on
   nonstandard security properties of signatures {{LS17}}.

- Cofactors can hurt indistinguishability for OPRF applications like
   Privacy Pass {{?I-D.ietf-privacypass-protocol}}:
  When the user submits a blinded token request Q = r\*P, the server
   answers with k\*r\*P; the user derives a token to redeem later
   involving k\*P.

  Given the elements k\*r\*P in a request and k\*P in a redemption, the
   server can determine their orders modulo h by Pohlig-Hellman.
  These quantities can then serve to distinguish users by their tokens
   and divide users into anonymity sets with potential matches between
   blinded token requests and tokens.

In the sequel, we assume that static DH oracles are confined to a
 prime-order subgroup:

- Protocols SHOULD use prime-order groups, or encodings such as Decaf
   {{Hamburg15}} or Ristretto {{?I-D.irtf-cfrg-ristretto255-decaf448}}
   that are naturally restricted to a prime-order subgroup.

- Protocols MAY require that secret scalars be congruent to 0 modulo h.

- Protocols MAY require that implementations verify p\*P = 0 before
   answering static DH queries if this can't be enforced naturally by
   the encoding.

This memo does not consider the security impact of static DH oracles in
 a composite-order group.


# Attacks


## Attacks on Generic Groups

Generic attacks treat the group operation as a black box, and thus work
 in any group, including elliptic curves over finite fields and
 multiplicative groups of finite fields.

Let p be the prime order of the group.

All known generic attacks take advantage of the ring structure in the
 powers of the scalar k to reduce the cost of a generic search for k.
The adversary queries the oracle at an element G to find k\*G, then
 queries the oracle at k\*G to find k\*(k\*G) = k^2\*G, then at k^2\*G
 to find k\*(k^2\*G) = k^3\*G, ad nauseam, until k^q\*G after q
 sequential queries.

The adversary can then add these elements to give any linear
 combination of the k^i in a scalar multiple of G.
In other words, the adversary can compute an implicit representation
 F(k)\*G of any polynomial F in k over F_p of degree up to q.
Implicit representations can also be compared for equality, to detect
 collisions between scalar multiples of G.

The baseline generic DLP attack on a prime-order group, with only
 knowledge of G and k\*G, and no static DH oracle, is Pollard's rho
 {{Pollard78}}, which costs O(sqrt{p}) group operations and O(1)
 memory, and can be effectively parallelized with low communication
 cost using the van Oorschot-Wiener collision search machine {{OW99}}.
For elliptic curves the negation map {{WZ98}} gives a small constant
 factor improvement over generic rho for a cost of about
 sqrt{p \* pi/4}
 curve additions.
For other specialized DLP attacks on transfers, twists, side channels,
 etc., we direct the reader to resources such as {{SafeCurves}} for
 references and focus here on generic attacks enabled by a static DH
 oracle.


### p - 1 Attack

When q >= d for a divisor d of p - 1, the adversary can recover k given
 (G, k\*G, k^d\*G) with O(sqrt{p/d} + sqrt{d}) group operations and
 essentially constant memory.

The approach is to find a discrete log of k^d in a subgroup of F_p with
 a collision search in implicit representation by scalar multiples of
 G, and then to extend it to a discrete log of k in F_p with another
 collision search, leading to an explicit representation of k that can
 be computed.

Let z_0 be a generator of (F_p)^\*, and z := z_0^d a (p - 1)/d-th root
 of unity.

First, find scalars u_1, v_1 with
 0 <= u_1, v_1 < d_1 := ceiling(sqrt{(p - 1)/d})
 giving a collision of the form:

~~~
(k^d z^{-u_1}) * G = (z^{d_1 v_1}) * G,
~~~

 by repeatedly multiplying the left starting with k^d\*G by z^{-1}
 and the right starting with G by z^{d_1} until equality holds.
This collision implies:

~~~
k^d = z^{u_1 + d_1 v_1}.
~~~

Next, find scalars u_2, v_2 with
 0 <= u_2, v_2 < d_2 := ceiling(sqrt{d})
 giving a collision:

~~~
(k z_0^{-u_2 (p - 1)/d}) * G
  = (z_0^{u_1 + d_1 v_1 + d_2 v_2 (p - 1)/d}) * G,
~~~

 again by repeatedly multiplying the left starting with k\*G by
 z_0^{(p - 1)/d} and the right starting with z_0^{u_1 + d_1 v_1} by
 z_0^{d_2 (p - 1)/d} until equality holds.
This collision implies:

~~~
k = z_0^{u_1 + d_1 v_1 + (u_2 + d_2 v_2) (p - 1)/d},
~~~

 as desired.

This class of attacks was presented in {{BG04}} and {{Cheon06}}, with
 improved cost analysis in {{KKM07}}, and extended from
 memory-intensive baby-step/giant-step tables to a random walk with
 essentially constant memory along the lines of Pollard's kangaroo in
 {{Cheon10}}.


### p + 1 Attack in Quadratic Extension

When q >= 2d for a divisor d of p + 1, the adversary can recover k
 given (G, k\*G, k^2\*G, ..., k^{2d}\*G) with O(sqrt{p/d} + d) group
 operations and essentially constant memory.

The approach is similar to the p - 1 attack, using an implicit
 representation in F_{p^2} instead of F_p.

Since F_{p^2}^\* is cyclic of order p^2 - 1 = (p + 1) (p - 1), it has a
 subgroup of order p + 1.
The adversary defines an element b = f(k) + g(k) theta in this
 subgroup, where theta is a square root in F_{p^2} of a quadratic
 nonresidue r in F_p, and f and g are certain polynomials over F_p
 constructed so that k = g(k)/(f(k) + 1).

The adversary can't compute b explicitly at first, but the polynomials
 f and g are also constructed so that b satisfies the equation:

~~~
b^d = (P_1(k) + P_2(k) theta)/P_3(k),
~~~

 where P_1, P_2, and P_3 are certain polynomials of degree at most 2d
 over F_p.
Let z_0 generate the subgroup of order p + 1, and let z := z_0^d
 generate that subgroup's subgroup of order (p + 1)/d.
Then b can be written as z_0^{w + w' (p + 1)/d}, and b^d as z^w.
For each i, write z^i = s_i + t_i theta for s_i, t_i in F_p.

To find w, the adversary seeks integers u, v with 0 <= u < m and
 0 <= v < floor((p + 1)/(m d)) <= m, where m := ceil(sqrt{(p + 1)/2}),
 giving a collision:

~~~
z^{-u} b^d = z^{m v},
~~~

 so that b^d = z^{u + m v}, i.e., w = u + m v.
To find this collision, the adversary writes the equation out as:

~~~
(s_{-u} + t_{-u} theta) (P_1(k) + P_2(k) theta)/P_3(k)
= s_{m v} + t_{m v} theta,
~~~

 or, equivalently:

~~~
P_1(k) s_{-u} + r P_2(k) t_{-u} = P_3(k) s_{m v},
P_1(k) t_{-u} +   P_2(k) s_{-u} = P_3(k) t_{m v}.
~~~

The adversary computes a kangaroo walk or baby-step/giant-step table of
 the two left-hand sides and the two right-hand sides in implicit
 representation to find colliding u and v and recover w = u + m v with
 cost O(sqrt{(p + 1)/d} + d).

Next, the adversary does similarly with the subgroup generated by
 z_0^{(p + 1)/d} to recover w' in cost O(sqrt{d}).

Once the adversary has w and w', they can explicitly compute the
 components of

~~~
b = z_0^{w + w' (p + 1)/d} = f(k) + g(k) theta,
~~~

 and from that they can recover k = g(k)/(f(k) + 1).

This class of attacks was first presented in {{Cheon06}} with
 memory-intensive baby-step/giant-step tables, and then extended to a
 random walk with essentially constant memory along the lines of
 Pollard's kangaroo in {{Cheon10}}.


### Generalizations of the p - 1 and p + 1 Attacks

The attacks were generalized in {{Satoh09}} to any divisor d of
 Phi_n(p), where Phi_n is the nth cyclotomic polynomial.
However, in {{KCL14}} the generalization was concluded to have no cost
 advantage over standard discrete log algorithms without a static DH
 oracle.

A variant of these attacks proposed in {{KC12}} uses a polynomial f
 over F_p of arbitrary degree d (which need not divide p +/- 1) and
 runs in time O~(sqrt{p/t} + d) where t is the number of absolutely
 irreducible factors of f(x) - f(y), and O~(...) denotes O(... log^m p)
 for some m.
However, {{KC12}} was unable to find any polynomials f providing better
 than O~(sqrt{p/d} + d) cost, and only achieved that cost in the case
 that d does divide p +/- 1.

The attacks were also generalized in {{Kim14}} to the GDLPwAI taking a
 collection of elements k^i * G for every i in a subgroup of
 (Z/(p - 1)Z)^* and finding k at somewhat lower computational cost.
However, it is no easier for an adversary to learn just these elements
 with a static DH oracle than to learn all the elements up to a divisor
 d of p +/- 1, so the generalization is ruled out by the same limits on
 feasible query cost.

A similar strategy of using an implicit representation of arithmetic in
 F_p was used in {{Maurer94}} to prove a nonuniform reduction from DLOG
 to CDH in any group of order p, provided an auxiliary elliptic curve
 E/F_p with sufficiently smooth order.
Such auxiliary curves have been found for real-world groups such as
 NIST P-256 to demonstrate computing this reduction in practice with a
 simulated CDH oracle {{MS23}}.

However, the {{Maurer94}} approach appears to require the use of a full
 CDH oracle, sending (x\*G, y\*G) to xy\*G, to multiply scalars in
 order to compute implicit polynomials in k of degree up to 2^q, while
 an SDH oracle only enables computing implicit polynomials in k of
 degree up to q, after q queries.
The best case of the elliptic curve arithmetic E/F_p for this
 reduction requires polynomials of degree around sqrt{p} (for
 multiplication by scalars in a subgroup of order sqrt{p}), which is
 far out of reach with sequential queries for any groups with DLOG
 security against rho.


### Multi-Target Attacks

{{Kim16}} extended the p - 1 attack to the multi-target setting: given
 L independent query responses (G, k_i \* G, k_i^d \* G) for 1 <= i <=
 L, compute _all_ the k_i in O(sqrt{L p/d} + sqrt{L d}) scalar
 multiplications, provided L << min(p/d, d)^{1/4}.
In brief, attacking a batch of L targets is sqrt{L} times cheaper than
 attacking each of the L targets independently.

However, this multi-target attack doesn't reduce the number of
 sequential queries needed to start, nor does it reduce the expected
 time to the _first_ k_i.
Thus, it is relevant only to amplify the impact of static DH attacks in
 a group where a single-target attack is already within reach.


## Attacks on Finite Fields

In a finite field F_q for prime q, without a static DH oracle, the
 state of the art in DLP (and SDH) is the general number field sieve,
 which costs {{Barbulescu13}}:

~~~
precomputation:         L^{cbrt(64/9) + o(1)}   ~ L^{1.923 + o(1)}
per-target cost:        L^{cbrt(3) + o(1)}      ~ L^{1.442 + o(1)},
~~~

 where

~~~
L = exp[(log q)^{1/3} (log log q)^{2/3}].
~~~

We do not consider extension fields here, since small-characteristic
 fields like binary fields have not appeared in IETF recommendations
 for Diffie-Hellman applications (XXX verify) and have been completely
 broken {{GKLWZ20}}, while medium-characteristic fields appear mainly
 in pairing-based cryptography which is out of scope for this memo.
Primes with sparse polynomial representations may also be vulnerable to
 the special number field sieve {{JP13}} {{FGHT16}}.

{{JLNT09}} extended the number field sieve to take advantage of a
 static DH oracle, with the following attack costs for
 large-characteristic fields:

~~~
oracle queries:         L^{cbrt(4/9) + o(1)}    ~ L^{0.763 + o(1)}
precomputation:         L^{cbrt(32/9) + o(1)}   ~ L^{1.526 + o(1)}
per-target cost:        L^{cbrt(3) + o(1)}      ~ L^{1.442 + o(1)}
~~~

These queries are nonadaptive, so they _need not_ be sequential; hence
 the feasible query cost may be considerably higher than for the generic
 attacks of {{BG04}} and {{Cheon06}}.
q need not be prime, as long as the characteristic is at least
 L^{2/3 + o(1)}; a similar attack was also extended to medium- and
 small-characteristic fields, with different costs.


## Attacks on Elliptic Curves over Extension Fields

In the group of rational points on an elliptic curve over an extension
 field F_{q^n} for medium to large prime power q, {{Granger10}}
 extended index calculus to solve the static DH problem with the
 following costs:

~~~
oracle queries:         O(q^{1 - 1/(n + 1)})
computation:            O~(q^{1 - 1/(n + 1)}),
~~~

 where O~(...) denotes O(... log^m q) for some m.

These queries are nonadaptive, so they _need not_ be sequential; hence
 the feasible query cost may be considerably higher than for the generic
 attacks of {{BG04}} and {{Cheon06}}.
The constant factors are prohibitively expensive to an attacker for
 small q, such as q = 2, but q need not be prime; the attacks apply
 just as well to extension fields of extension fields, e.g. to binary
 fields of composite extension degree to avoid the constant factors for
 small q.

At n = 1, there is no advantage over Pollard's rho at O(sqrt{q}) by
 issuing O(sqrt{q}) static DH queries.
The cost for n = 2 is O(q^{2/3}) queries and O~(q^{2/3}) computation;
 when p ~ q^2 ~ 2^256, this reduces the computational cost from ~2^128
 to ~2^85 but requires >2^85 oracle queries which is likely unrealistic
 even if they are parallelized.

The cost for n = 4 is O(q^{4/5}) queries and O~(q^{4/5}) computation,
 which is considerably cheaper than the cheapest DLP attacks (without a
 static DH oracle) on such curves based on index calculus at
 O~(q^{3/2}) {{GG16}}.
For example, a curve over F_{q^4} for q ~ 2^80 to defeat DLP without a
 static DH oracle might succumb after ~2^64 oracle queries (potentially
 in parallel) and ~2^64 computation.

A similar attack is available with reduced cost for n = 5 was shown in
 {{JV11}} and extended in {{FHJRV14}}, which was used to solve SDH in
 practice on the Third Oakley Group {{?RFC2409}}, defined over
 F_{2^155} with q = 2^31 and n = 5.

Curves over extension fields may have structure that admits attacks
 cheaper than Pollard's rho, such as {{JV12}} and {{GGMP21}}.
Others such as {{GG15}} found no advantage to index calculus over
 Pollard's rho on curves in binary extension fields F_{2^n} of prime
 degree n.
But these did not appear to consider additional advantage from a static
 DH oracle.
We do not review them further; study of the literature on DLP attacks
 without a static DH oracle are out of scope for this memo.

Protocol designers MUST consider {{Granger10}}, {{JV11}}, and
 {{FHJRV14}} attacks before exposing static DH oracles for any elliptic
 curves over extension fields, such as the Oakley EC2N groups
 {{?RFC2409}} or FourQ {{CL15}}.
Protocol designers MUST review the literature on DLP before deploying
 any elliptic curves over extension fields.


# Groups

We discuss mainly groups of order near 2^256:

- Much smaller groups provide inadequate generic DLP security even
   without static DH oracles.

- Much larger elliptic curve groups such as Decaf448
   {{?I-D.irtf-cfrg-ristretto255-decaf448}} and NIST P-384
   {{FIPS186-4}} {{SEC2}} {{?RFC5903}} are out of reach no matter what
   minor advantage a static DH oracle confers with the attacks here,
   and serve only as hedges against potential future breakthroughs in
   cryptanalysis.
  Such breakthroughs are naturally out of scope for a memo discussing
   the present state of the art.

The attack cost estimates were computed using PARI/GP {{PariGP}}
 version 2.15.3, with the optional seadata-small package installed
 {{PariGPPkgs}}, and with a small library of subroutines in the
 appendix.


## Ristretto255

Ristretto255 {{?I-D.irtf-cfrg-ristretto255-decaf448}} is a group of
 prime order based on Curve25519 {{Bernstein06}} {{?RFC7748}}, an
 elliptic curve over the prime field F_{2^255 - 19}.

~~~
{::include costs/ristretto255.out}
~~~

Ristretto255 is unaffected by the attacks of {{Granger10}}, {{JV11}},
 and {{FHJRV14}}, since it is defined over a prime field, not an
 extension field.

### Source code

~~~
{::include costs/ristretto255.gp}
~~~


## NIST P-256

NIST P-256, also known as secp256r1 {{FIPS186-4}} {{SEC2}}
 {{?RFC5903}}, is a short Weierstrass curve of prime order over the
 field F_q where q = 2^256 - 2^224 + 2^192 + 2^96 - 1.
For NIST P-256, p - 1 has many small factors, but p itself is large
 enough that even if the adversary can achieve 2^55 sequential queries
 over the course of a century, it would still cost over 2^100 group
 operations to mount a static DH attack.

~~~
{::include costs/nistp256.out}
~~~

NIST P-256 is unaffected by the attacks of {{Granger10}}, {{JV11}}, and
 {{FHJRV14}}, since it is defined over a prime field, not an extension
 field.

### Source code

~~~
{::include costs/nistp256.gp}
~~~


## Third Oakley Group

The Third Oakley Group {{?RFC2409}}, or Group 3 in the IANA IPsec IKE
 Group Description registry, is a Weierstrass curve over F_{2^155},
 with cofactor 12.
This group provides below 80-bit security against DLP, and so is unfit
 for most use today.
For example, at a rate of about 250 EHz, the Bitcoin network computes
 more than 2^90 hashes per year {{BlockchainHashrate}}.

The group is completely broken in practical terms by the {{JV11}}
 attack on curves over F_{2^155} as a degree-5 extension field over
 F_{2^31}; see {{Vitse10}} and {{FHJRV14}} for details.
The estimate of the computational cost here is the number of Intel Core
 i7-4650U CPU cycles presented in {{FHJRV14}}, which is considerably
 less than most other cost metrics counting number of curve additions.

~~~
{::include costs/oakley3.out}
~~~

### Source code

~~~
{::include costs/oakley3.gp}
~~~


## secp256k1

secp256k1 {{SEC2}} is a short Weierstrass curve of prime order over
 the field F_q where q = 2^256 - 2^32 - 977, used in Bitcoin and other
 cryptocurrencies.

secp256k1 is not recommended by the IETF.
We mention it here only because of its widespread use in
 cryptocurrencies, where the ready availability of high-quality
 implementations makes it tempting for related OPRF applications.

~~~
{::include costs/secp256k1.out}
~~~

secp256k1 is unaffected by the attacks of {{Granger10}}, {{JV11}}, and
 {{FHJRV14}}, since it is defined over a prime field, not an extension
 field.

### Source code

~~~
{::include costs/secp256k1.gp}
~~~


## FourQ

FourQ {{CL15}} is a twisted Edwards curve over an extension field
 F_{q^2} where q = 2^127 - 1, with a prime-order subgroup.
The designers of FourQ recommend point validation to prevent issues
 with cofactors and twists.
We do not consider the details of these issues here.
The implementor MUST do point validation, or the protocol designer MUST
 choose an encoding that is naturally restricted to the prime-order
 subgroup like Ristretto or Decaf.

FourQ is not recommended by the IETF.
We mention it here only because it has received considerable attention
 in the community with implementations at higher performance than
 Curve25519 taking advantage of arithmetic modulo a Mersenne prime.

~~~
{::include costs/fourq.out}
~~~

FourQ is unaffected by the attacks of {{JV11}} and {{FHJRV14}}, since
 its extension degree is not divisible by 5.

### Source code

~~~
{::include costs/fourq.gp}
~~~


## Multiplicative groups of finite fields of prime order

Multiplicative groups of finite fields of prime order have been have
 been deployed in various IETF protocols including TLS and IPsec for
 traditional Diffie-Hellman applications.
Exposing a static DH oracle substantially improves the NFS attack
 costs, and the oracle queries needed by the improved attack are
 nonadaptive, so they can be parallelized.
We summarize the NFS costs for several common prime sizes as used in
 {{?RFC2409}}, {{?RFC3526}}, and {{?RFC7919}}, provided the prime has
 no additional structure that could be exploited, for example, by the
 special number field sieve:

~~~
{::include costs/staticffdh.out}
~~~

### Source code

~~~
{::include costs/staticffdh.gp}
~~~


# Security Considerations

This document is a security consideration.


# IANA Considerations

This document has no IANA actions.



--- back

# Attack Cost Estimate Subroutines

The following PARI/GP {{PariGP}} subroutines are gathered into a file
 called lib.gp for use in the attack cost estimation scripts above.

~~~
{::include costs/lib.gp}
~~~


# Acknowledgments
{:numbered="false"}

TODO acknowledge.

- Alex Davidson provided editorial suggestions.
- Michele Orrù encouraged scripting the attack cost estimation.
