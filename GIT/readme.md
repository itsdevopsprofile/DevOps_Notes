# Git Notes

## What is Git?
Git is a **distributed version control system (DVCS)** that helps track changes, collaborate, and manage project versions efficiently.

## Uses of Git:
- **Tracks changes** – Keeps a history of code updates.
- **Collaboration** – Multiple developers can work together.
- **Branching & Merging** – Develop features independently.
- **Backup & Security** – Prevents data loss with local copies.
- **CI/CD Integration** – Automates testing and deployment.



#### Git Working
![image](https://github.com/user-attachments/assets/ff4ea8a5-9c26-4a41-8ab9-abcefe5d66d9)






### Git Clone Using HTTPs and SSH Method:

**1. HTTPS**: (github username and token required to push changes to gitub)
```
git clone https://github.com/itsdevopsprofile/DevOps_Notes.git
```

**Create Github token**
- go to **github profile ->settings->developer setting->personal access token-> token classic->generate new**
- copy token and save somewhere for future use
- 
**2. SSH**: (doesnt require any credentials to push changes)
- create ssh keypair
- copy public key and paste to **github profile ->settings->developer setting->ssh&gpg keys->add-key**
- then clone via ssh method
```
git clone git@github.com:itsdevopsprofile/DevOps_Notes.git
```

### Branching Strategy:


- **Main** – Holds the stable, production-ready code.
- **Develop** – Main branch for ongoing development.
- **Feature Branches** – Created from `develop` to build new features.
- **Release Branches** – Branched from `develop` for final bug fixes before merging into `master` and `develop`.
- **Hotfix Branches** – Created from `master` to fix critical production issues quickly, then merged back into `master` and `develop`.
  
![image](https://github.com/user-attachments/assets/ecc0c9a6-b972-4962-bc9c-8c05cf70ed9e)


#### check current branch
```
git branch
```

#### create new branch
````
git branch feature
````

#### switch to new branch
````
git checkout feature
````

#### push changes to remote
````
git push origin feature
````

#### create and switch to branch 

````
git checkout -b test
````

#### Merge test branch into main branch
````
git checkout main
````
````
git merge test
````

#### Apply commits of one branch to other
````
git rebase <branchname>
````
#### Cherry-Pick: Apply single commmit from one branch to other
````
git log --oneline    #copy commmit id
git checkout <branchname>
git cherry-pick <commmit-id>
````

#### Pull: merge remote changes to local repo
````
git pull https://github.com/itsdevopsprofile/DevOps_Notes.git
````

#### Fetch : Update changes from remote to local
````
git fetch https://github.com/itsdevopsprofile/DevOps_Notes.git
````
#### Stash: save work
````
git add <filename>
git stash
git stash list
git stash apply
````
#### Restore: staging to working dir
````
git restore --staged <filename>
````


