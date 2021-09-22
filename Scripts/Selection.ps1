$caption = "Yine Hosgeldin $env:UserName!
 "
$description = "Bu sefer Ne yapmak istersin ?
 "

$choices = New-Object Collections.ObjectModel.Collection[Management.Automation.Host.ChoiceDescription]
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
    -ArgumentList `
      "&Start The Bot - Botu baslat",
      "Botu başlatırsınız"
))
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
    -ArgumentList `
     "&Update npm modules Botu guncelle",
     "Npm modüllerini günceller"
))
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
  -ArgumentList `
  "&Exit - Cik",
  "Botu Kapatır"
))
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
  -ArgumentList `
  "&Node version - Node surumu",
  "Node.js surumunu gosterir"
))


$selection = $host.ui.PromptForChoice($caption, $description, $choices, -1)
Write-Host

switch($selection) {
  0 {
    .\Scripts\Start.ps1
  }
  1 {
    .\Scripts\Update.ps1
  }
  2 {
    Exit 
  }
  3 {
    ./Scripts/NodeSürümü.ps1
  }
  }
