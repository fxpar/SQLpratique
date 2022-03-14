# Modèle relationnel
```mermaid
erDiagram
    CUSTOMER ||--o{ ORDER : places
    CUSTOMER {
        string name
        string custNumber
        string sector
    }
    ORDER ||--|{ LINE-ITEM : contains
    ORDER {
        int 🔑orderNumber
        string deliveryAddress
		string #️⃣ custNumber
    }
    LINE-ITEM {
        string 🔑productCode
        int quantity
        float pricePerUnit
    }
```