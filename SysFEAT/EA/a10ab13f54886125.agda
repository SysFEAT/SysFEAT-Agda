{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Driver: 
A Business Driver is a kind of Exogenous Driver which expresses expectations coming from Suppliers (customers or suppliers) who interact directly with the enterprise.

Documentation : https://framework.sysfeat.com/pages/a10ab13f54886125.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a10ab13f54886125 where -- ========== BusinessDriver

open import Agda.Primitive
open import SysFEAT.EA.7a717ae75596283e public -- ExogenousDriver
open import SysFEAT.C-SOF.08d17cde678a2b47 public -- Supplier

BusinessDriver : ClassOfIndividual
BusinessDriver = Individual


--  BusinessDriver is subTypeOf ExogenousDriver
st-a10ab13f54886125-7a717ae75596283e : BusinessDriver ⊏ₑ ExogenousDriver
st-a10ab13f54886125-7a717ae75596283e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Subject Partner: 
Partner Type which is the subject of a business need.
-}
subjectPartner :  Linkage BusinessDriver Supplier
subjectPartner = make_Relation "Subject Partner" "Subject Partner"

postulate -- subjectPartner is subTypeOf driverSubject
  st-2cc9764f55263e70-4b945a6e68a47bdf  : subjectPartner  ⊏⋆ᵣ  driverSubject
