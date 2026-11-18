{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

SOF - Business System Operating Pattern: 
The SOF - Business System Operating Pattern domain defines concepts and relationships used to model how a Business System operates/functions in its Operating Eco-System..It includes Business Systems, System Processes, Business System Interaction Processs, System Rules, Functionality(ies), Information Outcome Events.

Documentation : https://framework.sysfeat.com/pages/255cd30862aa0da8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
module SysFEAT.R-SOF.sysfeat-domain-255cd30862aa0da8 where -- ========== SOF - Business System Operating Pattern

open import SysFEAT.EA.sysfeat-domain-75ef50ab620fb787 public -- EA Pattern - Physical Data Domain
open import SysFEAT.SOF.sysfeat-domain-02af0a4b5a182417 public -- System Operating Framework - SOF
open import SysFEAT.R-SOF.sysfeat-domain-d670b6155ffe8bb1 public -- SOF - Business Resource Operating Pattern (B-SOF)
open import SysFEAT.EA.sysfeat-domain-d160039d62e081a5 public -- EA Pattern - Technology Operating Pattern
open import SysFEAT.EA.sysfeat-domain-2b58a67a5eec0662 public -- EA Pattern - Data Domain
open import SysFEAT.SOF.sysfeat-domain-c30bd1505a5d97f9 public -- Architecture Assets

open import SysFEAT.R-SOF.23bf9a5368ad2bdd public -- System Rule
open import SysFEAT.R-SOF.df7ce6c363682f79 public -- Requirement
open import SysFEAT.R-SOF.dd26aa0568a1f939 public -- Functionality
open import SysFEAT.R-SOF.302238be5ec9020a public -- Information Outcome Event
open import SysFEAT.R-SOF.46194939560d374f public -- System Process
open import SysFEAT.R-SOF.7a0a06c45ddf969e public -- Business System Interaction Process
open import SysFEAT.R-SOF.6246927f61b81996 public -- Business System Asset
open import SysFEAT.R-SOF.278675d65b252f4d public -- Business System
open import SysFEAT.R-SOF.c450d4c261de5f07 public -- Business System Environment
open import SysFEAT.R-SOF.4edf5eab5fc58ef3 public -- Business System Environment Sxcenario
open import SysFEAT.R-SOF.3642454f6007e80e public -- Deployed Business System
