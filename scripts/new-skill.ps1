<#
.SYNOPSIS
    Scaffolds a new skill directory in the repository.
.EXAMPLE
    .\scripts\new-skill.ps1 -Name "my-new-skill" -Description "Use this skill when doing..."
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Name,

    [Parameter(Mandatory = $false)]
    [string]$Description = "Use this skill when..."
)

$skillSlug = $Name.ToLower().Trim() -replace '[^a-z0-9_-]', '-'
$repoRoot = Split-Path -Parent $PSScriptRoot
$skillDir = Join-Path $repoRoot "skills\$skillSlug"

if (Test-Path $skillDir) {
    Write-Error "Skill directory already exists: $skillDir"
    exit 1
}

New-Item -ItemType Directory -Path $skillDir -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $skillDir "references") -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $skillDir "scripts") -Force | Out-Null

$skillMdContent = @"
---
name: $skillSlug
description: >-
  $Description
---

# $Name

Describe the skill and its workflow here.

## When to Use
- Trigger scenarios and use cases.

## Workflow & Guidelines
1. Step 1
2. Step 2
3. Step 3

## Verification
- How to test and verify the output.
"@

$skillMdPath = Join-Path $skillDir "SKILL.md"
Set-Content -Path $skillMdPath -Value $skillMdContent -Encoding utf8

Write-Host "Created new skill scaffold at: $skillDir" -ForegroundColor Green
Write-Host "SKILL.md: $skillMdPath" -ForegroundColor Cyan
