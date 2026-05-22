# Yield-vs-Default-Credit-Analysis
## Executive Problem Statement
Commercial banks always face a tough balancing act: trying to earn interest income while making sure loan defaults don't wipe out their profits. Without a clear view of borrower behavior, it is easy to accidentally lend money to high-risk groups that end up hurting the bank's bottom line.

This project solves that exact problem. I built a SQL database layer to safely check and clean the records, then connected it to a Power BI dashboard. This gives risk teams an easy way to track borrower debt levels, spot exactly where portfolio stress is building, and adjust lending strategies before defaults cause serious financial damage.

## Data Validation Using SQL
First, I used SQL to query the raw data directly to clean, group, and verify all information before making any charts. I wrote scripts to filter out bad loans, group applicants by risk status, and track monthly trends. This step ensured that the database records were completely accurate and matched across all reports.

Here are examples of the queries I ran from the database to check the numbers:

<img width="1113" height="788" alt="Screenshot 2026-05-22 152645" src="https://github.com/user-attachments/assets/4aabb9e3-b048-4bcd-ada0-43bf336986cc" />
<img width="1133" height="810" alt="Screenshot 2026-05-22 152626" src="https://github.com/user-attachments/assets/b9737447-05fa-47f5-bf78-237f003f4ced" />
<img width="1107" height="808" alt="Screenshot 2026-05-22 152603" src="https://github.com/user-attachments/assets/2fb587fc-0586-42d0-894d-0ebd2d02b694" />
## Interactive Visuals Using Power BI
After verifying the data, I loaded it into Power BI to create the main dashboard. I wrote custom DAX formulas to build dynamic summaries and key performance indicators.
I used COUNT, SUM, and AVERAGE to handle the basic calculations like total application volumes, funded amounts, and typical interest rates.
I used logical functions like IF to cleanly separate healthy loans from defaults.
I utilized time intelligence tools like TOTALMTD and DATEADD to build month over month comparison trends.

This allowed risk teams to easily filter information by loan grade or specific months, making it simple to spot credit stress and protect bank margins.
<img width="1304" height="817" alt="Screenshot 2026-05-22 120908" src="https://github.com/user-attachments/assets/1dba3f13-d40e-466d-8ba3-9dcefc547b70" />
<img width="1305" height="818" alt="Screenshot 2026-05-22 120930" src="https://github.com/user-attachments/assets/463d71e1-d723-4d4e-8474-ce89406c2f63" />
<img width="1304" height="814" alt="Screenshot 2026-05-22 120952" src="https://github.com/user-attachments/assets/d76b76bd-643e-4e27-9a5c-133689884ed8" />


