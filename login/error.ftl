<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "header">
        ${msg("errorTitleHtml")?no_esc}
    <#elseif section = "form">
        <div id="kc-error-message" class="smart-error-message">
			<div class="alert alert-warning" role="alert">
				<p class="instruction">${message.summary}</p>
			</div>
            <#if client?? && client.baseUrl?has_content>
                <p><a id="backToApplication" href="${client.baseUrl}">${msg("backToApplication")?no_esc}</a></p>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>