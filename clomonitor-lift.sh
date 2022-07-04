#!/usr/bin/env bash
# dir=$1 but it is not needed
commit=$2
cmd=$3

function version() {
    echo 1
}

# always applicable since this is a custom plugin
function applicable() {
    echo "true"
}

function run() {
  installTool

  # something like this
#  jsonData=$(clomonitor-linter  --format=json --path Adlik --url https://github.com/Adlik/Adlik)
#  branch_protection=$(clomonitor-linter  --format=json --path Adlik --url https://github.com/Adlik/Adlik | jq ".report | .security | .branch_protection | select(.passed == false) | .details")

#  if [ -z "$branch_protection" ]
#  then
#    #empty
#    :
#  else
#      echo "{ \"type\": \"CLO Monitor\", \
#          \"message\": \"$branch_protection\", \
#          \"file\": \"NA\", \
#          \"line\": NA, \
#          \"details_url\": \"https://clomonitor.io/docs/topics/checks/\" \
#        }"
#  fi

  echo "["
              echo "{ \"type\": \"CLO Monitor: Branch Protection\", \
                  \"message\": \"Branch-Protection OpenSSF Scorecard check\n\n**Score**: 3 (check passes with score >= 5)\n\n**Reason**: branch protection is not maximal on development and all release branches\n\n**Details**: \n\n>Info: 'force pushes' disabled on branch 'master'\nInfo: 'allow deletion' disabled on branch 'master'\nInfo: status check found to merge onto on branch 'master'\nWarn: number of required reviewers is only 0 on branch 'master'\n\n**Please see the [check documentation](https://github.com/ossf/scorecard/blob/e42af756609b2cde6d757fd45ea05ddf0016ff62/docs/checks.md#branch-protection) in the ossf/scorecard repository for more details**\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                },"
              echo "{ \"type\": \"CLO Monitor: Code Review\", \
                  \"message\": \"Code-Review OpenSSF Scorecard check\n\n**Score**: 0 (check passes with score >= 5)\n\n**Reason**: no reviews found\n\n**Details**: \n\n>Warn: no reviews found for commit: ecfdef2f4f5fa4a1340f246d0b926513fc9e32d3\nWarn: no reviews found for commit: 9a4378cffcd4b8073fd8fbcd062786228fb13c34\nWarn: no reviews found for commit: 9bdd7c6bf5ca4392939dc0c71ac1ea6a0838d1a7\nWarn: no reviews found for commit: cac4b601ec8b06a3e382b19b3fed7f28ef0a80d9\nWarn: no reviews found for commit: 38bcd8d8e1a31d0957903dfe42403a795714abf5\nWarn: no reviews found for commit: 2795adc2a9a90bb8c17bd0dd0598561f2ab50273\nWarn: no reviews found for commit: 8bbae3623e622af9aa39804d53ba0a6797a23542\nWarn: no reviews found for commit: c0c68001c02228d88cd8e2535bba15f08fc280cd\nWarn: no reviews found for commit: 03e6a083739497e75a40024dabde5a0844161292\nWarn: no reviews found for commit: 05165f902af3cb8121068032659223a4531a023f\nWarn: no reviews found for commit: d2ef7d8239bfffddca3de691c4cb253fb2afb367\nWarn: no reviews found for commit: 34f02c460dea7866b303a31433454dd3f37888a6\nWarn: no reviews found for commit: 4e71d0d58eebbab4eb4c7cca798d1f79323fb14d\nWarn: no reviews found for commit: dba058c23ce76ff893d6c485e4ce7f097defaae3\nWarn: no reviews found for commit: 18971d973bc7de53b2a7df95c6497bde9c112b55\nWarn: no reviews found for commit: a2c46524e8c864319378f48a62389115df78c94a\nWarn: no reviews found for commit: e19f38166d14117b1ed55524f51c4b0c7da4e5a6\nWarn: no reviews found for commit: 271f36b230a3a01b2cdfca5c5713bd83ddb9ea6c\nWarn: no reviews found for commit: 7a4535b7bb05aa4bc9aa5c8c6bde76ccd416ab08\nWarn: no reviews found for commit: 12821f92c54b5fcea532be41edb13d80ad27519b\nWarn: no reviews found for commit: fb31f6fb2150e551c582ce4279cf53f9e938a214\nWarn: no reviews found for commit: 6e1d94a3b50f531f0b41d1d3c994121796b32437\nWarn: no reviews found for commit: 5da3b926f6758b406a3a0dd13f1414867373b369\nWarn: no reviews found for commit: 69e77c5035f6e40aced0030c9347c2eb517a8b06\nWarn: no reviews found for commit: ca997097add017632e20ea8d3cf91f0d00c01845\nWarn: no reviews found for commit: 4baf38dd6bb01ec739af7886790a72ca4e9d3667\nWarn: no reviews found for commit: 665f55f3d281e2fc0ef1d06da319d5e5ddff4069\nWarn: no reviews found for commit: 70ed4c905a6da66e1e361d00e9c6e9afd171d6ce\nWarn: no reviews found for commit: f1dc5c881ee273232734eda49d15735b195d6ce1\nWarn: no reviews found for commit: adf46b01ff6798a134b3a62256463106d1d2df2a\n\n**Please see the [check documentation](https://github.com/ossf/scorecard/blob/e42af756609b2cde6d757fd45ea05ddf0016ff62/docs/checks.md#code-review) in the ossf/scorecard repository for more details**\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                },"
              echo "{ \"type\": \"CLO Monitor: Code Review\", \
                  \"message\": \"\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                },"
              echo "{ \"type\": \"CLO Monitor: Code Review\", \
                  \"message\": \"\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                },"
              echo "{ \"type\": \"CLO Monitor: Code Review\", \
                  \"message\": \"\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                },"
              echo "{ \"type\": \"CLO Monitor: Code Review\", \
                  \"message\": \"\", \
                  \"file\": \"NA\", \
                  \"line\": \"NA\", \
                  \"details_url\": \"https://clomonitor.io/docs/topics/checks\" \
                }"
  echo "]"

}

function installTool() {
  # install CLOMonitor to be run independently for each lift project
  # what about github token?
  :
}

if [[ "$cmd" = "run" ]] ; then
    run
fi
if [[ "$cmd" = "applicable" ]] ; then
    applicable
fi
if [[ "$cmd" = "version" ]] ; then
    version
fi