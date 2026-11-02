{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Partition of Concept  Class

Documentation : https://framework.sysfeat.com/pages/051d07966ae96b83.htm

External references:
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.051d07966ae96b83 where -- ============ PartitionOfConceptClass

open import SysFEAT.UpperOntology.cd90d8756ae17cc9 public -- ConceptClassPartition
open import SysFEAT.UpperOntology.8d1fa46c6ae82899 public -- ConceptClass
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- ClassOfMixedOrderEntity
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- ClassOfOrderedEntity        


-- ============================================================
-- I. Partition Definition
-- ============================================================ 
PartitionOfConceptClass : ∀ (u : Level) → (ConceptClassPartition u)
PartitionOfConceptClass u = ClassOfEntity u

postulate
  051d079e6ae96bb0 :  ∀ {u} →  (PartitionOfConceptClass u) —⟨ partitionedClass ⟩→ (PartitionOfConceptClass u)
  8d1fbb426ae82e8b :  ∀ {u} →  (PartitionOfConceptClass u) —⟨ memberClass ⟩→ (ClassOfOrderedEntity u)
  8d1fbb1c6ar82e29 :  ∀ {u} →  (PartitionOfConceptClass u) —⟨ memberClass ⟩→ (ClassOfMixedOrderEntity u)


