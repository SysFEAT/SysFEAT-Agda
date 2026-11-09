{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Portfolio Stage: 


Documentation : https://framework.sysfeat.com/pages/22ba264367643346.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.22ba264367643346 where -- ========== TechnologyPortfolioStage

open import Agda.Primitive
open import SysFEAT.EA.22ba23ea67643262 public -- TechnologyManagementInitiative

TechnologyPortfolioStage : StateClass
TechnologyPortfolioStage = StateConcept



-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Technology Management Initiative: -}
stateOfTechnologyManagementInitiative :  Linkage TechnologyPortfolioStage TechnologyManagementInitiative
stateOfTechnologyManagementInitiative = make_meronymyRelation "State of Technology Management Initiative" "State of Technology Management Initiative"

