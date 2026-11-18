{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework Class: 
Policy Framework Class is the class of all Policy Frameworks.Its instances are the subtypes of Policy Framework.Examples: 1) Regulatory Framework2) Business Policy Framework

Documentation : https://framework.sysfeat.com/pages/a88122526ad9893a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a88122526ad9893a where -- ========== PolicyFrameworkClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- ClassOfAbstractEntity

PolicyFrameworkClass : AbstractEntityMetaClass
PolicyFrameworkClass = ClassOfAbstractEntity


--  PolicyFrameworkClass is subTypeOf ClassOfAbstractEntity
st-a88122526ad9893a-3aca55ee6aa645c2 : PolicyFrameworkClass ⊏ₑ ClassOfAbstractEntity
st-a88122526ad9893a-3aca55ee6aa645c2 = polySubTypeOf-identity


