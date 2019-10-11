# Advance bash notes

Linux is extensionless
 .txt means nothing

Everything is a file

### Linux Permission

Things a user can do:
Read (r)
Write (w)
Execute (x)

Users that exist:
- owner
Typically the person/user who create file. However, it can be changed.
- group
Every file belongs to a single group. Groups have man y users in it and give access to multiple people.
- others
Everyone else not in a group or the owner.

### Changing Permissions:

chmod <permissions> <path/fie>
![chmod changing permissions](https://danielmiessler.com/images/permissions.png)

### Streams, Redirects and Piping
- STDIN: Standard Input
  - STDIN code is 0
- STDOUT: Standard Output
  - STDOUT code is 1
- STDERR: Standard Error
  - STDERR code is 2

### Piping and Redirects
We can join all these commands together

### Redirecting:
### This is redirecting of STDOUT
ls > list_of_ls.txt

wc words .txt > word_count.txt

cat words.txt >> word_count.txt

### This is redirecting of STDIN

WC < words.txt

### Redirecting STDERR

ls non_file_existing 2 > log.txt

### Piping
We sent STDOUT and STDERR into files, but what we want is to be able to send outputs into other programs. This is very powerful and is called Piping.

ls | head -3
ls | tail -2
ls | grep exa

### Process Management

top
ps
ps aux
ps aux | grep aux > ps_aux_logs.txt
ps aux | grep vagrant > ps_vagrant.logs.txt
ps aux | vagrant nwejf 231 2 >> pas_vagrant_logerror.txt

# To kill processes (running)
kill < pid >
