-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
-- HINT: GROUP BY
SELECT 
    InvoiceId AS invoice_line, 
    COUNT(*) AS line_items_amount
FROM InvoiceLine
GROUP BY invoice_line;