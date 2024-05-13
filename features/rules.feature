Feature: Rules

  Scenario: ErreursCourantes
    When I test "ErreursCourantes"
    Then the output should contain exactly:
      """
      test.md:3:15:Grammavale.ErreursCourantes:'cauchemar' est correct, 'cauchemard' ne l'est pas.
      test.md:3:34:Grammavale.ErreursCourantes:'jeux vidéo' est correct, 'jeux vidéos' ne l'est pas.
      """

  Scenario: Ponctuation
    When I test "Ponctuation"
    Then the output should contain exactly:
      """
      test.md:3:1:Grammavale.Ponctuation:Il manque une espace avant 'Oh!'.
      test.md:4:1:Grammavale.Ponctuation:Il manque une espace avant 'Quoi?'.
      """

  Scenario: Pleonasmes
    When I test "Pleonasmes"
    Then the output should contain exactly:
      """
      test.md:3:1:Grammavale.Pleonasmes:'Applaudir des deux mains' est un pléonasme
      test.md:3:31:Grammavale.Pleonasmes:'comparer entre eux' est un pléonasme
      test.md:3:54:Grammavale.Pleonasmes:'hasards imprévus' est un pléonasme
      """

  Scenario: TraitUnion
    When I test "TraitUnion"
    Then the output should contain exactly:
      """
      test.md:3:1:Grammavale.TraitUnion:'ci-devant' est correct, 'Ci devant' ne l'est pas.
      """

  Scenario: Constance
    When I test "Constance"
    Then the output should contain exactly:
      """
      test.md:3:15:Grammavale.Constance:'clé' a une orthographe inconstante
      """
