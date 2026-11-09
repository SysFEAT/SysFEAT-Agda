{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person Type: 


Documentation : https://framework.sysfeat.com/pages/41b8e49f65ee66ec.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.41b8e49f65ee66ec where -- ========== PersonType

open import Agda.Primitive
open import SysFEAT.EA.2c93337b67644a6a public -- HumanResource
open import SysFEAT.EA.be94e82f655c90e7 public -- PhysicalBusinessAgent

PersonType : BoundedIndividualMetaClass
PersonType = AssetType


--  PersonType is subTypeOf HumanResource
st-41b8e49f65ee66ec-2c93337b67644a6a : PersonType ⊏ₑ HumanResource
st-41b8e49f65ee66ec-2c93337b67644a6a = polySubTypeOf-identity

--  PersonType is subTypeOf PhysicalBusinessAgent
st-41b8e49f65ee66ec-be94e82f655c90e7 : PersonType ⊏ₑ PhysicalBusinessAgent
st-41b8e49f65ee66ec-be94e82f655c90e7 = polySubTypeOf-identity


-- == Relations =======================
