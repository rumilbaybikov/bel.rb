# Defines the RDF vocabulary for BEL structures.
module BELRDF

  # uri prefixes
  BELR    = ::RDF::Vocabulary.new('http://www.openbel.org/bel/')
  BELV    = ::RDF::Vocabulary.new('http://www.openbel.org/vocabulary/')
  BELE    = ::RDF::Vocabulary.new('http://www.openbel.org/evidence/')
  PUBMED  = ::RDF::Vocabulary.new('http://bio2rdf.org/pubmed:')
  RDF     = ::RDF
  RDFS    = ::RDF::RDFS

  # annotations
  Anatomy       = 'http://www.openbel.org/bel/annotation/anatomy/'
  Cell          = 'http://www.openbel.org/bel/annotation/cell/'
  CellLine      = 'http://www.openbel.org/bel/annotation/cell-line/'
  CellStructure = 'http://www.openbel.org/bel/annotation/cell-structure/'
  Disease       = 'http://www.openbel.org/bel/annotation/disease/'
  MeSHAnatomy   = 'http://www.openbel.org/bel/annotation/mesh-anatomy/'
  MeSHDisease   = 'http://www.openbel.org/bel/annotation/mesh-diseases/'
  Species       = 'http://www.openbel.org/bel/annotation/species-taxonomy-id/'

  # maps outer function to bel/vocabulary class
  FUNCTION_TYPE = {
    a:                       BELV.Abundance,
    act:                     BELV.AbundanceActivity,
    bp:                      BELV.BiologicalProcess,
    cat:                     BELV.AbundanceActivity,
    chap:                    BELV.AbundanceActivity,
    complex:                 BELV.ComplexAbundance,
    composite:               BELV.CompositeAbundance,
    deg:                     BELV.Degradation,
    fus:                     BELV.Fusion,
    g:                       BELV.GeneAbundance,
    gtp:                     BELV.AbundanceActivity,
    kin:                     BELV.AbundanceActivity,
    m:                       BELV.microRNAAbundance,
    p:                       BELV.ProteinAbundance,
    path:                    BELV.Pathology,
    pep:                     BELV.AbundanceActivity,
    phos:                    BELV.AbundanceActivity,
    pmod:                    BELV.ProteinModification,
    r:                       BELV.RNAAbundance,
    ribo:                    BELV.AbundanceActivity,
    rxn:                     BELV.Reaction,
    sec:                     BELV.CellSecretion,
    sub:                     BELV.Substitution,
    surf:                    BELV.CellSurfaceExpression,
    tloc:                    BELV.Translocation,
    tport:                   BELV.AbundanceActivity,
    tscript:                 BELV.AbundanceActivity,
    abundance:               BELV.Abundance,
    biologicalProcess:       BELV.BiologicalProcess,
    catalyticActivity:       BELV.AbundanceActivity,
    cellSecretion:           BELV.CellSecretion,
    cellSurfaceExpression:   BELV.CellSurfaceExpression,
    chaperoneActivity:       BELV.AbundanceActivity,
    complexAbundance:        BELV.ComplexAbundance,
    compositeAbundance:      BELV.CompositeAbundance,
    degradation:             BELV.Degradation,
    fusion:                  BELV.Fusion,
    geneAbundance:           BELV.GeneAbundance,
    gtpBoundActivity:        BELV.AbundanceActivity,
    kinaseActivity:          BELV.AbundanceActivity,
    list:                    BELV.List,
    microRNAAbundance:       BELV.microRNAAbundance,
    molecularActivity:       BELV.AbundanceActivity,
    pathology:               BELV.Pathology,
    peptidaseActivity:       BELV.AbundanceActivity,
    phosphataseActivity:     BELV.AbundanceActivity,
    products:                BELV.Products,
    proteinAbundance:        BELV.ProteinAbundance,
    proteinModification:     BELV.ProteinModification,
    reactants:               BELV.Reactants,
    reaction:                BELV.Reaction,
    ribosylationActivity:    BELV.AbundanceActivity,
    rnaAbundance:            BELV.RNAAbundance,
    substitution:            BELV.Substitution,
    transcriptionalActivity: BELV.AbundanceActivity,
    translocation:           BELV.Translocation,
    transportActivity:       BELV.AbundanceActivity,
    truncation:              BELV.Truncation,
  }

  RELATIONSHIP_TYPE = {
      '--'                     => BELV.Association,
      '-|'                     => BELV.Decreases,
      '=|'                     => BELV.DirectlyDecreases,
      '=>'                     => BELV.DirectlyIncreases,
      '->'                     => BELV.Increases,
      ':>'                     => BELV.TranscribedTo,
      '>>'                     => BELV.TranslatedTo,
      'actsIn'                 => BELV.ActsIn,
      'analogous'              => BELV.Analogous,
      'association'            => BELV.Association,
      'biomarkerFor'           => BELV.BiomarkerFor,
      'causesNoChange'         => BELV.CausesNoChange,
      'decreases'              => BELV.Decreases,
      'directlyDecreases'      => BELV.DirectlyDecreases,
      'directlyIncreases'      => BELV.DirectlyIncreases,
      'hasComponent'           => BELV.HasComponent,
      'hasComponents'          => BELV.HasComponents,
      'hasMember'              => BELV.HasMember,
      'hasMembers'             => BELV.HasMembers,
      'hasModification'        => BELV.HasModification,
      'hasProduct'             => BELV.HasProduct,
      'hasVariant'             => BELV.HasVariant,
      'includes'               => BELV.Includes,
      'increases'              => BELV.Increases,
      'isA'                    => BELV.IsA,
      'negativeCorrelation'    => BELV.NegativeCorrelation,
      'orthologous'            => BELV.Orthologous,
      'positiveCorrelation'    => BELV.PositiveCorrelation,
      'prognosticBiomarkerFor' => BELV.PrognosticBiomarkerFor,
      'rateLimitingStepOf'     => BELV.RateLimitingStepOf,
      'reactantIn'             => BELV.ReactantIn,
      'subProcessOf'           => BELV.SubProcessOf,
      'transcribedTo'          => BELV.TranscribedTo,
      'translatedTo'           => BELV.TranslatedTo,
      'translocates'           => BELV.Translocates,
  }

  RELATIONSHIP_CLASSIFICATION = {
      :'--'                     => BELV.CorrelativeRelationship,
      :'-|'                     => BELV.Decreases,
      :'=|'                     => BELV.DirectlyDecreases,
      :'=>'                     => BELV.DirectlyIncreases,
      :'->'                     => BELV.Increases,
      :'association'            => BELV.CorrelativeRelationship,
      :'biomarkerFor'           => BELV.BiomarkerFor,
      :'causesNoChange'         => BELV.CausesNoChange,
      :'decreases'              => BELV.Decreases,
      :'directlyDecreases'      => BELV.DirectlyDecreases,
      :'directlyIncreases'      => BELV.DirectlyIncreases,
      :'hasComponent'           => BELV.HasComponent,
      :'hasMember'              => BELV.HasMember,
      :'increases'              => BELV.Increases,
      :'isA'                    => BELV.IsA,
      :'negativeCorrelation'    => BELV.NegativeCorrelation,
      :'positiveCorrelation'    => BELV.PositiveCorrelation,
      :'prognosticBiomarkerFor' => BELV.PrognosticBiomarkerFor,
      :'rateLimitingStepOf'     => BELV.RateLimitingStepOf,
      :'subProcessOf'           => BELV.SubProcessOf,
  }

  ACTIVITY_TYPE = {
    act:                     BELV.Activity,
    cat:                     BELV.Catalytic,
    chap:                    BELV.Chaperone,
    gtp:                     BELV.GtpBound,
    kin:                     BELV.Kinase,
    pep:                     BELV.Peptidase,
    phos:                    BELV.Phosphatase,
    ribo:                    BELV.Ribosylase,
    tport:                   BELV.Transport,
    tscript:                 BELV.Transcription,
    catalyticActivity:       BELV.Catalytic,
    chaperoneActivity:       BELV.Chaperone,
    gtpBoundActivity:        BELV.GtpBound,
    kinaseActivity:          BELV.Kinase,
    molecularActivity:       BELV.Activity,
    peptidaseActivity:       BELV.Peptidase,
    phosphataseActivity:     BELV.Phosphatase,
    ribosylationActivity:    BELV.Ribosylase,
    transcriptionalActivity: BELV.Transcription,
    transportActivity:       BELV.Transport,
  }

  # maps modification types to bel/vocabulary class
  MODIFICATION_TYPE = {
    'A'   => BELV.Acetylation,
    'F'   => BELV.Farnesylation,
    'G'   => BELV.Glycosylation,
    'H'   => BELV.Hydroxylation,
    'M'   => BELV.Methylation,
    'P'   => BELV.Phosphorylation,
    'P,S' => BELV.PhosphorylationSerine,
    'P,T' => BELV.PhosphorylationThreonine,
    'P,Y' => BELV.PhosphorylationTyrosine,
    'R'   => BELV.Ribosylation,
    'S'   => BELV.Sumoylation,
    'U'   => BELV.Ubiquitination,
  }

  # protein variant
  PROTEIN_VARIANT = [:fus, :fusion, :sub, :substitution, :trunc, :truncation]

  def self.deep_freeze(array)
    if array.respond_to?(:to_a)
      array.each { |i| deep_freeze(i) }
      array.freeze
    end
  end
  private_class_method :deep_freeze

  RDFS_SCHEMA = deep_freeze([
    # Classes - Annotation Concept
    [BELV.AnnotationConcept, RDF::RDFS.subClassOf, RDF::SKOS.Concept],
    [BELV.AnnotationConceptScheme, RDF::RDFS.subClassOf, RDF::SKOS.ConceptScheme],

    # Classes - Namespace Concept
    [BELV.AbundanceConcept, RDF::RDFS.subClassOf, BELV.NamespaceConcept],
    [BELV.BiologicalProcessConcept, RDF::RDFS.subClassOf, BELV.NamespaceConcept],
    [BELV.ComplexConcept, RDF::RDFS.subClassOf, BELV.AbundanceConcept],
    [BELV.GeneConcept, RDF::RDFS.subClassOf, BELV.AbundanceConcept],
    [BELV.MicroRNAConcept, RDF::RDFS.subClassOf, BELV.RNAConcept],
    [BELV.NamespaceConceptScheme, RDF::RDFS.subClassOf, RDF::SKOS.ConceptScheme],
    [BELV.NamespaceConcept, RDF::RDFS.subClassOf, RDF::SKOS.Concept],
    [BELV.ProteinConcept, RDF::RDFS.subClassOf, BELV.AbundanceConcept],
    [BELV.RNAConcept, RDF::RDFS.subClassOf, BELV.AbundanceConcept],
    [BELV.PathologyConcept, RDF::RDFS.subClassOf, BELV.BiologicalProcessConcept],

    # Classes - Language Concepts
    [BELV.Abundance, RDF.type, RDF::RDFS.Class],
    [BELV.Activity, RDF.type, RDF::RDFS.Class],
    [BELV.Evidence, RDF.type, RDF::RDFS.Class],
    [BELV.Modification, RDF.type, RDF::RDFS.Class],
    [BELV.Relationship, RDF.type, RDF::RDFS.Class],
    [BELV.Statement, RDF.type, RDF::RDFS.Class],
    [BELV.Term, RDF.type, RDF::RDFS.Class],

    # Classes - Relationships
    [BELV.Association, RDF::RDFS.subClassOf, BELV.CorrelativeRelationship],
    [BELV.BiomarkerFor, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.CausesNoChange, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.CausalRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.CorrelativeRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.Decreases, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.Decreases, RDF::RDFS.subClassOf, BELV.NegativeRelationship],
    [BELV.DirectlyDecreases, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.DirectlyDecreases, RDF::RDFS.subClassOf, BELV.NegativeRelationship],
    [BELV.DirectlyDecreases, RDF::RDFS.subClassOf, BELV.DirectRelationship],
    [BELV.DirectlyDecreases, RDF::RDFS.subClassOf, BELV.Decreases],
    [BELV.DirectlyIncreases, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.DirectlyIncreases, RDF::RDFS.subClassOf, BELV.PositiveRelationship],
    [BELV.DirectlyIncreases, RDF::RDFS.subClassOf, BELV.DirectRelationship],
    [BELV.DirectlyIncreases, RDF::RDFS.subClassOf, BELV.Increases],
    [BELV.DirectRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.HasComponent, RDF::RDFS.subClassOf, BELV.MembershipRelationship],
    [BELV.HasMember, RDF::RDFS.subClassOf, BELV.MembershipRelationship],
    [BELV.Increases, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.Increases, RDF::RDFS.subClassOf, BELV.PositiveRelationship],
    [BELV.IsA, RDF::RDFS.subClassOf, BELV.MembershipRelationship],
    [BELV.MembershipRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.NegativeCorrelation, RDF::RDFS.subClassOf, BELV.CorrelativeRelationship],
    [BELV.NegativeCorrelation, RDF::RDFS.subClassOf, BELV.NegativeRelationship],
    [BELV.NegativeRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.PositiveCorrelation, RDF::RDFS.subClassOf, BELV.CorrelativeRelationship],
    [BELV.PositiveCorrelation, RDF::RDFS.subClassOf, BELV.PositiveRelationship],
    [BELV.PositiveRelationship, RDF::RDFS.subClassOf, BELV.Relationship],
    [BELV.PrognosticBiomarkerFor, RDF::RDFS.subClassOf, BELV.BiomarkerFor],
    [BELV.RateLimitingStepOf, RDF::RDFS.subClassOf, BELV.Increases],
    [BELV.RateLimitingStepOf, RDF::RDFS.subClassOf, BELV.CausalRelationship],
    [BELV.RateLimitingStepOf, RDF::RDFS.subClassOf, BELV.SubProcessOf],
    [BELV.SubProcessOf, RDF::RDFS.subClassOf, BELV.MembershipRelationship],

    # Classes - Abundances
    [BELV.AbundanceActivity, RDF::RDFS.subClassOf, BELV.Process],
    [BELV.BiologicalProcess, RDF::RDFS.subClassOf, BELV.Process],
    [BELV.CellSecretion, RDF::RDFS.subClassOf, BELV.Translocation],
    [BELV.ComplexAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.CompositeAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.Degradation, RDF::RDFS.subClassOf, BELV.Transformation],
    [BELV.GeneAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.MicroRNAAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.ModifiedProteinAbundance, RDF::RDFS.subClassOf, BELV.ProteinAbundance],
    [BELV.Pathology, RDF::RDFS.subClassOf, BELV.BiologicalProcess],
    [BELV.Process, RDF.type, RDF::RDFS.Class],
    [BELV.ProteinAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.ProteinVariantAbundance, RDF::RDFS.subClassOf, BELV.ProteinAbundance],
    [BELV.Reaction, RDF::RDFS.subClassOf, BELV.Transformation],
    [BELV.RNAAbundance, RDF::RDFS.subClassOf, BELV.Abundance],
    [BELV.Transformation, RDF::RDFS.subClassOf, BELV.Process],
    [BELV.Translocation, RDF::RDFS.subClassOf, BELV.Transformation],

    # Classes - Activities
    [BELV.Activity, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Catalytic, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Chaperone, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.GtpBound, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Kinase, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Peptidase, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Phosphatase, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Ribosylase, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Transcription, RDF::RDFS.subClassOf, BELV.Activity],
    [BELV.Transport, RDF::RDFS.subClassOf, BELV.Activity],

    # Classes - Modifications
    [BELV.Acetylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Farnesylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Glycosylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Hydroxylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Methylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Phosphorylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Ribosylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Sumoylation, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.Ubiquitination, RDF::RDFS.subClassOf, BELV.Modification],
    [BELV.PhosphorylationSerine, RDF::RDFS.subClassOf, BELV.Phosphorylation],
    [BELV.PhosphorylationTyrosine, RDF::RDFS.subClassOf, BELV.Phosphorylation],
    [BELV.PhosphorylationThreonine, RDF::RDFS.subClassOf, BELV.Phosphorylation],

    # Properties - BEL Term
    [BELV.hasActivityType, RDF.type, RDF.Property],
    [BELV.hasActivityType, RDF::RDFS.range, BELV.Activity],
    [BELV.hasActivityType, RDF::RDFS.domain, BELV.Term],
    [BELV.hasChild, RDF.type, RDF.Property],
    [BELV.hasChild, RDF::RDFS.range, BELV.Term],
    [BELV.hasChild, RDF::RDFS.domain, BELV.Term],
    [BELV.hasConcept, RDF.type, RDF.Property],
    [BELV.hasConcept, RDF::RDFS.range, BELV.NamespaceConcept],
    [BELV.hasConcept, RDF::RDFS.domain, BELV.Term],
    [BELV.hasModificationPosition, RDF.type, RDF.Property],
    [BELV.hasModificationPosition, RDF::RDFS.range, RDF::XSD.integer],
    [BELV.hasModificationPosition, RDF::RDFS.domain, BELV.Term],
    [BELV.hasModificationType, RDF.type, RDF.Property],
    [BELV.hasModificationType, RDF::RDFS.range, BELV.Activity],
    [BELV.hasModificationType, RDF::RDFS.domain, BELV.Term],

    # Properties - BEL Statement
    [BELV.hasEvidence, RDF.type, RDF.Property],
    [BELV.hasEvidence, RDF::RDFS.range, BELV.Evidence],
    [BELV.hasEvidence, RDF::RDFS.domain, BELV.Statement],
    [BELV.hasObject, RDF::RDFS.subPropertyOf, BELV.hasChild],
    [BELV.hasObject, RDF::RDFS.range, BELV.Term],
    [BELV.hasObject, RDF::RDFS.domain, BELV.Statement],
    [BELV.hasRelationship, RDF.type, RDF.Property],
    [BELV.hasRelationship, RDF::RDFS.range, BELV.Relationship],
    [BELV.hasRelationship, RDF::RDFS.domain, BELV.Statement],
    [BELV.hasSubject, RDF::RDFS.subPropertyOf, BELV.hasChild],
    [BELV.hasSubject, RDF::RDFS.range, BELV.Term],
    [BELV.hasSubject, RDF::RDFS.domain, BELV.Statement],

    # Properties - Evidence
    [BELV.hasAnnotation, RDF.type, RDF.Property],
    [BELV.hasAnnotation, RDF::RDFS.range, BELV.AnnotationConcept],
    [BELV.hasAnnotation, RDF::RDFS.domain, BELV.Evidence],
    [BELV.hasCitation, RDF.type, RDF.Property],
    [BELV.hasCitation, RDF::RDFS.domain, BELV.Evidence],
    [BELV.hasEvidenceText, RDF::RDFS.range, RDF::XSD.string],
    [BELV.hasEvidenceText, RDF::RDFS.domain, BELV.Evidence],
    [BELV.hasStatement, RDF.type, RDF.Property],
    [BELV.hasStatement, RDF::RDFS.range, BELV.Statement],
    [BELV.hasStatement, RDF::RDFS.domain, BELV.Evidence]
  ])

  def self.vocabulary_rdf
    RDFS_SCHEMA
  end
end
# vim: ts=2 sw=2:
