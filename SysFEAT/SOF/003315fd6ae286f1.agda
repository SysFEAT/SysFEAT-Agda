{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain Family: 
An Information Domain Family is a functional grouping of Information Domains.

Documentation : https://framework.sysfeat.com/pages/003315fd6ae286f1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.003315fd6ae286f1 where -- ========== InformationDomainFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.ad05c1986ae142c1 public -- EnumeratedFamily
open import SysFEAT.UpperOntology.003302806ae27b7c public -- FourthOrderClass
open import SysFEAT.SOF.00330ec96ae27ee9 public -- InformationDomainGroup

InformationDomainFamily : ThirdOrderClass
InformationDomainFamily = SecondOrderClass

--  InformationDomainFamily is subTypeOf EnumeratedFamily
st-003315fd6ae286f1-ad05c1986ae142c1 : InformationDomainFamily ⊏ₑ EnumeratedFamily
st-003315fd6ae286f1-ad05c1986ae142c1 = polySubTypeOf-identity

--  InformationDomainFamily is subTypeOf FourthOrderClass
st-003315fd6ae286f1-003302806ae27b7c : InformationDomainFamily ⊏ₑ FourthOrderClass
st-003315fd6ae286f1-003302806ae27b7c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Information Family Part: -}
informationFamilyPart :  Linkage InformationDomainFamily InformationDomainGroup
informationFamilyPart = make_classOfRelation "Information Family Part" "Information Family Part"

