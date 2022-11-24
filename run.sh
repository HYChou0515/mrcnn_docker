python -m pip install --upgrade pip && pip install --force-reinstall --no-cache-dir -r requirements.txt \
&& apt-get update \
&& apt-get install --no-install-recommends ffmpeg libsm6 libxext6  -y \
&& wget https://github.com/philferriere/cocoapi/archive/2929bd2ef6b451054755dfd7ceb09278f935f7ad.zip  \
&& unzip 2929bd2ef6b451054755dfd7ceb09278f935f7ad.zip  \
&& rm 2929bd2ef6b451054755dfd7ceb09278f935f7ad.zip  \
&& cd cocoapi-2929bd2ef6b451054755dfd7ceb09278f935f7ad/PythonAPI  \
&& pip install . \
&& cd ../.. \
&& rm -rf cocoapi-2929bd2ef6b451054755dfd7ceb09278f935f7ad \
&& wget https://github.com/matterport/Mask_RCNN/archive/3deaec5d902d16e1daf56b62d5971d428dc920bc.zip \
&& unzip 3deaec5d902d16e1daf56b62d5971d428dc920bc.zip  \
&& rm 3deaec5d902d16e1daf56b62d5971d428dc920bc.zip  \
&& mv Mask_RCNN-3deaec5d902d16e1daf56b62d5971d428dc920bc Mask_RCNN \
&& cd Mask_RCNN \
&& pip install .  \
&& cd samples \
&& jupyter nbconvert --to script demo.ipynb \
&& grep -v  "get_ipython().run_line_magic('matplotlib', 'inline')" demo.py > demo2.py \
&& echo "print('run successfully')" >> demo2.py \
&& chmod +x /test.sh \
&& mv /test.sh /usr/local/bin/run-test \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get purge --auto-remove \
&& apt-get clean

