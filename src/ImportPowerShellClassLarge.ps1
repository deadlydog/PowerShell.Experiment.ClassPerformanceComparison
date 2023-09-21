enum tiPSTipCategory
{
	Community # Social events and community resources. e.g. PowerShell Summit, podcasts, etc.
	CoreCmdlet # Core cmdlet tips. e.g. Get-Process, Get-ChildItem, Get-Content, etc.
	Editor # Editor tips and extensions. e.g. VSCode, ISE, etc.
	Module # Modules and module tips. e.g. PSScriptAnalyzer, Pester, etc.
	Syntax # Syntax tips. e.g. splatting, pipeline, etc.
	Terminal # Terminal shortcuts and tips. e.g. PSReadLine, Windows Terminal, ConEmu, etc.
	Other # Tips that don't fit into any of the above categories.
}

class tiPSPowerShellTip
{
	[DateTime] $CreatedDate
	[string] $Title
	[string] $TipText
	[string] $Example
	[string[]] $Urls
	[string] $MinPowerShellVersion
	[tiPSTipCategory] $Category

	tiPSPowerShellTip()
	{
		$this.CreatedDate = [DateTime]::MinValue
		$this.Title = [string]::Empty
		$this.TipText = [string]::Empty
		$this.Example = [string]::Empty
		$this.Urls = @()
		$this.MinPowerShellVersion = [string]::Empty
		$this.Category = [tiPSTipCategory]::Other
	}

	[string] Id()
	{
		[string] $id = $this.CreatedDate.ToString("yyyy-MM-dd-") + $this.Title.ToLower().Replace(" ", "-")
		[string] $idWithoutSpecialCharacters = [System.Text.RegularExpressions.Regex]::Replace($id, '[^a-zA-Z0-9-]', '')
		return $idWithoutSpecialCharacters
	}

	[bool] UrlsAreProvided()
	{
		return $null -ne $this.Urls -and $this.Urls.Length -gt 0
	}

	[bool] MinPowerShellVersionIsProvided()
	{
		return ![string]::IsNullOrWhiteSpace($this.MinPowerShellVersion) -and $this.MinPowerShellVersion -ne '0.0'
	}

	[void] Validate()
	{
		if ($this.CreatedDate -eq [DateTime]::MinValue)
		{
			throw [System.ArgumentException]::new("The CreatedDate property must be set.")
		}

		if ([string]::IsNullOrWhiteSpace($this.Title))
		{
			throw [System.ArgumentException]::new("The Title property must be set.")
		}

		if ($this.Title.Length -gt 75)
		{
			throw [System.ArgumentException]::new("The Title property value must be 75 characters or less. The current title's length is " + $this.Title.Length + " characters.")
		}

		if ([string]::IsNullOrWhiteSpace($this.TipText))
		{
			throw [System.ArgumentException]::new("The TipText property must be set.")
		}

		if ($this.UrlsAreProvided() -and $this.Urls.Length -gt 3)
		{
			throw [System.ArgumentException]::new("You may only provide up to 3 Urls.")
		}

		foreach ($url in $this.Urls)
		{
			if ([string]::IsNullOrWhiteSpace($url))
			{
				throw [System.ArgumentException]::new("The Urls property must not contain null or empty values.")
			}

			[bool] $urlStartsWithHttp = $url.StartsWith("http://") -or $url.StartsWith("https://")
			if (!$urlStartsWithHttp)
			{
				throw [System.ArgumentException]::new("The Urls property value '" + $url + "' must start with 'http://' or 'https://'.")
			}

			[System.Uri] $uri = $null
			[bool] $isValidUrl = [System.Uri]::TryCreate($url, [System.UriKind]::Absolute, [ref] $uri)
			if (!$isValidUrl)
			{
				throw [System.ArgumentException]::new("The Urls property value '" + $url + "' is not a valid URL.")
			}
		}

		if ($this.MinPowerShellVersionIsProvided())
		{
			[System.Version] $version = $null
			[bool] $isValidVersionNumber = [System.Version]::TryParse($this.MinPowerShellVersion, [ref] $version)
			if (!$isValidVersionNumber)
			{
				throw [System.ArgumentException]::new("The MinPowerShellVersion property value '" + $this.MinPowerShellVersion + "' is not a valid version number.")
			}

			if ($version -eq [System.Version]::new(0, 0) -and $this.MinPowerShellVersion -ne '0.0')
			{
				throw [System.ArgumentException]::new("To specify that there is no minimum PowerShell version, use a MinPowerShellVersion property value of '0.0' instead of '" + $this.MinPowerShellVersion + "'.")
			}

			if ($version.Build -gt 0 -or $version.Revision -lt 0)
			{
				throw [System.ArgumentException]::new("The MinPowerShellVersion property value should be of the format 'Major.Minor'. The value '" + $this.MinPowerShellVersion + "' is not valid.")
			}
		}
	}
}
