{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent MetaClass: 
The Agent MetaClass of Agent Type.

Documentation : https://framework.sysfeat.com/pages/a88110996ad95aaf.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a88110996ad95aaf where -- ========== AgentMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- BoundedIndividualMetaClass

AgentMetaClass : ThirdOrderClass
AgentMetaClass = SecondOrderClass

--  AgentMetaClass is subTypeOf BoundedIndividualMetaClass
st-a88110996ad95aaf-60876d5c68de82f2 : AgentMetaClass ⊏ₑ BoundedIndividualMetaClass
st-a88110996ad95aaf-60876d5c68de82f2 = polySubTypeOf-identity


-- == Relations =======================
