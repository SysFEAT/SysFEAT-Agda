{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent State Type: 
An Agent State Type is a temporal slice type of an Agent Type related to its lifefcyle.Examples:. The lifecycle phases of a person, such as childhood, adulthood, eldery stage.. The lifecyle phases of a hospital such as construction phase, operation and maintenance phase, renovation and expansion phase, decommissioning phase.

Documentation : https://framework.sysfeat.com/pages/c80ac8f367841131.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c80ac8f367841131 where -- ========== AgentStateType

open import Agda.Primitive
open import SysFEAT.SOF.e13ce269678f11ed public -- AssetStateType
open import SysFEAT.SOF.79368381561716a6 public -- AgentType

AgentStateType : ClassOfClassOfBoundedIndividual
AgentStateType = ClassOfBoundedIndividual

--  AgentStateType is subTypeOf AssetStateType
st-c80ac8f367841131-e13ce269678f11ed : AgentStateType ⊏ₑ AssetStateType
st-c80ac8f367841131-e13ce269678f11ed = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Agent Type: -}
stateOfAgentType :  Linkage AgentStateType AgentType
stateOfAgentType = make_classOfMeronymy "State of Agent Type" "State of Agent Type"

