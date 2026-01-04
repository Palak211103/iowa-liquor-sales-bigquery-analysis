# Dataset Schema – Iowa Liquor Sales

## Source
- **Provider:** State of Iowa (via Google BigQuery Public Datasets)
- **Dataset:** `bigquery-public-data.iowa_liquor_sales`
- **Primary Table:** `sales`
- **Access:** Public
- **Approximate Size:** ~33 million rows

---

## Table: `sales`

This table contains detailed transactional records of liquor sales across the state of Iowa, including product details, sales value, quantity, and time information.

### Column Definitions

| Column Name         | Data Type | Description |
|---------------------|----------|-------------|
| invoice_and_item_number | STRING | Unique identifier for each sales transaction item |
| date                | DATE     | Date when the sale occurred |
| store_number        | INTEGER  | Unique identifier for the liquor store |
| store_name          | STRING   | Name of the liquor store |
| city                | STRING   | City where the store is located |
| county              | STRING   | County where the store is located |
| category            | INTEGER  | Liquor category code |
| category_name       | STRING   | Name of the liquor category |
| vendor_number       | INTEGER  | Unique vendor identifier |
| vendor_name         | STRING   | Name of the vendor or manufacturer |
| item_number         | INTEGER  | Unique product identifier |
| item_description    | STRING   | Description/name of the liquor product |
| pack                | INTEGER  | Number of bottles per case |
| bottle_volume_ml    | INTEGER  | Volume of one bottle (in milliliters) |
| state_bottle_cost   | FLOAT    | Cost of one bottle to the state |
| state_bottle_retail | FLOAT    | Retail price of one bottle |
| bottles_sold        | INTEGER  | Number of bottles sold |
| sale_dollars        | FLOAT    | Total sales amount in USD |
| volume_sold_liters  | FLOAT    | Total volume sold in liters |
| volume_sold_gallons | FLOAT    | Total volume sold in gallons |

---

## Notes
- This project uses **only selected columns** relevant to trend analysis, seasonality, and brand popularity.
- Raw data is **not downloaded or stored** due to its large size.
- All queries are executed directly in **Google BigQuery using Standard SQL**.
- Outputs are visualized through **Looker Studio dashboards**.

---

## Reference
BigQuery Public Dataset:  
`bigquery-public-data.iowa_liquor_sales.sales`
