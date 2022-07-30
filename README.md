# Reviewty Labs Services Codebase Structure

	./
	├─ common
	│  ├─ <constants.py>        # Common functions and constants
	│  └─ <utils.py>
	├─ api             
	│  ├─ <algorithm.py>		# final funcions for FastAPI call
	│  └─ extra file	
	├─ data
	│  ├─ <permament>			# Place to store params for predicting
	│  └─ <temporary>			# Place to store new training data
	├─ model             
	│  └─ <model.py>				# Model class
	├─ jobs
	│  └─ <job folder>
	│		├─<download_materials.py>
	│		├─<preprocess.py>
	│		├─<train.py>
	│		└─<save_model.py>	
	├─ external					# External script needed by a job
	│  └─ <job folder>	
	├─ Dockerfile
	├─ <Services>_Trainer_Dockerfile
	├─ <main.py>				# API Routes
	
	
# Note
 - <Services>_Trainer_Dockerfile is for routine trainning/updating model. It consists of all step in its rexpective job folder.
 - Job folder should include download_materials, preprocess, train, save_model script. Any nessesary external scripts will be put in external folder.
 - Only one main.py file is needed. Each job should have it own API to call. All job API will be present in main.py.
 
 
