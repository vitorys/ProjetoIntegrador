# SAAAE

A system for managing reports made for social workers, educators and psychologists.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

All the prerequisites are necessary to get the system running.

* rbenv

Install the rbenv and Ruby dependencies with apt-get:

```
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```

Now we are ready to install rbenv. The easiest way to do that is to run these commands, as the user that will be using Ruby:

```
    $ cd
    $ git clone git://github.com/sstephenson/rbenv.git .rbenv
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    $ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    $ echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
    $ source ~/.bash_profile
```

* Ruby (2.4.0p0 recommended)

```
$ rbenv install -v 2.4.0
$ rbenv global 2.4.0
```

* Bundler

You will also want to install the bundler gem, to manage your application dependencies:

```
$ gem install bundler
```

* Rails

Install the Rails in the version `5.1.3` using the command bellow:

```
$ gem install rails -v 5.1.3
```

* Node.Js

Add the Node.js PPA to apt-get:

```
$ sudo add-apt-repository ppa:chris-lea/node.js
```

Then update apt-get and install the Node.js package:


```
$ sudo apt-get update
$ sudo apt-get install nodejs
```


### Installing and Deployment

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Lucas Guedes Barboza** - UTFPR - [LucasGB](https://github.com/LucasGB)
* **Renan Kodama Rodrigues** - UTFPR -[RenanKodama](https://github.com/RenanKodama)
* **Vitor Yudi Shinohara** - UTFPR - [vitorys](https://github.com/vitorys)

See also the list of [contributors](https://github.com/vitorys/ProjetoIntegrador/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


