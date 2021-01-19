# build with the following command, replace the 50 cores with however many you would like to use
# docker build -t ukaea/openmcworkshop --build-arg compile_cores=50 .

# run with the following command
# docker run -p 8888:8888 ukaea/openmcworkshop /bin/bash -c "jupyter notebook --notebook-dir=/tasks --ip='*' --port=8888 --no-browser --allow-root"

# test with the folowing command
# docker run --rm ukaea/openmcworkshop pytest ../tests

FROM ukaea/openmcworkshop

#this sets the port, gcr looks for this varible
ENV PORT 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='paramak'", "--NotebookApp.password='paramak'"]
