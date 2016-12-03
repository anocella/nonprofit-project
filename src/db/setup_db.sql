# Create the database
CREATE DATABASE IF NOT EXISTS organizations;
USE organizations;

# Create the primary table to store the data of tax-exempt organizations
CREATE TABLE IF NOT EXISTS tax_exempt_organizations (
  electronic_id INT NOT NULL,
  tax_year INT NOT NULL,
  form_type VARCHAR(10) NOT NULL,
  organization_name TEXT,
  organization_type TEXT,
  current_year_revenue INT,
  prior_year_revenue INT,
  annual_revenue_growth FLOAT(4,2),
  PRIMARY KEY (electronic_id, tax_year)
);
