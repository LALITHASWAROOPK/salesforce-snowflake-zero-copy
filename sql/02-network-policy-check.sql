-- Diagnose network connectivity issues
SELECT * FROM TABLE(INFORMATION_SCHEMA.NETWORK_POLICY_FAMILY_USAGE_HISTORY())
WHERE network_policy_name IS NOT NULL;

-- Quick test: temporarily loosen policy (PROD CAUTION!)
-- ALTER NETWORK POLICY strict_policy DROP DENY IP '0.0.0.0/0';
