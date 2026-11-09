{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Process: 
Individual Resource Process is the root instance of processes performed by Individual Resource Agents.

Documentation : https://framework.sysfeat.com/pages/fe1c24e567880326.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe1c24e567880326 where -- ========== IndividualResourceProcess

open import Agda.Primitive
open import SysFEAT.EA.fe1c250d678803b6 public -- IndividualResourceBehavior
open import SysFEAT.SOF.a273b4f465b7a81f public -- IndividualProcess
open import SysFEAT.EA.e2ef095b62147bf9 public -- ResourceActionProcess

IndividualResourceProcess : BehaviorType
IndividualResourceProcess = IndividualBehavior


--  IndividualResourceProcess is subTypeOf IndividualResourceBehavior
st-fe1c24e567880326-fe1c250d678803b6 : IndividualResourceProcess ⊏ₑ IndividualResourceBehavior
st-fe1c24e567880326-fe1c250d678803b6 = polySubTypeOf-identity

--  IndividualResourceProcess is subTypeOf IndividualProcess
st-fe1c24e567880326-a273b4f465b7a81f : IndividualResourceProcess ⊏ₑ IndividualProcess
st-fe1c24e567880326-a273b4f465b7a81f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Resource Process Type: -}
resourceProcessType :  Linkage IndividualResourceProcess ResourceActionProcess
resourceProcessType = make_Relation "Resource Process Type" "Resource Process Type"

