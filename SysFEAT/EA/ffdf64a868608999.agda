{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Agent Configuration: 
A Resource Agent Configuration is a Resource Agent Type that is combination of Human Agent Types and Artifacts.

Documentation : https://framework.sysfeat.com/pages/ffdf64a868608999.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf64a868608999 where -- ========== ResourceAgentConfiguration

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- ResourceAgentType

ResourceAgentConfiguration : AgentMetaClass
ResourceAgentConfiguration = AgentType


--  ResourceAgentConfiguration is subTypeOf ResourceAgentType
st-ffdf64a868608999-e2ef091962147ad7 : ResourceAgentConfiguration ⊏ₑ ResourceAgentType
st-ffdf64a868608999-e2ef091962147ad7 = polySubTypeOf-identity


-- == Relations =======================
