{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Portfolio Stage: 


Documentation : https://framework.sysfeat.com/pages/24f84973664783b4.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24f84973664783b4 where -- ========== HardwarePortfolioStage

open import Agda.Primitive
open import SysFEAT.EA.24f8475766477e0a public -- HardwareManagementInitiative

HardwarePortfolioStage : StateClass
HardwarePortfolioStage = StateConcept



-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Hardware Management Initiative: -}
stateOfHardwareManagementInitiative :  Linkage HardwarePortfolioStage HardwareManagementInitiative
stateOfHardwareManagementInitiative = make_meronymyRelation "State of Hardware Management Initiative" "State of Hardware Management Initiative"

