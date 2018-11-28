# Description

This Pendo NPS Block allows you to go even deeper into your Usage data to ....

# Pendo NPS - Visualized with Looker

The Block was built using representative components to pull data from Pendo (Xplenty and the Pendo public API), transform it as necessary (ex. convert dates from epoch to human-readable, apply a hash to PII data like visitorId), load it into a data warehouse / repository (in this case, Snowflake), and visualize it via Looker.

Following are the step-by-step implementation instructions for implementing this Block:  

Prerequisite:  The data extraction step leverages the Pendo public API.  This can be found by logging into your Pendo UI and navigating to Settings (lower left corner) -> Integrations -> Integration Keys.  If Integration Keys is greyed-out, please contact your Pendo CSM to inquire about pricing and activation the Pendo Integration API  package.

## Step 1 - ...
