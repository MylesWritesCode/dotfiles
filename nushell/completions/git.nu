def "nu-complete git branches" [] {
  ^git branch | lines | each { |line| $line | str replace '[\*\+] ' '' | str trim }
}

def "nu-complete git remotes" [] {
  ^git remote | lines | each { |line| $line | str trim }
}

def complete-git-branch [] { }

