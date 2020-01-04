OSLIST = centos6 centos7
build:
	for OS in $(OSLIST) ; \
		docker build -f "Dockerfile.${OS} -t 'daidai/rpm-builder/${OS}' ." \
	done

run-6:
	docker run -t 'daidai/rpm-builder/centos6' -v ./build/:/rpmbuild/RPMS/noarch:rw

run-7:
	docker run -t 'daidai/rpm-builder.centos7' -v ./build/:/rpmbuild/RPMS/noarch:rw
