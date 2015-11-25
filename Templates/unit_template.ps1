<#
.Synopsis
   Template for creating DSC Resource Unit Tests
.DESCRIPTION
   To Use:
     1. Copy to \Tests\Integration\ folder and rename MSFT_x<ResourceName>.tests.ps1
     2. Customize TODO sections.

.NOTES
   Code in HEADER and FOOTER regions are standard and may be moved into DSCResource.Tools in
   Future and therefore should not be altered if possible.
#>


# TODO: Customize these parameters...
$DSCModuleName      = 'x<ModuleName>' # Example xNetworking
$DSCResourceName    = 'MSFT_x<ResourceName>' # Example MSFT_xFirewall
# /TODO

#region HEADER
if ( (-not (Test-Path -Path '.\DSCResource.Tests\')) -or `
     (-not (Test-Path -Path '.\DSCResource.Tests\TestHelper.psm1')) )
{
    Throw @(
        "The DSCResource.Tests folder could not be found in the root folder of the $DSCModuleName DSC Module to test."
        "Please use Git to clone this repository to the root folder of the $DSCModuleName DSC Module that needs to be tested using the command:"
        "git clone https://github.com/PowerShell/DscResource.Tests.git"
    ) -join "`n"
}
Import-Module .\DSCResource.Tests\TestHelper.psm1 -Force
$TestEnvironment = Initialize-TestEnvironment `
    -DSCModuleName $DSCModuleName `
    -DSCResourceName $DSCResourceName `
    -TestType Unit 
#endregion

# TODO: Other Optional Init Code Goes Here...

# Begin Testing
try
{

    #region Pester Tests

    InModuleScope $DSCResourceName {

        #region Pester Test Initialization
        # TODO: Optopnal Load Mock for use in Pester tests here...
        #endregion


        #region Function Get-TargetResource
        Describe 'Get-TargetResource' {
            # TODO: Complete Tests...
        }
        #endregion


        #region Function Test-TargetResource
        Describe 'Test-TargetResource' {
            # TODO: Complete Tests...
        }
        #endregion


        #region Function Set-TargetResource
        Describe 'Set-TargetResource' {
            # TODO: Complete Tests...
        }
        #endregion

        # TODO: Pester Tests for any Helper Cmdlets

    }
    #endregion
}
finally
{
    #region FOOTER
    Restore-TestEnvironment -TestEnvironment $TestEnvironment
    #endregion

    # TODO: Other Optional Cleanup Code Goes Here...
}
