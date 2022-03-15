# Modèle relationnel
```mermaid
erDiagram
    Chalet ||--o{ Hotel : appartenir
	Chalet ||--o{ Type : appartenir
    Chalet {
			int NumChalet
			text NomChalet
			int CapaciteAccueil
			int NbPieces
			int NbLitsSimples
			int NbLitsDoubles
			int NumHotel
			int CodeType
    }
    Employe ||--|{ Hotel : travailler
    Employe {
			int CodeEmp
			text NomEmp
			text PrenomEmp
			text RueEmp
			text VilleEmp
			int CPEmp
			float Salaire
			int NumHotel
    }
    Hotel {
			int NumHotel
			text NomHotel
			int NbEtoiles
			int CPEmp
			text VilleEmp
    }
	Type {
			int Type
			int CodeType
			text LibelleType
			float TarifSemaine
			float TarifNuitee
    }
```