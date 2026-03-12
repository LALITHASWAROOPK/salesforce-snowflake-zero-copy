
-- OAuth Security Integration for Salesforce Data Cloud
CREATE OR REPLACE SECURITY INTEGRATION sf_zero_copy_integration
  TYPE = OAUTH
  OAUTH_CLIENT = CUSTOM
  OAUTH_CLIENT_TYPE = 'CONFIDENTIAL'
  OAUTH_REDIRECT_URI = 'https://login.salesforce.com/services/cdp/SnowflakeOAuthCallback'
  ENABLED = TRUE
  OAUTH_ISSUE_REFRESH_TOKENS = TRUE;

-- Get client secrets for Salesforce
SELECT SYSTEM$SHOW_OAUTH_CLIENT_SECRETS('sf_zero_copy_integration');
