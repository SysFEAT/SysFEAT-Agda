{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain: 
An Information Domain is a family of Information Assets which constitutes a unit a knowlege required by an Agent Type to operate during Behavior Type execution.Information Domains are functional groupings of Information Assets.Within a Information Domain Family, a Information Asset can belong to one and only one Information Domain.

Documentation : https://framework.sysfeat.com/pages/cd90e5976ae187c0.htm

External references:
  DDD - Bounded Context: https://www.dddcommunity.org/resources/ddd_terms?boundedcontext
  Martin Fowler - BoundedContext.html: https://martinfowler.com/bliki/BoundedContext.html
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.cd90e5976ae187c0 where -- ========== InformationDomain

open import Agda.Primitive
open import SysFEAT.UpperOntology.ad05c1986ae142c1 public -- EnumeratedFamily
open import SysFEAT.UpperOntology.bab6c7346ad70999 public -- ThirdOrderClass

InformationDomain : ThirdOrderClass
InformationDomain = SecondOrderClass

--  InformationDomain is subTypeOf EnumeratedFamily
st-cd90e5976ae187c0-ad05c1986ae142c1 : InformationDomain ⊏ₑ EnumeratedFamily
st-cd90e5976ae187c0-ad05c1986ae142c1 = polySubTypeOf-identity

--  InformationDomain is subTypeOf ThirdOrderClass
st-cd90e5976ae187c0-bab6c7346ad70999 : InformationDomain ⊏ₑ ThirdOrderClass
st-cd90e5976ae187c0-bab6c7346ad70999 = polySubTypeOf-identity


-- == Relations =======================
