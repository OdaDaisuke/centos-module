OSLIST = centos6 centos7 centos8

$(TARGET): prepare-docker
        for OS in $(OSLIST) ;                                                                           \
                do docker run -it --rm -v $(CURDIR):/workspace rpmbuild:$$OS scripts/build.sh $@ $$OS ; \    
        done
