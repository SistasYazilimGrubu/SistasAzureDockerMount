<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="login-pf">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title><#nested "title"></title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="smart-body">
    <div id="kc-logo" class="smart-logo">
		<a target="_blank" href="${properties.kcLogoLink!'#'}">
			<div id="kc-logo-wrapper" class="smart-logo-wrapper animated fadeIn delayed_025s"></div>
		</a>
	</div>

    <div id="kc-container" class="smart-container">
        <div id="kc-container-wrapper" class="smart-container-wrapper animated fadeIn delayed_05s">

            <div id="kc-header" class="smart-header">
				<div class="row" style="margin-top: 15px; margin-bottom: 20px;">
					<div class="col-md-8">
						<div id="kc-header-wrapper" class="smart-header-wrapper animated fadeInUp delayed_025s"><#nested "header"></div>
					</div>
					<div class="col-md-4">
						<#if realm.internationalizationEnabled>
							<div id="kc-locale" class="smart-locale">
								<div id="kc-locale-wrapper" class="smart-locale-wrapper">
									<div id="kc-locale-dropdown" class="smart-locale-dropdown">
										<a href="#" id="kc-current-locale-link" class="smart-current-locale-link dropdown">
											<span>
												<i class="ti-world"></i>&nbsp;
												<span>${locale.current}</span>
												<span class="caret"></span>
											</span>
										</a>
										<ul class="smart-dropdown-menu">
											<#list locale.supported as l>
												<li><a class="smart-dropdown-item" href="${l.url}">${l.label}</a></li>
											</#list>
										</ul>
									</div>
								</div>
							</div>
						</#if>
					</div>
				</div>
            </div>

            <div id="kc-content" class="smart-content">
				<div id="kc-form" class="kc-form">
					<div id="kc-form-wrapper" class="smart-form-wrapper">
						<#nested "form">
					</div>
				</div>
				<#if displayInfo>
					<div id="kc-info" class="smart-info details">
						<div id="kc-info-wrapper" class="smart-info-wrapper">
							<#nested "info">
						</div>
					</div>
				</#if>
			</div>
		</div>
	</div>
		
		<#if displayMessage && message?has_content>
			<div id="kc-content-wrapper" class="smart-content-wrapper">
				<div class="smart-feedback alert-wrapper col-md-4">
					<div class="alert alert-${message.type} animated flipInX delayed_05s">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<#if message.type = 'success'><i class="ti-check"></i>&nbsp;</#if>
						<#if message.type = 'warning'><i class="ti-info"></i>&nbsp;</#if>
						<#if message.type = 'error'><i class="ti-close"></i>&nbsp;</#if>
						<#if message.type = 'info'><i class="ti-info"></i>&nbsp;</#if>
						<span class="smart-feedback-text">${message.summary?no_esc}</span>
					</div>
				</div>
			</div>
		</#if>
</body>
</html>
</#macro>
