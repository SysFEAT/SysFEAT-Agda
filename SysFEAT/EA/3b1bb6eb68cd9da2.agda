{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Intangible Resource Agent: 
An Individual Intangible Resource Agent is a Individual Resource Agent that does not have physical substance.Example:- Individual Software System.- Social groups,

Documentation : https://framework.sysfeat.com/pages/3b1bb6eb68cd9da2.htm

External references:
  WordNet - Intangible Asset: https://en-word.net/ili/i106769
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1bb6eb68cd9da2 where -- ========== IndividualIntangibleResourceAgent

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- IndividualResourceAgent
open import SysFEAT.EA.c80afd2f6784305d public -- IntangibleResourceAgent

IndividualIntangibleResourceAgent : AgentType
IndividualIntangibleResourceAgent = IndividualAgent


--  IndividualIntangibleResourceAgent is subTypeOf IndividualResourceAgent
st-3b1bb6eb68cd9da2-fe1c231267880201 : IndividualIntangibleResourceAgent ⊏ₑ IndividualResourceAgent
st-3b1bb6eb68cd9da2-fe1c231267880201 = polySubTypeOf-identity

postulate -- IndividualIntangibleResourceAgent is PowerInstanceOf Intangible Resource Agent
  pi-3b1bb70868cd9e13 : IndividualIntangibleResourceAgent ∷ₚₑ IntangibleResourceAgent

-- == Relations =======================
