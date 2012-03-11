# Engine Yard Cloud and Jenkins


## How this was created

    gem install engineyard-recipes
    ey-recipes init --on-deploy --sm
    ey-recipes sm git@github.com:engineyard/sm_eyapi.git -n eyapi
    ey-recipes sm git@github.com:engineyard/sm_jenkins.git install configure restart -n jenkins

When the project is launched on Engine Yard Cloud the cookbooks are automatically run and Jenkins is setup!
