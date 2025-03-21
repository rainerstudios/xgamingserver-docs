#!/bin/bash
# Script to generate specific XGamingServer billing documentation

# Colors for terminal output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}XGamingServer Billing Documentation Generator${NC}"
echo "This script will create selected billing guide files"

# Create billing directory
echo -e "${GREEN}Creating billing directory...${NC}"
mkdir -p billing
mkdir -p images/billing

# Create billing overview page
echo -e "${GREEN}Creating Billing Overview page...${NC}"
cat > billing/overview.mdx << 'EOL'
---
title: "Billing Overview"
description: "Understanding XGamingServer billing and payment system"
icon: "credit-card"
---

# Billing Overview

This guide will help you understand how billing works at XGamingServer, including payment cycles, available payment methods, and answers to common billing questions.

## Billing Cycle

XGamingServer offers flexible billing options to meet your needs:

- **Monthly Billing**: Pay month-to-month with no long-term commitment.
- **Quarterly Billing**: Save 5% when you pay for 3 months upfront.
- **Semi-Annual Billing**: Save 10% when you pay for 6 months upfront.
- **Annual Billing**: Save 15% when you pay for 12 months upfront.

All plans are automatically renewed at the end of your billing cycle unless canceled.

## Understanding Your Invoice

Each invoice includes:

- **Base Plan Cost**: The cost of your selected server plan
- **Add-ons**: Any additional services you've selected
- **Discounts**: Any applied promotional codes or loyalty discounts
- **Taxes**: Any applicable taxes based on your location

<Warning>
  Invoices are generated 3 days before your renewal date to ensure uninterrupted service.
</Warning>

## Need Assistance?

If you have questions about your billing or need to make changes to your account, please check out our specific billing guides:

<CardGroup cols={2}>
  <Card title="Upgrading Your Service" icon="arrow-up-right" href="./upgrading-service">
    How to upgrade your server plan
  </Card>
  <Card title="Cancel Your Service" icon="ban" href="./cancellation">
    Steps to cancel your subscription
  </Card>
  <Card title="Request a Refund" icon="money-bill-transfer" href="./refund-policy">
    Learn about our refund policy
  </Card>
  <Card title="Order Status Issues" icon="triangle-exclamation" href="./order-fraud">
    Understanding fraud status and pending orders
  </Card>
</CardGroup>
EOL

# Create suspension and termination guide
echo -e "${GREEN}Creating Suspensions and Terminations guide...${NC}"
cat > billing/suspensions-terminations.mdx << 'EOL'
---
title: "Suspensions and Terminations"
description: "Understanding account suspensions and service terminations"
icon: "lock"
---

# Suspensions and Terminations

This guide explains the difference between account suspensions and service terminations, why they occur, and what steps you can take to resolve these situations.

## Account Suspensions vs. Service Terminations

<CardGroup cols={2}>
  <Card title="Account Suspension" icon="pause-circle">
    A temporary hold on your service due to payment issues or policy violations. Your data is preserved, and service can be restored.
  </Card>
  <Card title="Service Termination" icon="ban">
    Permanent closure of your service and deletion of all associated data. This typically follows extended suspension or serious policy violations.
  </Card>
</CardGroup>

## Why Accounts Get Suspended

Accounts may be suspended for several reasons:

### 1. Payment Issues

The most common reason for suspension is payment failure, which can occur due to:
- Expired credit card
- Insufficient funds
- Failed PayPal subscription
- Billing information errors
- Disputed charges or chargebacks

### 2. Terms of Service Violations

Violations that may lead to suspension include:
- Hosting prohibited content
- Server resource abuse
- Unauthorized penetration testing
- DDoS attacks originating from your server
- Using the service for illegal activities

### 3. Compliance Issues

Sometimes suspensions occur due to:
- Incomplete verification information
- Suspected fraudulent activity
- DMCA takedown notices
- Law enforcement requests

## The Suspension Process

<Steps>
  <Step title="Warning notification">
    Before suspension, we attempt to notify you about impending issues via email. This is why keeping your contact information updated is crucial.
  </Step>
  
  <Step title="Service suspension">
    If the issue isn't resolved, your service will be suspended. During suspension:
    - Your server will be inaccessible
    - Control panel access is limited
    - Your data remains intact
  </Step>
  
  <Step title="Notification of suspension">
    We send an email explaining the reason for suspension and steps to resolve it.
    
    <Frame>
      <img src="/images/billing/suspension-email.jpg" alt="Suspension Email Example" />
    </Frame>
  </Step>
  
  <Step title="Resolution period">
    You typically have 7-14 days to resolve the issue before the account moves toward termination. The exact timeframe depends on the nature of the suspension.
  </Step>
</Steps>

## Resolving a Suspension

The steps to resolve a suspension depend on the reason:

### For Payment-Related Suspensions

1. Log in to your [billing dashboard](https://panel.xgamingserver.com/billing)
2. Navigate to Invoices > Unpaid
3. Review and pay any outstanding invoices
4. Update your payment method if necessary
5. Contact billing if you need assistance with payment

<Frame>
  <img src="/images/billing/payment-update.jpg" alt="Update Payment Method" />
</Frame>

### For Policy Violation Suspensions

1. Review the suspension email for specific violation details
2. Address the violation by removing prohibited content or stopping the problematic activity
3. Contact support at [support@xgamingserver.com](mailto:support@xgamingserver.com) to explain the steps you've taken
4. Wait for account review (typically 24-48 hours)

## The Termination Process

Termination occurs when:
- A suspension isn't resolved within the given timeframe
- Multiple, repeated violations occur
- Severe terms of service violations are detected
- Account holder requests voluntary termination

<Warning>
  Termination results in the permanent deletion of all your server data, including world saves, configurations, and user data. This action cannot be undone.
</Warning>

The termination process typically follows these steps:

<Steps>
  <Step title="Final notice">
    Before termination, we send a final notice giving you a last opportunity to resolve the issues.
  </Step>
  
  <Step title="Service termination">
    If no resolution occurs, the service is terminated and queued for data deletion.
  </Step>
  
  <Step title="Data deletion">
    All server data is permanently deleted within 48-72 hours after termination.
  </Step>
  
  <Step title="Account closure">
    The account is marked as closed in our system.
  </Step>
</Steps>

## Appealing a Suspension or Termination

If you believe your account was suspended or terminated in error:

1. Gather any evidence supporting your appeal
2. Email our compliance team at [compliance@xgamingserver.com](mailto:compliance@xgamingserver.com)
3. Include your account ID and detailed explanation
4. Provide any relevant documentation
5. Allow 2-3 business days for review

## Preventative Measures

To avoid suspensions:

- Keep your payment information up to date
- Address warning emails promptly
- Review our Terms of Service regularly
- Monitor your server activity
- Respond to all official communications from XGamingServer
- Set up backup payment methods

## Frequently Asked Questions

<AccordionGroup>
  <Accordion title="Will I lose my data during a suspension?">
    No, your data is preserved during a suspension. However, you may not be able to access it until the suspension is resolved.
  </Accordion>
  
  <Accordion title="How quickly can my service be restored after resolving a suspension?">
    For payment-related suspensions, service is typically restored automatically within minutes after payment is received. For policy violations, it may take 24-48 hours for review and restoration.
  </Accordion>
  
  <Accordion title="Can I get a refund if my account is terminated?">
    Refunds for terminated accounts are handled on a case-by-case basis according to our [refund policy](./refund-policy). In most cases, terminations due to policy violations are not eligible for refunds.
  </Accordion>
  
  <Accordion title="What happens to my domain name if my service is terminated?">
    Custom domain names linked to your service will be unlinked upon termination. You retain ownership of the domain if you registered it separately.
  </Accordion>
</AccordionGroup>

If you need further assistance with a suspended or terminated account, please contact our support team at [support@xgamingserver.com](mailto:support@xgamingserver.com).
EOL

# Create order fraud guide
echo -e "${GREEN}Creating Order Fraud Guide...${NC}"
cat > billing/order-fraud.mdx << 'EOL'
---
title: "Why Was My Order Status Listed as Fraud"
description: "Understanding and resolving fraud flags on your order"
icon: "shield-exclamation"
---

# Why Was My Order Status Listed as Fraud

If your order has been flagged as potentially fraudulent, don't worry—this is a protective measure that can be resolved. This guide explains why orders get flagged, what it means, and how to get your order approved.

## Why Orders Get Flagged as Potential Fraud

XGamingServer uses an automated fraud detection system to protect both customers and our business. Orders may be flagged for various reasons:

### Common Flag Triggers

<CardGroup cols={2}>
  <Card title="Location Mismatch" icon="globe">
    Your IP address location differs significantly from your billing address
  </Card>
  <Card title="High-Risk Regions" icon="map-pin">
    Order placed from regions with historically high fraud rates
  </Card>
  <Card title="Mismatched Information" icon="id-card">
    Discrepancies between provided information and payment provider data
  </Card>
  <Card title="Multiple Failed Attempts" icon="repeat">
    Several failed payment attempts before successful payment
  </Card>
  <Card title="Unusual Purchase Pattern" icon="chart-line">
    Order pattern differs from typical customer behavior
  </Card>
  <Card title="VPN/Proxy Usage" icon="mask">
    Order placed through VPN or proxy service
  </Card>
</CardGroup>

<Note>
  Being flagged for fraud review does NOT mean we believe you are committing fraud. It's simply a security measure to verify legitimate orders and protect your payment information.
</Note>

## What Happens When an Order is Flagged

When an order is flagged for potential fraud:

1. **Order Status**: Your order status changes to "Fraud Review" in your client area
2. **Service Status**: Your server is not provisioned until the review is complete
3. **Notification**: You receive an email notification about the review
4. **Payment Hold**: Your payment is authorized but not fully processed
5. **Manual Review**: Our fraud prevention team reviews your order

<Frame>
  <img src="/images/billing/fraud-review-status.jpg" alt="Fraud Review Status Example" />
</Frame>

## How to Resolve a Fraud Flag

If your order has been flagged for fraud review, here's how to get it resolved quickly:

<Steps>
  <Step title="Check your email">
    Look for an email with the subject "Order Verification Required" in your inbox and spam folder. This email contains important information about next steps.
    
    <Frame>
      <img src="/images/billing/fraud-email.jpg" alt="Fraud Review Email Example" />
    </Frame>
  </Step>
  
  <Step title="Reply with verification">
    Respond to the verification email with the requested identification information, which may include:
    
    - A copy of your ID (driver's license, passport, or national ID)
    - A photo of the payment card used (showing only the last 4 digits)
    - A utility bill or bank statement showing your billing address
    
    <Info>
      For privacy, you can blur out or cover sensitive information not required for verification.
    </Info>
  </Step>
  
  <Step title="Complete verification form">
    In some cases, you may be directed to complete a secure verification form instead of sending documents via email.
  </Step>
  
  <Step title="Wait for review">
    Our fraud prevention team will review your information, typically within 1-12 hours during business hours.
  </Step>
  
  <Step title="Order approval">
    Once verified, your order will be approved, and your server will be provisioned automatically.
  </Step>
</Steps>

## Expediting the Review Process

To get your order approved faster:

1. **Provide clear information**: Ensure all verification documents are clear and readable
2. **Respond quickly**: Prompt responses speed up the verification process
3. **Use official documents**: Government-issued IDs are preferred for verification
4. **Contact support**: If you haven't received a response within 24 hours, contact our support team

## Preventing Future Fraud Flags

To avoid having future orders flagged:

- **Use consistent information**: Ensure billing address matches your payment method's registered address
- **Disable VPN**: Turn off VPN or proxy services when placing orders
- **Verify payment details**: Double-check that all payment information is accurate
- **Use verified payment methods**: Previously verified payment methods are less likely to trigger flags
- **Update your profile**: Keep your account information current and accurate

## If Your Order Is Declined

In some cases, after review, an order may still be declined if:

- Verification documents could not be validated
- High-risk indicators could not be resolved
- Payment processor enforced restrictions
- Discrepancies could not be explained

If your legitimate order is declined, please contact our billing team directly at [billing@xgamingserver.com](mailto:billing@xgamingserver.com) with:

1. Your order number
2. A detailed explanation
3. Alternative payment method (if applicable)
4. Any additional verification you can provide

## Frequently Asked Questions

<AccordionGroup>
  <Accordion title="Will I be charged for an order under fraud review?">
    Your payment method will show an authorization hold, but you won't be charged until the order is approved. If the order is declined, the authorization is released.
  </Accordion>
  
  <Accordion title="How long does the verification process take?">
    Most verifications are completed within 1-12 hours during business hours. Complex cases may take up to 24 hours.
  </Accordion>
  
  <Accordion title="Can I place a new order instead of waiting for verification?">
    We recommend waiting for the verification process to complete. Creating multiple orders may trigger additional fraud flags.
  </Accordion>
  
  <Accordion title="Is my personal information secure during verification?">
    Yes, all verification documents are handled according to our Privacy Policy, stored securely, and deleted after verification is complete.
  </Accordion>
</AccordionGroup>

## Need More Help?

If you have questions about the fraud review process or need assistance:

- Email our fraud prevention team directly at [verification@xgamingserver.com](mailto:verification@xgamingserver.com)
- Contact our billing department at [billing@xgamingserver.com](mailto:billing@xgamingserver.com)
- Use our live chat during business hours
EOL

# Create refund policy guide
echo -e "${GREEN}Creating Refund Policy Guide...${NC}"
cat > billing/refund-policy.mdx << 'EOL'
---
title: "How to Request a Refund"
description: "Understanding XGamingServer's refund policy and how to request a refund"
icon: "money-bill-transfer"
---

# How to Request a Refund

If you're not satisfied with your XGamingServer service, you may be eligible for a refund under certain conditions. This guide explains our refund policy and the steps to request a refund.

## Refund Policy Overview

XGamingServer offers the following refund options:

<CardGroup cols={2}>
  <Card title="24-Hour Satisfaction Guarantee" icon="clock">
    Full refund available within 24 hours of initial purchase for new customers
  </Card>
  <Card title="Service Issues" icon="server">
    Partial refunds may be available for significant, unresolved service issues
  </Card>
  <Card title="Billing Errors" icon="receipt">
    Full refunds for duplicate charges or billing errors
  </Card>
  <Card title="Annual Plan Cancellations" icon="calendar">
    Prorated refunds for unused time on annual plans, subject to terms
  </Card>
</CardGroup>

## Eligibility Requirements

### 24-Hour Satisfaction Guarantee

To qualify for our 24-hour satisfaction guarantee:

- You must be a new customer with your first service
- Request must be made within 24 hours of initial purchase
- Service usage must be minimal (determined at our discretion)
- Reason for dissatisfaction must be provided

### Service Issue Refunds

Refunds for service issues may be provided when:

- The issue significantly impacts server functionality
- The issue persists for more than 24 consecutive hours
- Our technical team has been unable to resolve the issue
- The issue has been properly reported through our support system

### Billing Error Refunds

Refunds for billing errors are issued when:

- You've been charged multiple times for the same service
- You've been charged an incorrect amount
- You've been charged for services you didn't order

### Annual Plan Cancellations

For annual plans:

- Prorated refunds may be available for unused months
- Discount received for annual payment will be factored into the refund calculation
- Minimum 3 months of service required before annual plan refund requests

## Non-Refundable Items

The following are generally not eligible for refunds:

- Setup fees and activation charges
- Add-on services once delivered (e.g., migrations, installations)
- Domain registrations and SSL certificates
- Services used for more than 24 hours (except annual plans)
- Services canceled mid-month on monthly billing cycles

## How to Request a Refund

<Steps>
  <Step title="Gather information">
    Before requesting a refund, gather the following information:
    - Your account/client ID
    - Invoice number related to the refund request
    - Date of purchase
    - Reason for requesting a refund
    - Any relevant support ticket numbers
  </Step>
  
  <Step title="Contact billing support">
    Email our billing department at [billing@xgamingserver.com](mailto:billing@xgamingserver.com) with:
    - Subject line: "Refund Request - [Your Account ID]"
    - All information from Step 1
    - Specific refund amount requested
    
    <Frame>
      <img src="/images/billing/refund-email-template.jpg" alt="Refund Email Template" />
    </Frame>
  </Step>
  
  <Step title="Submit support ticket">
    For faster processing, also open a support ticket:
    1. Log in to your [client area](https://panel.xgamingserver.com/support)
    2. Click "Open Ticket"
    3. Select "Billing Department" as the department
    4. Enter "Refund Request - [Your Account ID]" as the subject
    5. Include the same information from your email
    6. Click "Submit"
  </Step>
  
  <Step title="Wait for response">
    Refund requests are typically reviewed within 1-2 business days. You'll receive a response via email and in your support ticket.
  </Step>
  
  <Step title="Refund processing">
    If approved, refunds are processed to the original payment method:
    - Credit card refunds: 3-5 business days
    - PayPal refunds: 1-3 business days
    - Cryptocurrency refunds: 1-5 business days depending on the currency
  </Step>
</Steps>

## Refund Request Tips

To improve your chances of a successful refund request:

- **Be specific**: Clearly explain why you're requesting a refund
- **Provide evidence**: Include screenshots or documentation of issues
- **Be timely**: Submit your request as soon as possible
- **Be professional**: A polite, clear request is more likely to be approved
- **Suggest solutions**: If you're open to alternatives (credit, service transfer, etc.), mention this in your request

## Appealing a Refund Decision

If your refund request is denied and you believe it meets our policy requirements:

1. Reply to the denial with additional information
2. Escalate to a billing manager by requesting escalation in your reply
3. Provide any additional evidence that supports your request

## Frequently Asked Questions

<AccordionGroup>
  <Accordion title="How long does it take to receive my refund?">
    Once approved, refunds typically take 1-5 business days to appear in your account, depending on your payment method and financial institution.
  </Accordion>
  
  <Accordion title="Can I get a partial refund?">
    Yes, partial refunds may be issued for service outages, billing adjustments, or specific circumstances outlined in our refund policy.
  </Accordion>
  
  <Accordion title="What if I paid with cryptocurrency?">
    Cryptocurrency refunds are typically issued at the current exchange rate, not the original purchase rate. Alternatively, you may receive account credit at your request.
  </Accordion>
  
  <Accordion title="Will my server be deleted if I request a refund?">
    If a full refund is issued, your server will typically be terminated and all data deleted. For partial refunds related to service issues, your service may continue.
  </Accordion>
</AccordionGroup>

## Need More Help?

If you have questions about our refund policy or need assistance with a refund request:

- Email our billing team at [billing@xgamingserver.com](mailto:billing@xgamingserver.com)
- Open a support ticket through your [client area](https://panel.xgamingserver.com/support)
- Use our live chat during business hours
EOL

# Create upgrading service guide
echo -e "${GREEN}Creating Upgrading Service Guide...${NC}"
cat > billing/upgrading-service.mdx << 'EOL'
---
title: "Upgrading Your Service"
description: "How to upgrade your server plan to access more resources"
icon: "arrow-up-right"
---

# Upgrading Your Service

As your server grows in popularity or your needs change, you may find that you need more resources. This guide explains how to upgrade your XGamingServer service to a higher plan.

## When to Upgrade Your Server

Consider upgrading your server if you're experiencing:

- **Performance issues**: Lag, slow loading times, or server crashes
- **Memory warnings**: Frequent "out of memory" errors in your logs
- **CPU bottlenecks**: High CPU usage consistently above 80%
- **Disk space limitations**: Running out of storage space
- **Player capacity issues**: Unable to accommodate your growing community

<Frame>
  <img src="/images/billing/upgrade-indicators.jpg" alt="Server Resource Indicators" />
</Frame>

## Understanding Your Upgrade Options

XGamingServer offers several upgrade paths:

<CardGroup cols={2}>
  <Card title="Vertical Scaling" icon="arrow-up">
    Increase RAM, CPU, and storage on your existing server
  </Card>
  <Card title="Add-On Services" icon="puzzle-piece">
    Add specific resources like extra RAM or storage
  </Card>
  <Card title="Premium Plans" icon="crown">
    Upgrade to premium tiers with additional features
  </Card>
  <Card title="Custom Solutions" icon="sliders">
    Tailor-made configurations for specific needs
  </Card>
</CardGroup>

## How to Upgrade Your Server

<Steps>
  <Step title="Log in to your account">
    Go to the [XGamingServer control panel](https://panel.xgamingserver.com) and log in with your credentials.
  </Step>
  
  <Step title="Navigate to your services">
    Click on "Billing" in the main navigation, then select "Services" from the dropdown menu.
    
    <Frame>
      <img src="/images/billing/billing-services-menu.jpg" alt="Billing Services Menu" />
    </Frame>
  </Step>
  
  <Step title="Select the server to upgrade">
    Locate the server you wish to upgrade and click the "Manage" button.
  </Step>
  
  <Step title="Access upgrade options">
    Look for the "Upgrade/Downgrade" or "Change Plan" button, typically located in the service details page.
    
    <Frame>
      <img src="/images/billing/upgrade-button.jpg" alt="Upgrade Button" />
    </Frame>
  </Step>
  
  <Step title="Select your new plan">
    Browse the available upgrade options and select the plan that best meets your needs. You'll see a comparison between your current plan and the selected upgrade.
    
    <Frame>
      <img src="/images/billing/plan-comparison.jpg" alt="Plan Comparison" />
    </Frame>
  </Step>
  
  <Step title="Review the upgrade details">
    Before confirming, review:
    - Price difference
    - New billing amount
    - Prorated charges (if applicable)
    - Resource changes
    - Effective date
  </Step>
  
  <Step title="Confirm and complete payment">
    Click the "Upgrade" button and complete any required payment for the upgrade. In many cases, you'll only pay the prorated difference between your current plan and the new plan.
  </Step>
  
  <Step title="Server upgrade process">
    After confirmation, your server will begin the upgrade process:
    1. You'll receive a confirmation email
    2. Your server may experience a brief downtime during the upgrade
    3. Once complete, your server will restart with the new resources
  </Step>
</Steps>

## Understanding Prorated Billing for Upgrades

When you upgrade mid-billing cycle, we calculate prorated charges to ensure you only pay for what you use:

1. You receive a credit for the unused portion of your current plan
2. You're charged for the new plan from the upgrade date until the end of your billing cycle

<Info>
  Prorated charges are calculated based on the number of days remaining in your current billing period. This ensures a fair and transparent upgrade process.
</Info>

### Example Calculation

<Frame>
  <img src="/images/billing/proration-example.jpg" alt="Proration Example" />
</Frame>

In this example:
- Current plan: $20/month
- New plan: $30/month
- 15 days remaining in billing cycle (out of 30 days)
- Credit for unused portion: $10 (50% of $20)
- Charge for new plan: $15 (50% of $30)
- Total prorated charge: $5 ($15 - $10)

## Upgrade FAQ

<AccordionGroup>
  <Accordion title="Will my server data be preserved during an upgrade?">
    Yes, all your server data, configurations, and game files are preserved during the upgrade process. However, we recommend creating a backup before any upgrade as a precaution.
  </Accordion>
  
  <Accordion title="How long does the upgrade process take?">
    Most upgrades are completed within 5-30 minutes, depending on the size of your server and the extent of the upgrade. During this time, your server may be temporarily unavailable.
  </Accordion>
  
  <Accordion title="Can I upgrade in the middle of my billing cycle?">
    Yes, you can upgrade at any time. We use prorated billing to ensure you only pay for the difference between your old and new plans for the remainder of your billing cycle.
  </Accordion>
  
  <Accordion title="What if I need to downgrade later?">
    Downgrades follow a similar process but are typically scheduled to take effect at the end of your current billing cycle. See our [changing plans](./changing-plans) guide for more information.
  </Accordion>
</AccordionGroup>

## Special Upgrade Considerations

### Game-Specific Upgrades

Some games have special considerations when upgrading:

<CardGroup cols={2}>
  <Card title="Minecraft" icon="cube">
    Consider Java allocation settings after upgrading RAM
  </Card>
  <Card title="ARK: Survival Evolved" icon="dinosaur">
    May require configuration adjustments for optimal performance
  </Card>
  <Card title="Valheim" icon="shield">
    Benefits significantly from CPU upgrades for large worlds
  </Card>
  <Card title="Rust" icon="wrench">
    Memory and CPU balance is crucial for stable performance
  </Card>
</CardGroup>

### Technical Assistance

Our technical team can help optimize your server after an upgrade:

1. Open a support ticket requesting post-upgrade optimization
2. Specify your game and any particular performance concerns
3. Our team will review your configuration and suggest optimal settings

## Need More Help?

If you have questions about upgrading or need assistance determining the right plan:

- Contact our sales team at [sales@xgamingserver.com](mailto:sales@xgamingserver.com)
- Open a support ticket through your [client area](https://panel.xgamingserver.com/support)
- Use our live chat during business hours
EOL

# Create cancellation guide
echo -e "${GREEN}Creating Service Cancellation Guide...${NC}"
cat > billing/cancellation.mdx << 'EOL'
---
title: "How to Cancel Your Service"
description: "Step-by-step guide to canceling your XGamingServer hosting service"
icon: "ban"
---

# How to Cancel Your Service

If you need to cancel your XGamingServer service, this guide will walk you through the process. Before proceeding, consider if [pausing your server](./pause-server) might be a better option if you plan to return later.

<Warning>
  Canceling your service will result in the permanent deletion of all server data, including game files, configurations, and world saves. This action cannot be undone.
</Warning>

## Cancellation Process

<Steps>
  <Step title="Log in to your account">
    Go to the [XGamingServer control panel](https://panel.xgamingserver.com) and log in with your credentials.
  </Step>
  
  <Step title="Navigate to your services">
    Click on "Billing" in the main navigation, then select "Services" from the dropdown menu.
    
    <Frame>
      <img src="/images/billing/billing-services-menu.jpg" alt="Billing Services Menu" />
    </Frame>
  </Step>
  
  <Step title="Select the service to cancel">
    Locate the server you wish to cancel and click the "Manage" button.
  </Step>
  
  <Step title="Request cancellation">
    Scroll down to the "Service Actions" section and click the "Request Cancellation" button.
    
    <Frame>
      <img src="/images/billing/cancel-service-button.jpg" alt="Cancel Service Button" />
    </Frame>
  </Step>
  
  <Step title="Select cancellation type">
    Choose between "Immediate Cancellation" or "End of Billing Cycle":
    
    - **Immediate Cancellation**: Service will be terminated right away (no refund for unused time)
    - **End of Billing Cycle**: Service remains active until your current billing period ends
    
    <Frame>
      <img src="/images/billing/cancellation-options.jpg" alt="Cancellation Options" />
    </Frame>
  </Step>
  
  <Step title="Provide cancellation reason">
    Select a reason for cancellation from the dropdown menu and provide any additional feedback (optional but helpful).
  </Step>
  
  <Step title="Confirm cancellation">
    Click the "Request Cancellation" button to confirm your decision.
    
    <Warning>
      This step initiates the cancellation process and cannot be easily reversed.
    </Warning>
  </Step>
  
  <Step title="Receive confirmation">
    You'll receive an email confirming that your cancellation request has been processed.
  </Step>
</Steps>

## What Happens After Cancellation

After your service is canceled:

- **Immediate Cancellation**: Your server will be shut down within minutes, and all data will be deleted after 48 hours
- **End of Billing Cycle**: Your server remains active until the end of your current billing period, then data is deleted 48 hours after expiration
- **Billing**: No further charges will be made for the canceled service
- **Data Retention**: All server data, including configurations, world saves, and player data will be permanently deleted
- **Domain
cat >> billing/cancellation.mdx << 'EOL'
Names**: Any custom domains will be unlinked from your server

<Info>
  We retain server backups for 7 days after cancellation. If you realize you need to recover data during this period, contact support immediately as recovery may be possible for a fee.
</Info>

## Special Cancellation Scenarios

### PayPal Subscriptions

If you pay through PayPal, you need to cancel both through our system AND through PayPal:

1. Follow the steps above to cancel your service with XGamingServer
2. Also cancel the recurring payment agreement in your PayPal account

### Annual or Multi-Month Plans

If you're on an annual or multi-month plan:

- Cancellations are still processed as described above
- Refunds for unused time may be available for annual plans, subject to our [refund policy](./refund-policy)
- Contact our billing department for specific information about your plan

## Alternatives to Cancellation

Before finalizing your cancellation, consider these alternatives:

<CardGroup cols={2}>
  <Card title="Pause Your Server" icon="pause" href="./pause-server">
    Temporarily pause your server at a reduced cost while preserving all data.
  </Card>
  <Card title="Downgrade Plan" icon="arrow-down" href="./changing-plans">
    Switch to a smaller, more affordable server plan.
  </Card>
  <Card title="Transfer Ownership" icon="users-between-lines" href="./contact-support">
    Transfer server ownership to another user.
  </Card>
  <Card title="Technical Support" icon="lifebuoy" href="./contact-support">
    Get help with any technical issues you're experiencing.
  </Card>
</CardGroup>

## Reactivating After Cancellation

If you change your mind after cancellation:

- **Before final deletion**: Contact support immediately to stop the cancellation process
- **After deletion**: You'll need to order a new server and start fresh
- **Seasonal players**: Consider using our [server pause feature](./pause-server) instead for future breaks

## Frequently Asked Questions

<AccordionGroup>
  <Accordion title="Will I get a refund for unused time?">
    For monthly services, we do not provide refunds for unused portions of the billing cycle. For annual plans, partial refunds may be available according to our refund policy.
  </Accordion>
  
  <Accordion title="Can I download my data before cancellation?">
    Yes, you can download your server data via SFTP prior to cancellation. See our [SFTP guide](/game-panel/sftp-connection) for instructions.
  </Accordion>
  
  <Accordion title="How do I cancel multiple servers?">
    You'll need to follow the cancellation process separately for each server you wish to cancel.
  </Accordion>
  
  <Accordion title="Can I cancel and get the same server IP later?">
    We cannot guarantee the same IP address for future services. If you anticipate returning, consider pausing your server instead.
  </Accordion>
</AccordionGroup>

## Need More Help?

If you have questions about canceling your service or need assistance with the process:

- Contact our billing team at [billing@xgamingserver.com](mailto:billing@xgamingserver.com)
- Open a support ticket through your [client area](https://panel.xgamingserver.com/support)
- Use our live chat during business hours
EOL

# Create pending order guide
echo -e "${GREEN}Creating Pending Order Guide...${NC}"
cat > billing/pending-order.mdx << 'EOL'
---
title: "I Ordered Service and It Is Pending"
description: "Understanding and resolving pending order status"
icon: "clock-rotate-left"
---

# I Ordered Service and It Is Pending

If you've placed an order with XGamingServer and notice that it's in a "Pending" status, don't worry—this is a normal part of the order process in certain situations. This guide explains why orders may be pending and what steps you can take to resolve this status.

## Why Orders Show as Pending

There are several common reasons why an order might be in a pending status:

<CardGroup cols={2}>
  <Card title="Payment Verification" icon="credit-card">
    Your payment method is being verified by our payment processor
  </Card>
  <Card title="Manual Review" icon="magnifying-glass">
    Your order has been flagged for manual review by our team
  </Card>
  <Card title="Resource Allocation" icon="server">
    System resources are being allocated for your server
  </Card>
  <Card title="Fraud Protection" icon="shield">
    Routine security checks are being performed
  </Card>
</CardGroup>

## Understanding Order Statuses

XGamingServer uses several status labels to track orders:

| Status | Description | Typical Wait Time |
|--------|-------------|------------------|
| Pending | Order received but not yet processed | 5-30 minutes |
| Fraud Check | Order flagged for security verification | 1-12 hours |
| Processing | Order approved and being set up | 5-15 minutes |
| Active | Server is set up and ready to use | N/A |
| Failed | Order could not be processed | N/A |

<Frame>
  <img src="/images/billing/order-status-flow.jpg" alt="Order Status Flow" />
</Frame>

## How to Check Your Order Status

<Steps>
  <Step title="Log in to your account">
    Go to the [XGamingServer control panel](https://panel.xgamingserver.com) and log in with your credentials.
  </Step>
  
  <Step title="Navigate to your orders">
    Click on "Billing" in the main navigation, then select "Orders" from the dropdown menu.
    
    <Frame>
      <img src="/images/billing/billing-orders-menu.jpg" alt="Billing Orders Menu" />
    </Frame>
  </Step>
  
  <Step title="View order details">
    Find your order in the list and click on the order number to view detailed information, including the current status and any notes.
    
    <Frame>
      <img src="/images/billing/order-details.jpg" alt="Order Details View" />
    </Frame>
  </Step>
</Steps>

## Resolving a Pending Order

The steps to resolve a pending order depend on the reason for the pending status:

### For Payment Verification

Most payment verifications resolve automatically within 30 minutes. If your order has been pending for longer:

1. Check your email for any verification requests from our payment processor
2. Verify that your payment method has sufficient funds
3. Ensure your billing address matches the address on file with your payment provider

### For Manual Review Orders

If your order requires manual review:

1. Check your email for any requests for additional information
2. Respond promptly to any verification emails
3. Contact our billing team if you haven't received any communication within 12 hours

### For Resource Allocation Delays

Resource allocation typically happens automatically, but during high-demand periods:

1. Wait for the automated process to complete (usually within 30 minutes)
2. Check your order status occasionally for updates
3. Contact support if the status doesn't change after 1 hour

## Expediting Your Pending Order

If you need your server urgently, here are steps to expedite the process:

<Steps>
  <Step title="Check for verification emails">
    First, check your email (including spam folder) for any verification requests that might be holding up your order.
  </Step>
  
  <Step title="Contact live support">
    Our live chat support can often check the status of your order in real-time and help resolve simple issues.
    
    <Frame>
      <img src="/images/billing/live-chat-support.jpg" alt="Live Chat Support" />
    </Frame>
  </Step>
  
  <Step title="Submit a support ticket">
    If live chat is unavailable, submit a support ticket with your order number and a request for expedited processing.
  </Step>
  
  <Step title="Try an alternative payment method">
    If payment issues are causing the delay, you can try placing a new order with a different payment method.
  </Step>
</Steps>

## Frequently Asked Questions

<AccordionGroup>
  <Accordion title="How long should an order stay in 'Pending' status?">
    Most orders should move out of pending status within 30 minutes. If your order has been pending for more than an hour, it may require attention.
  </Accordion>
  
  <Accordion title="Will I be charged for a pending order?">
    Your payment method may show an authorization hold, but you won't be fully charged until the order is processed and activated.
  </Accordion>
  
  <Accordion title="Can I cancel a pending order?">
    Yes, you can cancel a pending order by contacting our billing team. No charges will be finalized for cancelled pending orders.
  </Accordion>
  
  <Accordion title="What happens if my order fails after being pending?">
    If an order fails, any authorization holds will be released, and you'll receive an email explaining the reason for the failure. You can then address the issue and place a new order.
  </Accordion>
</AccordionGroup>

## Common Pending Order Issues and Solutions

| Issue | Potential Solution |
|-------|-------------------|
| Payment verification delay | Check for verification emails or try a different payment method |
| High system demand | Wait a bit longer as resources are allocated during peak periods |
| Fraud protection triggers | Respond to verification emails or contact support directly |
| Technical setup issues | Contact technical support for assistance |

## Need Immediate Assistance?

If your order has been pending for an unusual amount of time or you need your server urgently:

- Contact our billing team at [billing@xgamingserver.com](mailto:billing@xgamingserver.com)
- Use our live chat support during business hours
- Call our customer service line at (555) 123-4567 for urgent assistance

<Note>
  When contacting support about a pending order, always include your order number and the email address used to place the order.
</Note>
EOL

# Create placeholder images for billing guides
echo -e "${GREEN}Creating placeholder images...${NC}"
touch images/billing/billing-cycles.jpg
touch images/billing/account-credit.jpg
touch images/billing/fraud-review-status.jpg
touch images/billing/fraud-email.jpg
touch images/billing/refund-email-template.jpg
touch images/billing/suspension-email.jpg
touch images/billing/payment-update.jpg
touch images/billing/billing-services-menu.jpg
touch images/billing/cancel-service-button.jpg
touch images/billing/cancellation-options.jpg
touch images/billing/upgrade-indicators.jpg
touch images/billing/upgrade-button.jpg
touch images/billing/plan-comparison.jpg
touch images/billing/proration-example.jpg
touch images/billing/order-status-flow.jpg
touch images/billing/billing-orders-menu.jpg
touch images/billing/order-details.jpg
touch images/billing/live-chat-support.jpg

# Update docs.json billing tab structure
echo -e "${GREEN}Creating suggested docs.json billing tab section...${NC}"
cat > billing-navigation.json << 'EOL'
{
  "tab": "Billing Guides",
  "groups": [
    {
      "group": "Billing Overview",
      "icon": "credit-card",
      "pages": [
        "billing/overview"
      ]
    },
    {
      "group": "Managing Your Service",
      "icon": "sliders",
      "pages": [
        "billing/upgrading-service",
        "billing/cancellation",
        "billing/refund-policy",
        "billing/pending-order",
        "billing/suspensions-terminations",
        "billing/order-fraud"
      ]
    }
  ]
}
EOL

echo -e "${BLUE}IMPORTANT:${NC} The script has created all the requested billing guide files."
echo -e "To add the Billing Guides section to your navigation, insert the contents of the"
echo -e "billing-navigation.json file into your docs.json file."
echo -e ""
echo -e "${GREEN}Script completed successfully!${NC}"
echo "The following files have been created:"
echo "- billing/ directory with 6 guide files:"
echo "  - overview.mdx - Billing Overview"
echo "  - upgrading-service.mdx - Upgrading Your Service"
echo "  - cancellation.mdx - How to Cancel Your Service"
echo "  - refund-policy.mdx - How to Request a Refund"
echo "  - pending-order.mdx - I Ordered Service and It Is Pending"
echo "  - suspensions-terminations.mdx - Suspensions and Terminations"
echo "  - order-fraud.mdx - Why Was My Order Status Listed as Fraud"
echo "- images/billing/ directory with placeholder images"
echo "- billing-navigation.json with the navigation structure to add manually"
echo ""
echo "To preview your documentation after updating docs.json, run: mintlify dev"