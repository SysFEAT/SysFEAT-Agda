{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Application: 
A Logical Application is an encapsulation of application functionality that is independent of a particular implementation. For example, the classification of all purchase request processing applications implemented in an enterprise.

Documentation : https://framework.sysfeat.com/pages/255833f95c6d1db3.htm

External references:
  OpenGroup - TOGAF - Logical Application Component: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.255833f95c6d1db3 where -- ========== LogicalApplication

open import Agda.Primitive
open import SysFEAT.EA.2558338d5c6d1d1b public -- LogicalSOftwareSystem

LogicalApplication : BoundedIndividualMetaClass
LogicalApplication = AssetType


--  LogicalApplication is subTypeOf LogicalSOftwareSystem
st-255833f95c6d1db3-2558338d5c6d1d1b : LogicalApplication ⊏ₑ LogicalSOftwareSystem
st-255833f95c6d1db3-2558338d5c6d1d1b = polySubTypeOf-identity


-- == Relations =======================
