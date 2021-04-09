import Danger

let danger = Danger()
let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles

let changelogChanged = allSourceFiles.contains("CHANGELOG.md")

//danger.github.pullRequest.title

if !changelogChanged {
  fail("No CHANGELOG entry added.")
}

let pattern = "\\[+([A-Z-a-z])+\\/(CB)+-+\\d{4}\\]+ -"

let titleMR = danger.github.pullRequest.title
let result = titleMR.range(of: pattern, options:.regularExpression)

if result == nil {
    fail("Titulo do mr nao esta no padrao")
}

if let commitCount = danger.github.pullRequest.commitCount {
    if commitCount > 10 {
        fail("limite de commit excedido.")
    }
}