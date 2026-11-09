{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Management Stage: 
A Management Stage is a past, current or future state of a Management System.Each Management Stage represents a Management Initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives assigned to Functional Assets managed in the Management System. The set of all Management Stages of an Management System defines its Roadmap.

Documentation : https://framework.sysfeat.com/pages/05200e1c66474509.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.05200e1c66474509 where -- ========== ManagementStage

open import Agda.Primitive
open import SysFEAT.SOF.e78c5eb0661989f9 public -- InitiativeStage
open import SysFEAT.EA.05201b936647570a public -- ManagementInitiative

ManagementStage : StateClass
ManagementStage = IndividualState


--  ManagementStage is subTypeOf InitiativeStage
st-05200e1c66474509-e78c5eb0661989f9 : ManagementStage ⊏ₑ InitiativeStage
st-05200e1c66474509-e78c5eb0661989f9 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Management Initiative: -}
stateOfManagementInitiative :  Linkage ManagementStage ManagementInitiative
stateOfManagementInitiative = make_meronymyRelation "State of Management Initiative" "State of Management Initiative"

