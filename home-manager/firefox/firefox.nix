 
    { ... }:

	{
	    programs.firefox = {
	     enable = true;
		policies = {
		    DisablePocket = true;
		    DisableTelemetry = true;
		    
		    # Autofill/Saving prompts
		    # Disables autofill of physical addresses in forms.
		    AutofillAddressEnabled = false;
		    # Disables autofill of card information in forms.
		    AutofillCreditCardEnabled = false;
		    # Disables offer to save logins.
		    OfferToSaveLogins = false;
		    # Changes default toggle for offering to save logins to false.
		    OfferToSaveLoginsDefault = false;
		    
		    # Tracking protection options.
		    EnableTrackingProtection = {
			# Enables tracking protection.
			Value = true;
			# Enable cryptomining blocking.
			Cryptomining = true;
			# Enables fingerprint protection.
			Fingerprinting = true;
			# Enables email tracking cookie protection.
			EmailTracking = true;
			# Blocks suspected fingerprinting.
			SuspectedFingerprinting = true;
			# Cookie blocking must be set in profiles.
		    };

		    # Enables HTTPS-Only mode.
		    HttpsOnlyMode = "enabled";

		    # Enables DNS over HTTPS.
		    DNSOverHTTPS = {
			Enabled = true;
			Fallback = true;
		    };

		    # Sets cookie mode.
		    Cookies = {
			# Rejects third-party cookies.
			Behavior = "reject-foreign";
			
		    };

		    # Configures GenerativeAI options
		    GenerativeAI = {
			# Disables sidebar LLM chatbot.
			Chatbot = false;
			# Disables LLM enhanced tab group organization.
			TabGroups = false;
		    };
		    
		    # Disables Firefox's native password manager.
		    PasswordManagerEnabled = false;
		
		};
	    };
	}
