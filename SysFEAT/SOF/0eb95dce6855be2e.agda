{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Model Container: 
A Model Container is a Container of Model Building Blocks used to describe both the architecture of the enterprise and Initiatives aimed at designing, developing, running, adapting and maintaining this architecture over time.Model Containers range from Information Dictionary(ies), architecture Library(ies) up to an entire Enterprise.

Documentation : https://framework.sysfeat.com/pages/0eb95dce6855be2e.htm

External references:
  OMG - UML - Namespace: https://www.omg.org/spec/UML/2.5.1/PDF#page=69
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0eb95dce6855be2e where -- ========== ModelContainer

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- ModelLexicalScope
open import SysFEAT.UpperOntology.0eb93b4268549a66 public -- Container
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.SOF.0eb95e566855bed9 public -- ModelBuildingBlock
open import SysFEAT.SOF.d745e99d6aa38a7a public -- Tag

ModelContainer : ∀ (u : Level) → ClassOfMixedOrderEntity u 
ModelContainer u  = MixedOrderEntity u 


--  ModelContainer is subTypeOf ModelLexicalScope
st-0eb95dce6855be2e-0eb95db46855bdd5 : ∀ {u v} → ModelContainer u ⊏⋆ₑ ModelLexicalScope v
st-0eb95dce6855be2e-0eb95db46855bdd5 = trivialPolySubTypeOfEntity

--  ModelContainer is subTypeOf Container
st-0eb95dce6855be2e-0eb93b4268549a66 : ∀ {u v} → ModelContainer u ⊏⋆ₑ Container v
st-0eb95dce6855be2e-0eb93b4268549a66 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Categorization Block: -}
packagedCategorizationBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelCategorizationBlock v)
packagedCategorizationBlock = make_nestingRelation "Packaged Categorization Block" "Packaged Categorization Block"

postulate -- packagedCategorizationBlock is subTypeOf scopedModelBlock
  st-0eb97c566855cef7-0eb96a306855c816  : ∀ {u v} → packagedCategorizationBlock  {u}  {v}  ⊏⋆ᵣ  scopedModelBlock  {u}  {v}

-- -------------------------------------------------------------------------------------------- 
{- Packaged Model Block: -}
packagedModelBlock : ∀ {u v} →  Linkage (ModelContainer u) (ModelBuildingBlock v)
packagedModelBlock = make_nestingRelation "Packaged Model Block" "Packaged Model Block"

postulate -- packagedModelBlock is subTypeOf packagedBuildingBlock
  st-3346b0ad687846e9-3346a99968784284  : ∀ {u v} → packagedModelBlock  {u}  {v}  ⊏⋆ᵣ  packagedBuildingBlock  {u}  {v}
postulate -- packagedModelBlock is subTypeOf scopedModelBlock
  st-3346b0ad687846e9-0eb96a306855c816  : ∀ {u v} → packagedModelBlock  {u}  {v}  ⊏⋆ᵣ  scopedModelBlock  {u}  {v}

-- -------------------------------------------------------------------------------------------- 
{- Packaged Tag: -}
packagedTag : ∀ {u} →  Linkage (ModelContainer u) Tag
packagedTag = make_nestingRelation "Packaged Tag" "Packaged Tag"

postulate -- packagedTag is subTypeOf scopedAnnotationBlock
  st-3346c67e68785433-0eb97bc46855ce52  : ∀ {u} → packagedTag  {u}   ⊏⋆ᵣ  scopedAnnotationBlock  {u} 
