{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Portfolio Stage: 


Documentation : https://framework.sysfeat.com/pages/052015c666474dfe.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.052015c666474dfe where -- ========== ApplicationPortfolioStage

open import Agda.Primitive
open import SysFEAT.EA.0520133e66474954 public -- AssetPortfolioStage
open import SysFEAT.EA.24f82e8c66475e9c public -- ApplicationManagementInitiative

ApplicationPortfolioStage : StateClass
ApplicationPortfolioStage = IndividualState


--  ApplicationPortfolioStage is subTypeOf AssetPortfolioStage
st-052015c666474dfe-0520133e66474954 : ApplicationPortfolioStage ⊏ₑ AssetPortfolioStage
st-052015c666474dfe-0520133e66474954 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Application Management Initiative: -}
stateOfApplicationManagementInitiative :  Linkage ApplicationPortfolioStage ApplicationManagementInitiative
stateOfApplicationManagementInitiative = make_meronymyRelation "State of Application Management Initiative" "State of Application Management Initiative"

