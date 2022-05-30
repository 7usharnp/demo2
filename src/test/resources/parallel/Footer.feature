Feature: Footer functionality

Background:
Given user is on Landing page
And user accept cookies
And user scroll to footer

#Scenario: About us link redirection in footer
#When User click about us link 
#Then user should redirected to "About Us - IT Services & Solutions Company | Cybage Software Pvt Ltd" to about us page
#
#Scenario: Awards link redirection in footer
#When user clicks on awards link in footer
#Then user should redirected to "Awards Recognitions"

Scenario Outline: Links Validation in footer
When user clicks on <linktag> in footer
Then user should redirected to <pageTitle> in footer


Examples:
|linktag | pageTitle |
|"Awards" | "Awards Recognitions"|
|"Leadership" | "Leadership" |
|"CeoDesk" |"CEO's Desk"|
|"Corporate Governance" |"Corporate Governance" |
|"Media & Advertising" |  "Media and Advertising"|
|"Hi-Tech" | "Hi-Tech Product & Platform Engineering Services"|



#|Supply Chain & Logistics||
#|Healthcare & life science ||
#|Digital Product Engineer ||
#|Architecutral services |  |
#|Cloud | |
#|Enterprise Mobiliity ||
#|Bi||
#|Martech ||
#|ECM| |
#|CRM | |
#|Alliances ||
#|Testing & QA||
#|Support Services||
#|Life at Cybage||
#
#





