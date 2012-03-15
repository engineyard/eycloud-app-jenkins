# Engine Yard Cloud and Jenkins


## Getting Started

1. Go to the [EY Cloud dashboard](https://cloud.engineyard.com/)
2. Click "Add an Application"
3. Git Repository URI is `git://github.com/engineyard/eycloud-app-jenkins.git`
4. Application Type is `rack`
5. Click "Create Application"
6. Environment Name is `jenkins` (or anything you like)
7. Click "Create Environment"
8. Click "Boot This Configuration"

When the instance finished booting and deploying you will have Jenkins running!

## How this was created

    gem install engineyard-recipes
    ey-recipes init --on-deploy --sm
    ey-recipes sm git@github.com:engineyard/sm_eyapi.git -n eyapi
    ey-recipes sm git@github.com:engineyard/sm_jenkins.git install configure restart -n jenkins

When the project is launched on Engine Yard Cloud the cookbooks are automatically run and Jenkins is setup!
