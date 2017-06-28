# Tutorial: https://www.kaggle.com/c/word2vec-nlp-tutorial#part-1-for-beginners-bag-of-words
# Part 1 Code

# import libraries
import nltk
import numpy as np
import pandas as pd
import re
from bs4 import BeautifulSoup
from nltk.corpus import stopwords
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.ensemble import RandomForestClassifier

# read data
train = pd.read_csv("labeledTrainData.tsv", header = 0, delimiter = "\t", quoting = 3)
train.shape
train.columns.values

def clean_all_reviews(num_reviews):

    clean_review_train = []

    for item in xrange(0, num_reviews):

        # printing
        if ((item + 1) % 10000 == 0):
            print "Review %d of %d\n" % (item + 1, num_reviews)

            # initialize the BeautifulSoup object on a single movie review
        review = BeautifulSoup(train["review"][item], "html.parser")

        # replace non-alphabets with whitespace
        alphabets = re.sub("[^a-zA-Z]", " ", review.get_text().encode('utf-8'))

        lower = alphabets.lower()
        words = lower.split()

        # remove stopwords using nltk
        words = [w for w in words if not w in stopwords.words("english")]
        joined_words = " ".join(words)

        clean_review_train.append(joined_words)

    #print(clean_review_train)
    return clean_review_train


def main():

    num_reviews = train["review"].size
    # let's consider only 100 examples for now
    all_reviews = clean_all_reviews(num_reviews)

    # Initialize the "CountVectorizer" object, scikit-learn's bag of words tool.
    vectorizer = CountVectorizer(analyzer="word", tokenizer= None, preprocessor= None, \
                                 stop_words = None, max_features = 100) #5000

    train_data_features = vectorizer.fit_transform(all_reviews)

    # convert result to array
    train_data_features = train_data_features.toarray()
    #print(train_data_features)
    #print(train_data_features.shape)

    # print words in vocab
    vocab = vectorizer.get_feature_names()
    #print(vocab)
    #print()

    # Sum up the counts of each vocabulary word
    dist = np.sum(train_data_features, axis=0)
    #for tag, count in zip(vocab, dist):
        #print(count, tag)

    # Initialize a Random Forest classifier with 100 trees
    forest = RandomForestClassifier(n_estimators=100)

    # Fit the forest to the training set, using the bag of words as
    # features and the sentiment labels as the response variable

    forest = forest.fit(train_data_features, train["sentiment"])
    print(forest)

if __name__ == "__main__":
    main()

