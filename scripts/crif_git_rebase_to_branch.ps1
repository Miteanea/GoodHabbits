# take branch name in input
$trgt = $args[0]

# fetch all
git fetch --all
# fetch changes onto branch
git fetch origin ${trgt}:${trgt}
# rebase current branch
git rebase $trgt

# Check if an argument was passed
if ($args.Count -eq 0) {
    Write-Host "No arguments provided. Please pass a string as an argument."
    exit
}
