{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Category: 
A Business Policy Category defines a classification of related Business Policys.

Documentation : https://framework.sysfeat.com/pages/952ead2b67285cfd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952ead2b67285cfd where -- ========== BusinessPolicyCategory

open import Agda.Primitive
open import SysFEAT.EA.952eaada67285ac3 public -- PolicyFrameworkCategory

BusinessPolicyCategory : ThirdOrderClass
BusinessPolicyCategory = PropertyType


--  BusinessPolicyCategory is subTypeOf PolicyFrameworkCategory
st-952ead2b67285cfd-952eaada67285ac3 : BusinessPolicyCategory ⊏ₑ PolicyFrameworkCategory
st-952ead2b67285cfd-952eaada67285ac3 = polySubTypeOf-identity


-- == Relations =======================
