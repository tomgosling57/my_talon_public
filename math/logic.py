from talon import Module, actions

mod = Module()

@mod.action_class
class Actions:
    def logic_laws():
        """Inserts a string containing the laws of propositional logic"""
        actions.clip.set_text("""
Propositional Logic Laws:

1. Identity Laws:
   A ∧ T ≡ A
   A ∨ F ≡ A

2. Domination Laws:
   A ∨ T ≡ T
   A ∧ F ≡ F

3. Idempotent Laws:
   A ∨ A ≡ A
   A ∧ A ≡ A

4. Double Negation Law:
   ¬(¬A) ≡ A

5. Commutative Laws:
   A ∨ B ≡ B ∨ A
   A ∧ B ≡ B ∧ A

6. Associative Laws:
   (A ∨ B) ∨ C ≡ A ∨ (B ∨ C)
   (A ∧ B) ∧ C ≡ A ∧ (B ∧ C)

7. Distributive Laws:
   A ∨ (B ∧ C) ≡ (A ∨ B) ∧ (A ∨ C)
   A ∧ (B ∨ C) ≡ (A ∧ B) ∨ (A ∧ C)

8. Absorption Laws:
   A ∨ (A ∧ B) ≡ A
   A ∧ (A ∨ B) ≡ A

9. De Morgan’s Laws:
   ¬(A ∧ B) ≡ ¬A ∨ ¬B
   ¬(A ∨ B) ≡ ¬A ∧ ¬B

10. Negation Laws:
    A ∨ ¬A ≡ T
    A ∧ ¬A ≡ F

11. Implication Law:
    A → B ≡ ¬A ∨ B

12. Biconditional Law:
    A ↔ B ≡ (A → B) ∧ (B → A)


Propositional Logic Laws:

1. Identity Laws:
   A ∧ T ≡ A
   A ∨ F ≡ A

2. Domination Laws:
   A ∨ T ≡ T
   A ∧ F ≡ F

3. Idempotent Laws:
   A ∨ A ≡ A
   A ∧ A ≡ A

4. Double Negation Law:
   ¬(¬A) ≡ A

5. Commutative Laws:
   A ∨ B ≡ B ∨ A
   A ∧ B ≡ B ∧ A

6. Associative Laws:
   (A ∨ B) ∨ C ≡ A ∨ (B ∨ C)
   (A ∧ B) ∧ C ≡ A ∧ (B ∧ C)

7. Distributive Laws:
   A ∨ (B ∧ C) ≡ (A ∨ B) ∧ (A ∨ C)
   A ∧ (B ∨ C) ≡ (A ∧ B) ∨ (A ∧ C)

8. Absorption Laws:
   A ∨ (A ∧ B) ≡ A
   A ∧ (A ∨ B) ≡ A

9. De Morgan’s Laws:
   ¬(A ∧ B) ≡ ¬A ∨ ¬B
   ¬(A ∨ B) ≡ ¬A ∧ ¬B

10. Negation Laws:
    A ∨ ¬A ≡ T
    A ∧ ¬A ≡ F

11. Implication Law:
    A → B ≡ ¬A ∨ B

12. Biconditional Law:
    A ↔ B ≡ (A → B) ∧ (B → A)

""")
        actions.key("ctrl-v")
    
    def two_variable_truth_table():
        """Inserts a string containing a truth table for a two-variable proposition"""
        actions.clip.set_text("""|p|q|
|---|---|
|T|T|
|T|F|
|F|T|
|F|F|""")
        actions.key("ctrl-v")
    
    def three_variable_truth_table():
        """Inserts a string containing a truth table for a three-variable proposition"""
        actions.clip.set_text("""|p|q|r|
|---|---|---|
|T|T|T|
|T|T|F|
|T|F|F|
|F|T|T|
|F|T|F|
|F|F|T|
|T|F|T|
|F|F|F|
""")
        actions.key("ctrl-v")
    
    def four_variable_truth_table():
        """Inserts a string containing a truth table for a four-variable proposition"""
        actions.clip.set_text("""|p|q|r|s|
|---|---|---|---|
|T|T|T|T|
|T|T|T|F|
|T|T|F|T|
|T|T|F|F|
|T|F|T|T|
|T|F|T|F|
|T|F|F|T|
|T|F|F|F|
|F|T|T|T|
|F|T|T|F|
|F|T|F|T|
|F|T|F|F|
|F|F|T|T|
|F|F|T|F|
|F|F|F|T|
|F|F|F|F|
""")
        actions.key("ctrl-v")
