# Gowtham-Property-Developers
Gowtham Property Developers (India) is a real-estate company in India that specializes in developing and selling residential plots. The company is currently managing three ongoing projects: Pulavar Nagar (8.63 acres), Gowtham Nagar (9.77 acres), and Vasudevan Nagar (9.54 acres). Each project consists of multiple plots that are offered to customers at prices based on the government-issued Guideline Value, which serves as the fixed selling price at the time of sale.
The company’s operations require careful financial tracking to ensure compliance with government regulations, manage ongoing development expenses, and provide transparency to customers. At present, these operations are carried out using manual ledgers and spreadsheets, leading to inefficiencies and inconsistencies. A centralized database system is needed to unify data management across projects, plots, expenses, receipts, and customer access.
Daily Operations & Data Needs
The daily operations of Gowtham Property Developers focus on both expenses (outgoing funds) and receipts (incoming funds from plot sales).
•	Expense Management
o	Each plot maintains a dedicated ledger that begins with an opening investment.
o	Daily expenses are recorded against this ledger, covering categories such as road construction, JCB costs, earthwork, solar setup, electricity line construction, and pipe installation.
o	Funds are periodically injected into plot ledgers either as capital top-ups or through money rotation, where profits from one project are transferred to another project’s ledger to cover expenses.
o	Running balances must be maintained to reflect current available funds per plot.
•	Receipts from Plot Sales
o	When a plot is sold, the payment is split between two ledgers:
	Bank Ledger: must cover at least the Guideline Value, which is the government-mandated minimum.
	Cash Ledger: records the remaining balance of the plot’s selling price.
o	This ensures statutory compliance and supports internal cash management.
o	The system must allow multiple receipts (installments) for a single booking, ensuring the bank requirement is satisfied before completion.
•	Customer Access
o	Customers who purchase plots should be able to view their plot’s details and a record of expenses incurred on that plot.
o	Customers will not have access to company-level income, profits, or other project data.
•	Reporting Needs
o	Expense breakdown by plot, category, and date.
o	Project-level summaries across Pulavar Nagar, Gowtham Nagar, and Vasudevan Nagar.
o	Receipt compliance reports (Bank vs. Cash against Guideline Value).
o	Profitability analysis per plot (fixed price − total expenses).
o	Audit of money rotation transfers between projects.
We have focused here mainly on the three properties core financial management and little bit of the sales as well.
Current Data Management
At present, the company relies on manual ledgers and spreadsheets to track expenses and receipts. Each plot has its own expense sheet, and daily expenses are logged separately by category. Customer payments are tracked manually, with separate entries for bank and cash receipts. This approach introduces several problems:
•	Data redundancy: repeated entries across ledgers and files.
•	Error-prone tracking: difficulty ensuring Bank Ledger always meets guideline requirements.
•	Lack of historical traceability: no formal versioning of plot price changes or guideline updates.
•	Inefficient reporting: managers must manually compile summaries, making it difficult to assess project profitability or trace rotation flows.
A centralized database will resolve these issues by enforcing relationships, reducing redundancy, and enabling automatic validation of business rules.
Project Scope
The scope of this project includes:
•	Projects and plots (with status, area, facing, and pricing).
•	Plot prices (with versioning over time).
•	Government guideline values.
•	Expense ledgers per plot, with detailed daily expense transactions.
•	Vendors and expense categories.
•	Customer details, bookings, and receipts.
•	Receipt splits into Bank and Cash ledgers.
•	Money rotation transfers between projects.
•	Customer portal functionality for plot-specific expense viewing.
The project will exclude: land acquisition contracts, deed registration workflow, payroll, tax filings, and GIS mapping. The focus is on core financial and sales operations needed for plot development and transparency.
Project Source
This project is classified as a Preferred Made-Up Project. While the design is customized to the real operations of Gowtham Property Developers, fictitious sample data will be used for confidentiality and practicality. The choice of preferred made-up instead of organic source ensures consistency with course scope. Using real ledgers would introduce unnecessary complexity (legal, compliance, payroll, taxation), which lies outside the requirements of this course. This approach allows us to capture the essential business rules while keeping the database design manageable for an academic project.
Data Requirements Collection
Requirements will be collected by:
•	Interviewing stakeholders in sales, finance, and site management to map workflows.
•	Reviewing real-world property listings and guideline value rules published by the government to capture typical attributes.
•	Simulating use cases (plot booking, daily expense entry, receipts, and rotation transfers) with sample data to validate ERD and table structures.

Intended Users
•	Management/Owner: profit tracking and money rotation oversight.
•	Accounts staff: entry of daily expenses, receipts, and ledger adjustments.
•	Site engineers/procurement staff: record expense details with vendors and categories.
•	Sales agents: manage bookings and customer records.
•	Customers (read-only portal): view their own plot details and expense history only.
Sample Data (As of now)
•	Project: Pulavar Nagar (launched 2025-03-01).
•	Plot: PN-A-12 (2000 sq ft, East-facing).
•	Fixed Price: ₹12,00,000 (Guideline Value).
•	Expense Ledger Opening: ₹3,00,000.
•	Daily Expenses: Roadwork ₹50,000 (2025-03-10), JCB Hire ₹20,000 (2025-03-11), Solar Setup ₹15,000 (2025-03-15).
•	Customer: C0007 – “Ravi”, Phone: +91-9876543210.
•	Booking: Ravi booked PN-A-12 on 2025-04-01 with BookingAmount ₹1,00,000.
•	Receipt: R-101, Date 2025-04-10 → Bank ₹12,00,000 (meets guideline).
•	Rotation: ₹2,00,000 transferred from Vasudevan Nagar project to Pulavar Nagar for road expenses (2025-04-20).
