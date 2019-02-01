# 競技用インスタンスのセットアップ

サーバーのセットアップに[ansible](https://github.com/ansible/ansible)を使っております。

awsのamiとして「Debian GNU/Linux 8 (Jessie)」を利用。

ami idは「debian-jessie-amd64-hvm-2017-01-15-1221-ebs-39d3917e-ff4e-4597-848e-4d0fdf8529e6-ami-b14ba7a7.4 (ami-4a92c72d)」です。

## セットアップ方法

hostsファイルをコピーして作成する。

```
$ cp hosts.sample hosts
```

その後、ファイルの「XXX.XXX.XXX.XXX」を対象のIPに書き換えた後にimage/ansible以下に入っているplaybookを順番に実行。

```
$ ansible-playbook -i hosts -u admin --private-key=~/.ssh/isucon.pem image/ansible/*.yml
```
