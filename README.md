CI���\�z�v���W�F�N�g

## �T�v

jenkins, geard, gitlab, irc��ݒ肵�ACI���������Z�b�g�A�b�v����B

## �C���X�g�[��

### 1. Vagrant plugin�̃C���X�g�[��

```
vagrant plugin install vagrant-omnibus
```

### 2. Cookbook�̃C���X�g�[��

```
berks vendor cookbooks
```

### 3. �Z�b�g�A�b�v

```
vagrant up
```

## �ݒ�

### Jenkins�T�[�o

### Gitlab�T�[�o

## �g���u���V���[�g

### Q: gitlab�̃C���X�g�[�����Ɉȉ��̃G���[����������

``` 
================================================================================
Error executing action `run` on resource 'execute[gitlab-bundle-install]'
================================================================================


Mixlib::ShellOut::ShellCommandFailed
------------------------------------
Expected process to exit with [0], but received '17'
---- Begin output of /srv/git/bin/bundle install --deployment --without development test postgres aws && touch /srv/git/gitlab/vendor/bundle/.success ----
STDOUT: Fetching source index from https://rubygems.org/
```

### A: https�̒ʐM���o���Ă��Ȃ��̂ŁAgem�̎擾���http�ɂ��܂��傤

��̓I�ɂ́A�ȉ��̗l��http�X�L�[�}��gemfile���擾����悤�ɏC���������܂��B

/srv/git/gitlab/Gemfile
```
source "http://rubygems.org"
```
