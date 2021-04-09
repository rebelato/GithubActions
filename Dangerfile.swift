import Danger

let danger = Danger()
let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles

let changelogChanged = allSourceFiles.contains("CHANGELOG.md")

//danger.github.pullRequest.title

if !changelogChanged {
  fail("No CHANGELOG entry added.")
}

let titleMR = danger.github.pullRequest.title
if titleMR.isEmpty {
    fail("Titulo do mr vazio.")
}

if let commitCount = danger.github.pullRequest.commitCount {
    if commitCount > 10 {
        fail("limite de commit excedido.")
    }
}