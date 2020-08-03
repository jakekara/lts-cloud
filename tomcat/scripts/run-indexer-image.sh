docker system prune -f

docker run --rm -it \
    -v "$(pwd)/s3/":/s3 \
    -v "$(pwd)/lts":/lts \
    --name lts-blacklab-indexer \
    lts-blacklab-indexer  \
    sh -c "cd /s3 && ls -lah && \
        unzip -q ./folia.zip -d /folia && \ 
        cd / && \ 
        java -cp /setup/BlackLab/core/target/blacklab-*.jar nl.inl.blacklab.tools.IndexTool create lts /folia folia"
    