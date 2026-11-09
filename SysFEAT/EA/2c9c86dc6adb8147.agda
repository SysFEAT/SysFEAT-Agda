{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity Asset: 
A Conceptual Entity Asset is the representation of any type of tangible or intanglible resource, or its respective state, that is critical for comprehending an enterprise, including its data, resources, and activities.Similar to any Information Asset, a Conceptual Entity Asset can be classified into three categories:1)  Conceptual Entitys denote entities that can change over time.2) Event Concepts embody the temporal boundaries associated with Conceptual Entitys.3) Concept Propertys represent immutable characteristics of Conceptual Entitys.

Documentation : https://framework.sysfeat.com/pages/2c9c86dc6adb8147.htm

External references:
  OMG - UAF - OperationalInformation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInformation
  Russell Ackoff - Choice & Communication - Concept: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Concept
  OMG - BACM - Business Object: https://www.omg.org/spec/BACM/1.0/PDF#page=47
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2c9c86dc6adb8147 where -- ========== ConceptualEntityAsset

open import Agda.Primitive
open import SysFEAT.C-SOF.4aebd76d69641638 public -- ConceptualElement

ConceptualEntityAsset : ∀ (u : Level) → ClassOfElement u 
ConceptualEntityAsset u  = Element u 


--  ConceptualEntityAsset is subTypeOf ConceptualElement
st-2c9c86dc6adb8147-4aebd76d69641638 : ∀ {u v} → (ConceptualEntityAsset u) ⊏⋆ₑ (ConceptualElement v)
st-2c9c86dc6adb8147-4aebd76d69641638 = trivialPolySubTypeOfEntity


