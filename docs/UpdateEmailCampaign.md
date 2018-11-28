# SibApiV3Sdk::UpdateEmailCampaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Tag of the campaign | [optional] 
**sender** | [**UpdateEmailCampaignSender**](UpdateEmailCampaignSender.md) |  | [optional] 
**name** | **String** | Name of the campaign | [optional] 
**html_content** | **String** | Body of the message (HTML version). REQUIRED if htmlUrl is empty | [optional] 
**html_url** | **String** | Url which contents the body of the email message. REQUIRED if htmlContent is empty | [optional] 
**scheduled_at** | **DateTime** | UTC date-time on which the campaign has to run (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
**subject** | **String** | Subject of the campaign | [optional] 
**reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] 
**to_field** | **String** | To personalize the «To» Field. If you want to include the first name and last name of your recipient, add {FNAME} {LNAME}. These contact attributes must already exist in your SendinBlue account. If input parameter &#39;params&#39; used please use {{contact.FNAME}} {{contact.LNAME}} for personalization | [optional] 
**recipients** | [**UpdateEmailCampaignRecipients**](UpdateEmailCampaignRecipients.md) |  | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**inline_image_activation** | **BOOLEAN** | Status of inline image. inlineImageActivation &#x3D; false means image can’t be embedded, &amp; inlineImageActivation &#x3D; true means image can be embedded, in the email. You cannot send a campaign of more than 4MB with images embedded in the email. Campaigns with the images embedded in the email must be sent to less than 5000 contacts. | [optional] [default to false]
**mirror_active** | **BOOLEAN** | Status of mirror links in campaign. mirrorActive &#x3D; false means mirror links are deactivated, &amp; mirrorActive &#x3D; true means mirror links are activated, in the campaign | [optional] 
**recurring** | **BOOLEAN** | FOR TRIGGER ONLY ! Type of trigger campaign.recurring &#x3D; false means contact can receive the same Trigger campaign only once, &amp; recurring &#x3D; true means contact can receive the same Trigger campaign several times | [optional] [default to false]
**footer** | **String** | Footer of the email campaign | [optional] 
**header** | **String** | Header of the email campaign | [optional] 
**utm_campaign** | **String** | Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed | [optional] 
**params** | **Object** | Pass the set of attributes to customize the type &#39;classic&#39; campaign. For example, {&#39;FNAME&#39;:&#39;Joe&#39;, &#39;LNAME&#39;:&#39;Doe&#39;}. The &#39;params&#39; field will get updated, only if the campaign is in New Template Language, else ignored. The New Template Language is dependent on the values of &#39;subject&#39;, &#39;htmlContent/htmlUrl&#39;, &#39;sender.name&#39; &amp; &#39;toField&#39; | [optional] 


