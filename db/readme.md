# Schéma de la table des questions
Exemple avec la table "livres" qui contient les questions de l'exercices "livres":

```
CREATE TABLE `livres` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

```

