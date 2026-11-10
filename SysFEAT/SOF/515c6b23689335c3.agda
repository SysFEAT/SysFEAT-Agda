{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Directive: 
A Directive is an authoritative declaration that indicates how Agent Types and their Behavior Types should be (or should not be) in the enterprise.Specifically, a Directive defines, constrains or liberates some aspects of an Agent Type and its Behavior Types. As such, Directives shall be considered as constraining Asset Propertys.Directives are intended to assert agent structures or to control or influence their Behaviors. Directives are stated in declarative form.

Documentation : https://framework.sysfeat.com/pages/515c6b23689335c3.htm

External references:
  OpenGroup - ArchiMate - Constraint: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Motivation-Elements.html#sec-Constraint
  OMG - SBVR - Element of Guidance: https://www.omg.org/spec/SBVR/1.5/PDF#page=40
  OMG - BMM - Directive: https://www.omg.org/spec/BMM/1.3/PDF#page=41
  UCF Glossary - Directive: https://compliancedictionary.com/term/9062
  OMG - UAF - Rule: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Rule
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.515c6b23689335c3 where -- ========== Directive

open import Agda.Primitive
open import SysFEAT.SOF.515c6a856893324e public -- AssetProperty
open import SysFEAT.SOF.9397c3d86877842f public -- PolicyAsset
open import SysFEAT.UpperOntology.3e525e406ab05b0d public -- CompositeProperty
open import SysFEAT.SOF.83f88fd567406e53 public -- AssetPropertyType
open import SysFEAT.SOF.7e3474f06af36c2f public -- PolicyCategory
open import SysFEAT.UpperOntology.3492c53e619642ed public -- ClassOfBoundedIndividual

Directive : AssetPropertyType
Directive = AssetProperty

--  Directive is subTypeOf AssetProperty
st-515c6b23689335c3-515c6a856893324e : Directive ⊏ₑ AssetProperty
st-515c6b23689335c3-515c6a856893324e = polySubTypeOf-identity

--  Directive withAspect PolicyAsset
st-515c6b23689335c3-9397c3d86877842f : Directive ⊏ₐₑ PolicyAsset (lsuc( lzero))
st-515c6b23689335c3-9397c3d86877842f = polySubTypeOf-identity

--  Directive is subTypeOf CompositeProperty
st-515c6b23689335c3-3e525e406ab05b0d : Directive ⊏ₑ CompositeProperty
st-515c6b23689335c3-3e525e406ab05b0d = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Directive: -}
specializedDirective :  Linkage Directive Directive
specializedDirective = make_subTypeOf "Specialized Directive" "Specialized Directive"

postulate -- specializedDirective is subTypeOf specializedProperty
  st-190c79c26896690d-1662112a68925f90  : specializedDirective    ⊏⋆ᵣ  specializedProperty  

-- -------------------------------------------------------------------------------------------- 
{- Realized Directive: -}
realizedDirective :  Linkage Directive Directive
realizedDirective = make_subTypeOf "Realized Directive" "Realized Directive"

postulate -- realizedDirective is subTypeOf specializedProperty
  st-190c7a7f6896696e-1662112a68925f90  : realizedDirective    ⊏⋆ᵣ  specializedProperty  

-- -------------------------------------------------------------------------------------------- 
{- Policy Categorization: -}
policyCategorization : ∀ {u} →  Linkage Directive (PolicyCategory u)
policyCategorization = make_subTypeOf "Policy Categorization" "Policy Categorization"

postulate -- policyCategorization is subTypeOf conceptCategorization
  st-7e3475256af36cd1-8d1fcd3c6ae82f99  : ∀ {u} → policyCategorization   {u}  ⊏⋆ᵣ  conceptCategorization  {lzero}  {u}

-- -------------------------------------------------------------------------------------------- 
{- Directive Subject: 
Any Asset Type that is the subject of a Directive.
-}
-- Aggregate Member : Directive Subject
DirectiveSubject : ClassOfMixedOrderEntity
DirectiveSubject = MixedOrderEntity



--  DirectiveSubject withAspect UnboundedMember
st-190c75cc689666a9-8cfaf71a6852b042 : DirectiveSubject ⊏ₐₑ UnboundedMember (lsuc( lzero))
st-190c75cc689666a9-8cfaf71a6852b042 = polySubTypeOf-identity

-- Membership relation
membershipOfDirectiveSubject :  Linkage Directive DirectiveSubject
membershipOfDirectiveSubject = make_upwardNestingRelation "directiveSubject membership" "nested directiveSubject"

-- Aggregation relation
aggregationOfClassOfBoundedIndividualDirectiveSubject :  Linkage DirectiveSubject ClassOfBoundedIndividual
aggregationOfClassOfBoundedIndividualDirectiveSubject = make_Relation "ClassOfBoundedIndividual aggregation" "aggregated ClassOfBoundedIndividual"

{- directiveSubject : derived relation obtained by composing
   membershipOfDirectiveSubject and aggregationOfClassOfBoundedIndividualDirectiveSubject
   It directly links an Directive to the final aggregated ClassOfBoundedIndividual
   hiding the reifying DirectiveSubject
-}
directiveSubject : Linkage Directive ClassOfBoundedIndividual
directiveSubject = membershipOfDirectiveSubject  ∘  aggregationOfClassOfBoundedIndividualDirectiveSubject


