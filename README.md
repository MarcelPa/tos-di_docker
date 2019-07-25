# Usage

Create a Talend Open Studio for Data Integration Job and build it. Extract the contents into the folder that is mounted into `/var/data/job` such that the `jobInfo.properties` file is accessible at `/var/data/job/jobInfo.properties`. The container will trigger the job automatically each time a new file is created or moved into `/var/data/input` using incron, the output will be stored into `/var/data/output`.

The Talend-Job has to be configured such that all input files are read from `/var/data/input` and all output files are written to `/var/data/output`. The job has to clean up the input directory itself.
