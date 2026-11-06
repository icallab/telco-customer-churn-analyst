# Telco Customer Churn Analysis
## Executive Business Insights & Strategic Recommendations

## 1. Executive Summary

The analysis covers **7,043 customers**, consisting of **1,869 churned customers** and **5,174 retained customers**. The overall churn rate is **26.54%**, meaning approximately one in four customers has discontinued the service.

The average customer tenure is **32.37 months**, while average monthly charges are **64.76**.

The analysis identifies several customer segments with comparatively high churn rates:

- **Short-tenure customers (0–12 months):** 47.44% churn rate.
- **Electronic check users:** 45.29% churn rate.
- **Month-to-month contract customers:** 42.71% churn rate.
- **Fiber optic customers:** 41.89% churn rate.
- **Senior citizens:** 41.68% churn rate.

These findings highlight potential areas for customer retention improvement, particularly during the early customer lifecycle, among customers with flexible contracts, and within specific service and payment segments.

The results represent descriptive patterns and associations in the dataset. They should not be interpreted as proof that these characteristics directly cause customer churn.

---

## 2. Key Business Insights & Recommendations

### Insight 1: Month-to-Month Contracts Have the Highest Churn Rate

**Key Findings**

| Contract Type | Total Customers | Churned Customers | Churn Rate |
|---|---:|---:|---:|
| Month-to-month | 3,875 | 1,655 | 42.71% |
| One year | 1,473 | 166 | 11.27% |
| Two year | 1,695 | 48 | 2.83% |

Key observations:

- Month-to-month customers have a churn rate approximately **3.79 times higher** than one-year contract customers.
- Their churn rate is approximately **15.09 times higher** than two-year contract customers.
- Month-to-month customers represent approximately **55.02% of the entire customer base**.
- Approximately **88.55% of all churned customers** come from the month-to-month segment.

**Business Interpretation**

Customers with month-to-month contracts exhibit substantially higher churn than customers with longer-term commitments.

Possible business explanations include lower switching barriers, greater flexibility to discontinue services, and insufficient incentives to maintain long-term subscriptions. However, these explanations are hypotheses and require further investigation.

**Strategic Recommendations**

1. **Contract Upgrade Campaign**
   - Encourage eligible month-to-month customers to switch to one-year or two-year contracts.
   - Provide limited-time discounts, cashback, or additional service benefits.
   - Communicate the financial and service benefits of longer-term contracts.

2. **Targeted Retention Offers**
   - Prioritize month-to-month customers with longer tenure, high monthly charges, or previous service complaints.
   - Offer personalized retention packages rather than applying discounts to every customer.

3. **Monitor Contract Conversion Performance**
   - Track the number and percentage of customers upgrading their contracts.
   - Compare churn rates before and after the campaign.

**Suggested KPIs**

- Month-to-Month Churn Rate
- Contract Upgrade Conversion Rate
- Annual Contract Adoption Rate
- Customer Retention Rate

---

### 2. Short-Tenure Customers Have the Highest Churn Rate

**Key Findings**

| Tenure Group | Total Customers | Churned Customers | Retained Customers | Churn Rate |
|---|---:|---:|---:|---:|
| 0–12 Months | 2,186 | 1,037 | 1,149 | 47.44% |
| 13–24 Months | 1,024 | 294 | 730 | 28.71% |
| 25–48 Months | 1,594 | 325 | 1,269 | 20.39% |
| 49+ Months | 2,239 | 213 | 2,026 | 9.51% |
| **Total** | **7,043** | **1,869** | **5,174** | **26.54%** |

**Key Observations:**

- Customers with 0–12 months of tenure have the highest churn rate at **47.44%**.
- Approximately 1,037 out of 2,186 customers in this group have discontinued their subscriptions.
- The churn rate decreases progressively across longer tenure groups, reaching 9.51% among customers with 49+ months of tenure.
- The 0–12 month segment has a churn rate approximately **4.99 times higher** than the 49+ month segment.

**Business Interpretation:**

The findings indicate that customers are more vulnerable to churn during the early stages of their relationship with the company. The decreasing churn rates across tenure groups suggest that customer retention may improve as the customer relationship becomes longer.

This pattern highlights the importance of customer onboarding, early engagement, and proactive support. However, the analysis does not establish that tenure itself directly causes customer churn.

**Business Implication:**

The company should prioritize retention initiatives during the first 12 months of the customer lifecycle, when the observed churn rate is highest.

**Strategic Recommendations**

Implement a structured **First-Year Customer Retention Program**:

1. **Months 1–3: Customer Onboarding**
   - Provide clear service setup instructions.
   - Introduce customers to available features.
   - Offer accessible technical assistance.

2. **Months 3–6: Engagement and Satisfaction**
   - Monitor customer complaints and service issues.
   - Conduct satisfaction surveys.
   - Identify customers experiencing recurring technical problems.

3. **Months 6–12: Retention and Loyalty**
   - Provide personalized loyalty offers.
   - Introduce relevant additional services.
   - Encourage suitable customers to upgrade their contracts.

**Suggested KPIs**

- First-Year Churn Rate
- 90-Day Customer Retention Rate
- 6-Month Customer Retention Rate
- 12-Month Customer Retention Rate
- Customer Satisfaction Score

---

### Insight 3: Fiber Optic Customers Show Higher Churn Than Other Internet Service Segments

**Key Findings**

| Internet Service | Churn Rate |
|---|---:|
| Fiber Optic | 41.89% |
| DSL | 18.96% |
| No Internet Service | 7.40% |

Key observations:

- Fiber optic customers have a churn rate approximately **2.21 times higher** than DSL customers.
- Their churn rate is approximately **5.66 times higher** than customers without internet service.
- Fiber optic represents the highest-churn segment among the three internet service categories.

**Business Interpretation**

The relatively high churn rate among fiber optic customers may indicate an opportunity to investigate service quality, pricing, customer expectations, and competitive alternatives.

Customers choosing fiber optic services may have higher expectations regarding internet speed, reliability, and overall service performance.

However, the available data does not establish whether pricing, network quality, or another factor is responsible for the observed difference.

**Strategic Recommendations**

1. **Evaluate Fiber Optic Service Quality**
   - Investigate network reliability, connection interruptions, and reported technical issues.
   - Review customer complaints and support tickets.

2. **Review Pricing and Package Competitiveness**
   - Compare fiber optic package prices with available alternatives.
   - Evaluate whether package benefits are aligned with customer expectations.

3. **Develop Targeted Retention Programs**
   - Identify fiber optic customers with high monthly charges or recurring service complaints.
   - Provide appropriate technical assistance and personalized offers.

**Suggested KPIs**

- Fiber Optic Churn Rate
- Fiber Optic Customer Complaint Rate
- Average Resolution Time
- Fiber Optic Customer Retention Rate

---

### Insight 4: Electronic Check Users Have the Highest Churn Rate Among Payment Methods

**Key Findings**

| Payment Method | Churn Rate |
|---|---:|
| Electronic Check | 45.29% |
| Mailed Check | 19.11% |
| Bank Transfer (Automatic) | 16.71% |
| Credit Card (Automatic) | 15.24% |

Key observations:

- Electronic check users have the highest churn rate at **45.29%**.
- Their churn rate is approximately **2.97 times higher** than automatic credit card users.
- Their churn rate is approximately **2.71 times higher** than automatic bank transfer users.
- Both automatic payment categories have comparatively lower churn rates.

**Business Interpretation**

Payment method is associated with differences in customer churn.

The relatively high churn rate among electronic check users suggests that this segment deserves further investigation. However, the available data does not demonstrate that electronic check usage itself causes customers to leave or that automatic payment directly improves loyalty.

Other customer characteristics, such as contract type, tenure, and service preferences, may also contribute to the observed differences.

**Strategic Recommendations**

1. **Promote Automatic Payment Options**
   - Encourage customers to consider automatic bank transfer or credit card payments.
   - Explain the convenience and benefits of automatic payment.

2. **Provide Payment Incentives**
   - Consider small discounts, loyalty points, or cashback for eligible customers.
   - Evaluate the financial feasibility before implementation.

3. **Investigate Electronic Check Customers**
   - Examine whether this segment also has a higher proportion of month-to-month contracts or short-tenure customers.
   - Identify whether payment difficulties or billing complaints are contributing factors.

**Suggested KPIs**

- Electronic Check Churn Rate
- Automatic Payment Adoption Rate
- Payment Method Conversion Rate
- Churn Rate by Payment Method

---

### Insight 5: Senior Citizens Have a Higher Churn Rate Than Non-Senior Customers

**Key Findings**

| Customer Group | Churn Rate |
|---|---:|
| Senior Citizens | 41.68% |
| Non-Senior Citizens | 23.61% |

Key observations:

- Senior citizens have a churn rate of **41.68%**.
- Non-senior customers have a churn rate of **23.61%**.
- The senior citizen churn rate is approximately **1.77 times higher**.

**Business Interpretation**

The difference indicates that senior citizens represent a customer segment that may benefit from additional retention attention.

Potential explanations could include differences in service preferences, pricing sensitivity, technical support requirements, or customer experience. These are hypotheses rather than established causes.

**Strategic Recommendations**

1. **Improve Customer Support Accessibility**
   - Provide clear and easy-to-understand support instructions.
   - Make technical assistance accessible through appropriate support channels.

2. **Review Service Package Suitability**
   - Evaluate whether existing packages match the needs and usage patterns of senior customers.
   - Consider simpler package explanations and transparent billing information.

3. **Provide Proactive Assistance**
   - Follow up with customers reporting repeated technical or billing issues.
   - Offer assistance before unresolved problems lead to cancellation.

**Suggested KPIs**

- Senior Citizen Churn Rate
- Customer Support Resolution Time
- Senior Customer Retention Rate
- Complaint Resolution Rate

---

### Insight 6: Gender Has Only a Small Difference in Churn Rate

**Key Findings**

| Gender | Churn Rate |
|---|---:|
| Female | 26.92% |
| Male | 26.16% |

Key observations:

- Female customers have a churn rate of **26.92%**.
- Male customers have a churn rate of **26.16%**.
- The difference is only **0.76 percentage points**.

**Business Interpretation**

The descriptive difference between female and male customer churn rates is relatively small compared with the differences observed across contract types, tenure groups, and payment methods.

Based on this analysis, gender does not appear to be a major segment for prioritizing retention initiatives.

This is a descriptive comparison, not a statistical significance test.

**Strategic Recommendations**

- Maintain consistent service quality across customer groups.
- Prioritize retention campaigns based on stronger observed churn patterns, such as tenure and contract type.
- Avoid allocating substantial retention resources based solely on gender.

**Suggested KPI**

- Churn Rate by Gender

---

### Insight 7: Customers Without Additional Services Have Higher Churn Rates

**Key Findings**

| Additional Service | Without Service | With Service |
|---|---:|---:|
| Online Security | 41.77% | 14.61% |
| Tech Support | 41.64% | 15.17% |
| Device Protection | 39.13% | 22.50% |
| Online Backup | 39.93% | 21.53% |

Key observations:

- Customers without Online Security have a churn rate of **41.77%**, compared with **14.61%** among customers with the service.
- Customers without Tech Support have a churn rate of **41.64%**, compared with **15.17%** among customers with the service.
- Similar patterns appear for Device Protection and Online Backup.
- The largest observed differences are in Online Security and Tech Support.

**Business Interpretation**

Customers subscribed to additional services generally show lower churn rates than customers without those services.

This pattern suggests a potential relationship between service adoption and customer retention.

One possible explanation is that customers using additional services may receive more value from the overall subscription. However, the analysis does not prove that additional services directly reduce churn.

Customer tenure, contract type, and internet service type may also influence these differences.

**Strategic Recommendations**

1. **Develop Relevant Service Bundles**
   - Create packages combining core internet services with relevant additional services.
   - Clearly communicate the benefits of each service.

2. **Target Customers Without Additional Services**
   - Identify customers who may benefit from Online Security, Tech Support, Device Protection, or Online Backup.
   - Offer relevant promotions based on customer needs.

3. **Evaluate Service Adoption**
   - Monitor whether customers adopting additional services demonstrate improved retention over time.
   - Compare adoption and churn patterns while considering tenure and contract type.

4. **Explore Service Bundling Opportunities**
   - Consider Basic, Family, and Premium packages with clearly differentiated benefits.

**Suggested KPIs**

- Additional Service Adoption Rate
- Churn Rate by Service Status
- Online Security Adoption Rate
- Tech Support Adoption Rate
- Retention Rate by Number of Additional Services

*Further analysis of churn rate by the number of additional services is required before concluding that customers with more services are consistently less likely to churn.*

---

### Insight 8: Long-Term Contract Customers Have Higher Accumulated Charges

**Key Findings**

| Contract Type | Average Total Charges |
|---|---:|
| Month-to-month | Approximately 1.4K |
| One year | Approximately 3.0K |
| Two year | Approximately 3.7K |

Key observations:

- Two-year contract customers have the highest average accumulated charges.
- Their average Total Charges are approximately **2.6 times higher** than month-to-month customers.
- One-year contract customers also have higher average accumulated charges than month-to-month customers.

**Business Interpretation**

Customers with longer-term contracts have higher accumulated charges in the available dataset.

This pattern is consistent with longer customer relationships and greater accumulated billing over time.

However, Total Charges represent historical accumulated billing, not customer lifetime value (CLV). The metric does not account for acquisition costs, operating costs, service costs, or profit margins.

Therefore, these values should not be interpreted as actual customer profitability or lifetime value.

**Strategic Recommendations**

1. **Prioritize Long-Term Customer Retention**
   - Maintain service quality for customers with longer-term contracts.
   - Identify potential cancellation risks among high-value customer segments.

2. **Improve Customer Lifetime Value Analysis**
   - Incorporate customer acquisition costs, operating expenses, and profit margins when the required data becomes available.
   - Develop a more comprehensive CLV calculation.

3. **Monitor Accumulated Revenue**
   - Compare accumulated charges across contract types and tenure groups.
   - Use the findings to support customer value segmentation.

**Suggested KPIs**

- Average Total Charges by Contract
- Average Monthly Charges by Contract
- Customer Retention Rate by Contract
- Customer Lifetime Value (when sufficient financial data is available)

---

## 3. Priority Churn Segments

Based on the observed churn rates, the following five segments have the highest churn percentages among the categories examined.

| Priority | Customer Segment | Churn Rate |
|---:|---|---:|
| 1 | Tenure 0–12 Months | 47.44% |
| 2 | Electronic Check Users | 45.29% |
| 3 | Month-to-Month Contract | 42.71% |
| 4 | Fiber Optic Customers | 41.89% |
| 5 | Senior Citizens | 41.68% |

**Important Interpretation**

These are segment-level churn rates, not mutually exclusive customer groups. A single customer may belong to multiple segments simultaneously.

The ranking identifies areas that deserve further investigation and retention attention. It does not establish the independent contribution of each characteristic to overall churn.

---

## 4. Strategic Action Plan

The following initiatives translate the analytical findings into practical business actions.

| Priority | Strategic Initiative | Target Segment | Expected Business Objective |
|---|---|---|---|
| High | First-Year Retention Program | Customers with 0–12 months tenure | Improve early customer retention |
| High | Contract Upgrade Campaign | Month-to-month customers | Encourage longer-term contracts |
| High | Fiber Service Improvement | Fiber optic customers | Improve service experience |
| Medium | Automatic Payment Promotion | Electronic check users | Increase automatic payment adoption |
| Medium | Additional Service Bundling | Customers without additional services | Increase relevant service adoption |
| Medium | Accessible Customer Support | Senior citizens | Improve customer support experience |

### Recommended Implementation Sequence

**Phase 1 — Identify and Prioritize**

- Identify customers with high-risk characteristics.
- Examine overlapping segments, such as short-tenure customers with month-to-month contracts.
- Review customer complaints and service history where available.

**Phase 2 — Implement Retention Initiatives**

- Launch first-year retention campaigns.
- Test contract upgrade incentives.
- Investigate fiber optic service complaints.
- Introduce targeted additional-service offers.

**Phase 3 — Measure and Evaluate**

- Compare churn rates before and after each initiative.
- Measure campaign conversion rates.
- Evaluate customer retention by segment.
- Review whether the financial benefits justify campaign costs.

---

## 5. Illustrative Business Impact Scenario

To demonstrate how analytical findings can support business planning, consider a hypothetical scenario focused on month-to-month customers.

**Current Situation**

- Total customers: 7,043
- Total churned customers: 1,869
- Month-to-month churned customers: 1,655
- Overall churn rate: 26.54%

**Hypothetical Scenario**

Assume the business successfully reduces the number of churned month-to-month customers by **20% relative to the current figure**, while all other customer segments remain unchanged.

Calculation:

- Reduction in month-to-month churn: 1,655 × 20% = approximately 331 customers.
- New estimated total churned customers: 1,869 − 331 = approximately 1,538 customers.
- New estimated overall churn rate: 1,538 ÷ 7,043 = approximately 21.84%.

| Metric | Current Situation | Illustrative Scenario |
|---|---:|---:|
| Total Customers | 7,043 | 7,043 |
| Churned Customers | 1,869 | Approximately 1,538 |
| Overall Churn Rate | 26.54% | Approximately 21.84% |
| Difference in Churned Customers | — | Approximately 331 fewer |

**Interpretation**

Under this scenario, reducing month-to-month churn by 20% relative to its current churn count could lower the overall churn rate from approximately 26.54% to 21.84%.

This is an illustrative calculation, not a forecast or guaranteed business outcome. It assumes a fixed customer base and no changes in other segments. Actual results would depend on campaign effectiveness, customer responses, costs, and changes in the customer population.

---

## 6. Analytical Limitations

Several limitations should be considered when interpreting the findings:

1. **Snapshot Dataset**  
   The dataset represents customer information at a particular point in time and does not provide a complete historical record of customer behavior.

2. **Descriptive Analysis**  
   The analysis identifies patterns and associations but does not establish causal relationships between customer characteristics and churn.

3. **Limited Churn Reasons**  
   The dataset does not provide comprehensive reasons explaining why individual customers discontinued their subscriptions.

4. **Limited Financial Information**  
   Total Charges represent accumulated customer billing rather than actual profitability or customer lifetime value. Additional financial data is needed for a reliable CLV analysis.

5. **Potential Segment Overlap**  
   Customers may belong to multiple high-churn segments simultaneously. Segment-level churn rates should not be added together or interpreted as independent contributions to total churn.

6. **Recommendations Require Validation**  
   Proposed retention strategies are business hypotheses. Their effectiveness should be evaluated through campaign monitoring, customer feedback, and controlled testing where feasible.

---

## 7. Final Conclusion

The Telco Customer Churn Analysis reveals that **26.54% of customers have discontinued their subscriptions**, highlighting customer retention as an important business challenge.

The strongest observed churn patterns are concentrated among customers with short tenure, electronic check payment methods, month-to-month contracts, fiber optic internet services, and senior citizen demographics.

Among these findings, the first-year customer segment and month-to-month contract segment represent particularly important areas for further investigation because of their high churn rates and potential retention opportunities.

The analysis suggests that the business should prioritize:

1. Strengthening customer retention during the first 12 months.
2. Encouraging suitable month-to-month customers to adopt longer-term contracts.
3. Investigating fiber optic service quality and customer satisfaction.
4. Promoting automatic payment options while investigating electronic check customer behavior.
5. Improving relevant additional-service adoption and customer support accessibility.

Ultimately, customer churn analysis should not stop at identifying which segments have the highest churn rates. Its business value comes from translating analytical findings into targeted initiatives, measuring their outcomes, and continuously improving customer retention strategies.

**Project Takeaway:** Data analytics can help businesses identify customer segments with elevated churn rates, understand potential retention opportunities, and support more informed business decisions.