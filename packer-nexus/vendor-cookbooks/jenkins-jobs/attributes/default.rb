#
# Cookbook Name:: jenkins-jobs
# Attributes:: default
#
# Copyright 2012, Jay Pipes
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_attribute "jenkins"

# The git user to use
# This attribute goes into the various Jenkins job
# XML templates in the following element:
# <project>
#  <scm class="hudson.plugins.git.GitSCM">
#   <gitConfigName>$USER</gitConfigName>
#  </scm>
# </project>
default[:jenkins_jobs][:git_user] = "vagrant"

# The email address for the Git user
# This attribute goes into the various Jenkins job
# XML templates in the following element:
# <project>
#  <scm class="hudson.plugins.git.GitSCM">
#   <gitConfigEmail>$EMAIL</gitConfigEmail>
#  </scm>
# </project>
default[:jenkins_jobs][:git_email] = "git@example.com"

default[:jenkins_jobs][:git_root] = "git@github.com:blackburntech"

# List repo names that should get a Jenkins chef spec check job created
# for them. The node{:jenkins_jobs][:git_root] is prepended to the repo
# names when writing the configuration files. So, for example, if you
# set node[:jenkins_jobs][:git_root] = "git@github.com:myorg" and
# node[:jenkins_jobs][:check_chef_spec_repos] = ["repo1", "repo2"] then
# two Jenkins jobs will be created for cookbooks living at github.com/myorg/repo1
# and github.com/myorg/repo2
default[:jenkins_jobs][:check_chef_spec_repos] = ["jpetstore-sample"]


