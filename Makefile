test:
	cd tests && ansible-playbook --syntax-check test.yml
	docker run \
	  -it --privileged --rm \
	  --volume=`pwd`:/etc/ansible-microstrategy:ro --workdir /etc/ansible-microstrategy/tests \
	  geerlingguy/docker-centos7-ansible \
	  ansible-playbook test.yml
