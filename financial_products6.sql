CREATE TABLE FINANCIAL_PRODUCTS (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL, -- e.g., 'Home Loan', 'Car Insurance', '5-Year FD'
    product_category VARCHAR(50) NOT NULL CHECK (product_category IN ('Insurance', 'Loan', 'FD')),
    interest_rate DECIMAL(5, 2),        -- Applicable rate (e.g., loan interest or FD return)
    min_term_months INT,                -- Minimum duration for the product
    description TEXT,
    bank_id INT,                        -- Assuming connection to a BANK table
    FOREIGN KEY (bank_id) REFERENCES BANK(bank_id)
);
select * from financial_products;

INSERT INTO FINANCIAL_PRODUCTS 
    (product_id, product_name, product_category, interest_rate, min_term_months, description, bank_id)
VALUES
    -- 1. Insurance Product
    (1, 'Accidental Death Cover', 'Insurance', NULL, 12, 'Policy providing coverage against accidental death.', 1),
    
    -- 2. Loan Product
    (2, 'Standard Home Loan', 'Loan', 8.50, 120, 'Mortgage loan with fixed interest for 10-30 years.', 2),
    
    -- 3. FD Product
    (3, '3-Year Premium FD', 'FD', 7.25, 36, 'Fixed Deposit with quarterly compounding interest.', 3),
    -- 4. Insurance Product
    (4, 'Comprehensive Car Insurance', 'Insurance', NULL, 12, 'Covers damages to car and third-party liabilities.', 1),
    -- 5. Loan Product
    (5, 'Personal Loan', 'Loan', 12.00, 60, 'Unsecured personal loan with flexible repayment options.', 2),
    -- 6. FD Product
    (6, '5-Year Senior Citizen FD', 'FD', 8.00, 60, 'Fixed Deposit with higher interest for senior citizens.', 3),
    -- 7. Insurance Product
    (7, 'Health Insurance Plan', 'Insurance', NULL, 12, 'Covers medical expenses and hospitalization.', 1),
    -- 8. Loan Product
    (8, 'Auto Loan', 'Loan', 9.00, 48, 'Loan for purchasing new or used vehicles.', 2),
    -- 9. FD Product
    (9, '1-Year Regular FD', 'FD', 6.50, 12, 'Short-term Fixed Deposit with monthly interest payout.', 3),
    -- 10. Insurance Product
    (10, 'Travel Insurance', 'Insurance', NULL, 6, 'Covers trip cancellations, medical emergencies abroad.', 1),
    -- 11. Loan Product
    (11, 'Education Loan', 'Loan', 10.00, 84, 'Loan for higher education with moratorium period.', 2),
    -- 12. FD Product
    (12, '2-Year Tax Saver FD', 'FD', 7.00, 24, 'Fixed Deposit with tax benefits under Section 80C.', 3),
    -- 13. Insurance Product
    (13, 'Home Insurance', 'Insurance', NULL, 12, 'Covers damages to home due to natural calamities.', 1),
    -- 14. Loan Product
    (14, 'Business Loan', 'Loan', 11.00, 60, 'Loan for business expansion with flexible terms.', 2),
    -- 15. FD Product
    (15, '10-Year Long-Term FD', 'FD', 8.50, 120, 'Long-term Fixed Deposit with higher interest rates.', 3),
    -- 16. Insurance Product
    (16, 'Life Insurance Plan', 'Insurance', NULL, 240, 'Term life insurance with death benefit payout.', 1),
    -- 17. Loan Product
    (17, 'Gold Loan', 'Loan', 9.50, 36, 'Loan against gold jewelry with quick disbursal.', 2),
    -- 18. FD Product
    (18, '6-Month Short-Term FD', 'FD', 6.00, 6, 'Short-term Fixed Deposit with competitive interest rates.', 3),
    -- 19. Insurance Product
    (19, 'Critical Illness Cover', 'Insurance', NULL, 12, 'Provides lump sum on diagnosis of critical illnesses.', 1),
    -- 20. Loan Product
    (20, 'Two-Wheeler Loan', 'Loan', 10.50, 36, 'Loan for purchasing two-wheelers with easy EMI options.', 2),
    -- 21. FD Product
    (21, '1-Year Cumulative FD', 'FD', 6.75, 12, 'Fixed Deposit with interest compounded annually.', 3),
    -- 22. Insurance Product
    (22, 'Pet Insurance', 'Insurance', NULL, 12, 'Covers veterinary expenses for pets.', 1),
    -- 23. Loan Product
    (23, 'Home Renovation Loan', 'Loan', 11.50, 48, 'Loan for home improvement and renovation projects.', 2),
    -- 24. FD Product
    (24, 'Senior Citizen Monthly Income FD', 'FD', 8.25, 36, 'Fixed Deposit with monthly interest payout for seniors.', 3),
    -- 25. Insurance Product
    (25, 'Flood Insurance', 'Insurance', NULL, 12, 'Covers damages to property due to flooding.', 1),
    -- 26. Loan Product
    (26, 'Wedding Loan', 'Loan', 12.50, 60, 'Personal loan to finance wedding expenses.', 2),
    -- 27. FD Product
    (27, '3-Year Tax Saver FD', 'FD', 7.10, 36, 'Fixed Deposit with tax benefits under Section 80C.', 3),
    -- 28. Insurance Product
    (28, 'Bicycle Insurance', 'Insurance', NULL, 12, 'Covers theft and damages to bicycles.', 1),
    -- 29. Loan Product
    (29, 'Debt Consolidation Loan', 'Loan', 10.75, 60, 'Loan to consolidate multiple debts into a single payment.', 2),
    -- 30. FD Product
    (30, '5-Year Cumulative FD', 'FD', 8.75, 60, 'Fixed Deposit with interest compounded annually for 5 years.', 3);
 select * from financial_products;