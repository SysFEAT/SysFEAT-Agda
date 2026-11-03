

{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

OrderedPartitonOfClassOfEntity:
A ClassOfEntity is either a ClassOfMixedOrderEntity or a ClassOfOrderedEntity

Documentation : https://framework.sysfeat.com/pages/7d356ce368f37746.htm

External references:
  SysFEAT - TheoraticalFoundations- Multilevel Modeling : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.7d356ce368f37746 where -- ============ OrderedPartitonOfClassOfEntity

open import SysFEAT.UpperOntology.cd90d8756ae17cc9 public -- ConceptClassPartition
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- ClassOfMixedOrderEntity
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- ClassOfOrderedEntity        


-- ============================================================
-- I. Partition Definition
-- ============================================================ 
OrderedPartitonOfClassOfEntity : ∀ (u : Level) → (ConceptClassPartition u)
OrderedPartitonOfClassOfEntity u = ClassOfEntity u

postulate
  7d356ce368f37746 :  ∀ {u} →  (OrderedPartitonOfClassOfEntity u) —⟨ partitionedClass ⟩→ (ClassOfEntity u)
  37a045f36aea4bde :  ∀ {u} →  (OrderedPartitonOfClassOfEntity u) —⟨ memberClass ⟩→ (ClassOfOrderedEntity u)
  37a045f36aea4bc6 :  ∀ {u} →  (OrderedPartitonOfClassOfEntity u) —⟨ memberClass ⟩→ (ClassOfMixedOrderEntity u)

  

