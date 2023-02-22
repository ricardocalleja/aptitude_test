Machine Learning Model
This is a machine learning model that can classify images of furniture into one of three categories: Bed, Chair, or Sofa. The model was created using the Fastai library and a ResNet18 convolutional neural network.

How to Use
To use the model, follow these steps:

1. Install the required Python packages by running pip install fastai ipywidgets fastbook.

2. Load the model by running the following code:

```from fastai.vision.all import *
learn_inf = load_learner('export.pkl')```

3. Use the model to predict the category of an image by running the following code:
```pred, pred_idx, probs = learn_inf.predict('test.jpg')```

Replace 'test.jpg' with the path to the image you want to classify.

4. `pred` will contain the predicted category of the image, pred_idx will contain the index of the predicted category, and probs will contain the probabilities for each category.


Docker Image
This model is also available as a Docker image. To use the Docker image, follow these steps:

1. Install Docker on your machine if you haven't already.

2. Download or clone the repository that contains the Dockerfile and the app.py file.

3. Navigate to the directory that contains the Dockerfile and run the following command to build the Docker image:
```docker build -t my-image .```

Replace my-image with the name you want to give to your Docker image.

4.Start a container using the following command:

docker run -p 8000:8000 my-image

This command starts a container from the my-image image and maps port 8000 in the container to port 8000 on the host.

5.Open a web browser and navigate to http://localhost:8000. You should see a web page that allows you to upload an image and get a prediction for its category.




