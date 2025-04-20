# Git Notes




#### Git Working
![image](https://github.com/user-attachments/assets/b859c770-3efc-48c4-8d77-34508fc51d22)

#### Git Basic Commands
- To initialize empty git repository
```
git init
```
- Congfigure Username and EmailID
```
git config --global user.email "testemail@gmail.com"
git config --global user.name "abhi"
git config --global --list
```

- create test file
```
touch index.html
```
- Add newly created file to staging area
```
git add index.html
```
- Verify file added to staging area or not
```
git status
```
- Commit file to local repository
```
git commit -m "message"
```
- verify commmit
```
git log
```
- Push using  remote repo
```
git remote add origin https://github.com/abhipraydhoble/Devops-B-fourtyone.git
```
- Verify
```
git remote -v
```
- Note: Make sure to generate github token before pushing to remote
- go to github profile ->settings->developer setting->personal access token-> token classic->generate new
  
![image](https://github.com/user-attachments/assets/2c0ab9dc-5dda-408d-b219-f37f14fcae44)

- copy token to somewhere for future use

- Push to Remote repository
```
git push origin master
```
- it will ask for username and token

## Git Day 2
### Git Clone Using HTTPs and SSH Method:

**1. HTTPS**: 
```
git clone https://github.com/abhipraydhoble/gitdayone.git
```
![image](https://github.com/user-attachments/assets/f98b0cce-9000-429a-a34c-86297f535e8c)

**2. SSH**
```
git clone git@github.com:abhipraydhoble/gitdayone.git
```
![image](https://github.com/user-attachments/assets/4a344a9c-de4e-47b8-bec9-65d54f992771)


### Branching Strategy:

![image](https://github.com/user-attachments/assets/f298ab63-78e6-4e27-8a9a-e6d01e0ed4a9)

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
git pull https://github.com/abhipraydhoble/devops-b41.git
````

#### Fetch : Update changes from remote to local
````
git fetch https://github.com/abhipraydhoble/devops-b41.git
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


