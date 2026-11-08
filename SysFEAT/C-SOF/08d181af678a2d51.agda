{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer: 
A Customer is a Supplier who orders and/or uses Products (goods or services) produced by enterprises.A Customer is part of an ecosystem and has the ability to choose between different Products.

Documentation : https://framework.sysfeat.com/pages/08d181af678a2d51.htm

External references:
  MBN - Customer: https://marketbusinessnews.com/financial-glossary/customer-definition-meaning/#:~:text=A%20customer%20is%20a%20person,what%20they%20have%20on%20sale.
  OpenGroup - ArchiMate - Business-Actor: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Actor
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.08d181af678a2d51 where -- ========== Customer

open import Agda.Primitive
open import SysFEAT.C-SOF.08d17cde678a2b47 public -- Supplier
open import SysFEAT.EA.4efc703b6ae4991a public -- CustomerSegment
open import SysFEAT.EA.bcebd31f5491302c public -- BusinessAgentType

Customer : ClassOfClassOfBoundedIndividual
Customer = ClassOfBoundedIndividual

--  Customer is subTypeOf Supplier
st-08d181af678a2d51-08d17cde678a2b47 : Customer ⊏ₑ Supplier
st-08d181af678a2d51-08d17cde678a2b47 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Customer Segment: -}
customerSegment : ∀ {u} →  Linkage Customer (CustomerSegment u)
customerSegment = make_subTypeOf "Customer Segment" "Customer Segment"

postulate -- customerSegment is subTypeOf assetCategorizationScheme
  st-4efc70776ae499ad-f69620606a0f9c94  : customerSegment  ⊏⋆ᵣ  assetCategorizationScheme  {lsuc(lsuc(lzero))}

-- -------------------------------------------------------------------------------------------- 
{- State of Business Agent Type: -}
stateOfBusinessAgentType :  Linkage Customer BusinessAgentType
stateOfBusinessAgentType = make_classOfMeronymy "State of Business Agent Type" "State of Business Agent Type"

