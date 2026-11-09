{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Human Agent Type: 
A Human Agent Type is a kind of Resource Agent Type that represents any type of entity with intentionality, decision-making capacity, and the ability to act-whether as an individual person or a collective social unit.

Documentation : https://framework.sysfeat.com/pages/ffdf61506860875a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf61506860875a where -- ========== HumanAgentType

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- ResourceAgentType

HumanAgentType : AgentMetaClass
HumanAgentType = AgentType


--  HumanAgentType is subTypeOf ResourceAgentType
st-ffdf61506860875a-e2ef091962147ad7 : HumanAgentType ⊏ₑ ResourceAgentType
st-ffdf61506860875a-e2ef091962147ad7 = polySubTypeOf-identity


-- == Relations =======================
