
<h2>Cloud Native Orchestration</h2>

<strong>Capstone project for Udacity's Cloud DevOps Engineer</strong><br/>

<h3>:heavy_check_mark: Description</h3>
This project consists of deploying an API on Kubernetes using deployment Rolling Update strategy.<br/> The application used in this project is based on Python and Flask. This project has a single endpoint:<br/><br/>
<ul>
  <li><strong>/api/v0/multiply</strong></li>
  <ul>
    <li>Usage: <code>http://localhost:5001/api/v0/multiply?param1=12&#38;param2=2</code></li>
  </ul>
</ul>

<h3>:heavy_check_mark: Content of Repository</h3>
<ul>
  <li>
    :file_folder: Folders
    <ul>
      <li>:page_facing_up: <code>pipelines</code> - Definitions of the pipeline used by Jenkins </li>
      <li>:page_facing_up: <code>descriptors-k8s</code> - Descriptors to deploy application in the Kubernetes </li>
      <li>:page_facing_up: <code>images</code> - Evidences of pipeline operation</li>      
    </ul>
  </li>
  <li>:page_facing_up: <code>Dockerfile</code> - Docker descriptor</li>
  <li>:page_facing_up: <code>main.py</code> - Web application</li>
  <li>:page_facing_up: <code>requirements.txt</code> - Definitions of dependencies of the application</li>
  <li>:page_facing_up: <code>run_docker.sh</code> - Script to build docker image</li>  
</ul>

<h3>:heavy_check_mark: Preparing CI/CD Environment</h3>
It was used Jenkins to automate manage of the Cluster Kubernetes and Application on AWS EC2 Instance based on Ubuntu 18.04 image. <br/><br/>
<strong>Requirements:</strong>
<ul>
  <li>
    Java
    <ul>
      <li><code>$ sudo apt-get update</code></li>
      <li><code>$ sudo apt install -y default-jdk</code></li>
    </ul>
  </li>
  <li>
    Jenkins
    <ul>  
      <li><code>$ wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -</code></li>
      <li><code>$ sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'</code></li>
      <li><code>$ sudo apt-get update</code></li>
      <li><code>$ sudo apt-get install jenkins</code></li>     
      <li><code>$ sudo systemctl start jenkins</code></li>
      <li><code>$ sudo systemctl enable jenkins</code></li>
      <li><code>$ sudo systemctl status jenkins</code></li>      
    </ul>
  </li>
  
  <li>
    Jenkins Plugins
    <ul>
      <li>Blue Ocean</li>
      <li>Pipeline: AWS Steps</li>
      <li>CloudBees AWS Credentials</li>      
    </ul>
  </li>
  
  <li>
    Python and other tools
    <ul>      
      <li><code>$ sudo apt install python3</code></li>      
      <li><code>$ sudo apt install python3-pip</code></li>
      <li><code>$ sudo apt install virtualenv</code></li> 
      <li><code>$ sudo pip install pylint && pip install pylint --upgrade</code></li>       
      <li><code>$sudo cp /home/<your user>/.local/bin/pylint /usr/local/bin</code></li>
    </ul>  
  </li>    
  
  <li>
    Pip for Python
    <ul>
      <li><code>$ sudo apt install python-pip</code></li>
    </ul>  
  </li>  
  
  <li>
    AWS Client V2.0
    <ul>  
      <li><code>$ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"</code></li>  
      <li><code>$ unzip awscliv2.zip</code></li>  
      <li><code>$ sudo ./aws/install</code></li>        
    </ul>
  </li>
  
  <li>
    EKSCTL
    <ul>
      <li><code>$ curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp</code></li>
      <li><code>$ sudo mv /tmp/eksctl /usr/local/bin</code></li>
    </ul>    
  </li>
  
  <li>
    AWS-IAM-Authenticator
    <ul>
      <li><code>$ curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.10/2020-02-22/bin/linux/amd64/aws-iam-authenticator</code></li>
      <li><code>$ chmod +x ./aws-iam-authenticator</code></li>
      <li><code>$ sudo mv aws-iam-authenticator /usr/local/bin</code></li>      
    </ul>    
  </li>
  
  <li>
    Docker Engine
    <ul>      
      <li><code>$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"</code></li>       
      <li><code>$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -</code></li>       
      <li><code>$ sudo apt-get update</code></li>      
      <li><code>$ sudo apt-get install docker-ce docker-ce-cli containerd.io</code></li> 
      <li><code>$ sudo chmod 777 /var/run/docker.sock</code></li>       
    </ul>
  </li>
  <li>
    Hadolint
    <ul>      
      <li><code>$ wget https://github.com/hadolint/hadolint/releases/download/v1.1/hadolint_linux_amd64</code></li>    
      <li><code>$ sudo chmod +x hadolint_linux_amd64</code></li>    
      <li><code>$ sudo mv hadolint_linux_amd64 hadolint</code></li>          
      <li><code>$ sudo mv hadolint /usr/local/bin</code></li>      
    </ul>  
  
  <li>
    Kubectl
    <ul>  
      <li><code>$ curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl</code></li>
      <li><code>$ chmod +x ./kubectl</code></li>
      <li><code>$ sudo mv ./kubectl /usr/local/bin/kubectl</code></li>      
    </ul>
  </li>
  
  <li>
    Shopfy/krane
    <ul>
      <li><code>$ sudo apt install ruby-full</code></li>
      <li><code>$ sudo gem install rake</code></li>
      <li><code>$ sudo gem install rainbow -v '2.2.2'</code></li>
      <li><code>$ sudo gem install krane</code></li>      
    </ul>
  </li>
</ul>
<br/>
:bulb: <strong>Tip - Use AIM Role:</strong><br/>
Create a AIM Role with all policies <i>AmazonEKS*</i> and attach it on EC2 Instance running Jenkins. This way you don't need to configure your credentials into EC2 instance.<br/>
<img width="75%" height="75%" src="https://github.com/Waelson/CapstoneProjectForUdacity-CalculatorAPI/blob/master/images/amazon_eks_policies.png"/>

<h3>:heavy_check_mark: Validating Environment</h3>

1 - Connect to EC2 instance and execute the command below to create a cluster with 3 nodes. This command can to take about 15 minutes to finish. Be patient!<br/>
<code>$ eksctl create cluster --name &#60;cluster-name&#62; --region &#60;region&#62; --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --managed</code><br/>
<a href="https://gyazo.com/0529950fbd5198c004ec10413389f494"><img src="https://i.gyazo.com/0529950fbd5198c004ec10413389f494.gif" alt="Image from Gyazo" width="674"/></a>
<br/>
<br/>

2 - Next, we need to update <code>˜/.kube/config</code> file, so that you can use the <code>kubectl</code> command.<br/>
<code>$ aws eks update-kubeconfig --name &#60;cluster-name&#62; --region &#60;region&#62;</code><br/>
<a href="https://gyazo.com/1611c73a4c384a2ec677819fdebe07cb"><img src="https://i.gyazo.com/1611c73a4c384a2ec677819fdebe07cb.gif" alt="Image from Gyazo" width="724"/></a>
</br>
<br/>

3 - Now, we let's get information of the cluster using <code>kubectl</code> command.<br/>
<code>$ kubectl cluster-info</code><br/>
<a href="https://gyazo.com/9f353a6bb9e919da6edc4d4006359b22"><img src="https://i.gyazo.com/9f353a6bb9e919da6edc4d4006359b22.gif" alt="Image from Gyazo" width="728"/></a>
<br/>
<br/>

4 - Finally, delete cluster.<br/>
<code>$ eksctl delete cluster cluster --name &#60;cluster-name&#62; --region &#60;region&#62;</code><br/>
<a href="https://gyazo.com/67fa248990144b570e26169946e4b476"><img src="https://i.gyazo.com/67fa248990144b570e26169946e4b476.gif" alt="Image from Gyazo" width="724"/></a>
<br/>
<br/>

<h3>:heavy_check_mark: Rolling Update Release</h3>
As defined by the website kubernetes.io, rolling updates is a strategy that allow you deployments' update to take place with zero downtime by incrementally updating Pods instances with new ones. 
<br/>
Below snnipet code from the file <code>deployment.yaml</code> used in this project to deploy application.<br/><br/>

```
...
spec:
  replicas: 2
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 50%
      maxSurge: 1
...
```

<br/>

<h3>:heavy_check_mark: References</h3>
<ul>
  <li>Getting started with EKSCTL - <a href="https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html">https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html</a></li>
  <li>Launch a guest book application - <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-guestbook.html">https://docs.aws.amazon.com/eks/latest/userguide/eks-guestbook.html</a></li>
  <li>Create a SSH Key - <a href="https://eksworkshop.com/prerequisites/sshkey.html">https://eksworkshop.com/prerequisites/sshkey.html</a></li>  
  <li>Install Jenkins on Ubuntu - <a href="https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Ubuntu">https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Ubuntu</a></li>
  <li>How to Install Pip on Ubuntu 18.04 - <a href="https://linuxize.com/post/how-to-install-pip-on-ubuntu-18.04/">https://linuxize.com/post/how-to-install-pip-on-ubuntu-18.04/</a></li>  
  <li>Install Docker Engine on Ubuntu - <a href="https://docs.docker.com/engine/install/ubuntu/">https://docs.docker.com/engine/install/ubuntu/</a></li>
  <li>Installing aws-iam-authenticator - <a href="https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html">https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html</a></li>
  <li>Install and Set Up kubectl - <a href="https://kubernetes.io/docs/tasks/tools/install-kubectl/">https://kubernetes.io/docs/tasks/tools/install-kubectl/</a></li>  
  <li>Shopfy/krane - <a href="https://github.com/Shopify/krane">https://github.com/Shopify/krane</a></li>
  <li>Hadolint v1.1 - <a href="https://github.com/hadolint/hadolint/releases/tag/v1.1">https://github.com/hadolint/hadolint/releases/tag/v1.1</li>
</ul>
