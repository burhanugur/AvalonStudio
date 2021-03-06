   param([string]$url, [string]$path)
     
    if(!(Split-Path -parent $path) -or !(Test-Path -pathType Container (Split-Path -parent $path))) {
      $path = Join-Path $pwd (Split-Path -leaf $path)
    }
     
    "Downloading [$url]`nSaving at [$path]"
    $client = new-object System.Net.WebClient
    $client.DownloadFile($url, $path)
     
    $path