# Git Rebases

## Setup 
### Adding commit A
``` add-a.sh
git checkout master
touch A
git add A
git commit -m "add A"
git push --set-upstream remote master
```

### Adding commit B
``` add-b.sh
git checkout -b feature-B
touch B
git add B
git commit -m "add B"
git push --set-upstream remote feature-B
```

### Adding commit C
``` add-c.sh
git checkout master
touch C
git add C
git commit -m "add C"
git push
```

### Setup State

``` git-graph-A.txt
  B # feature-B & remote/feature-b
 /
A---C # master & remote/master
```

## Rebase
``` rebase.sh
git checkout feature-B
git rebase master
git push
```
### Post Rebase State
``` git-graph-A.txt
   B remote/feature-b
  /   D feature-b
 /   /
A---C < master & remote/master
```
