from flask import Flask, render_template, request
import pandas as pd
from web_static_data import symbols_list
import os

app = Flask(__name__)


@app.route("/")
def hello_world():
    """
    The symbols list is too large. It takes too much time to load it. Therefore, pre-extract it and store the data
    as static data to improve web response.

    symbols_list = pd.read_csv('data/nasdaq_listings.csv')['Symbol'].to_list()
    print(symbols_list)
    """
    message_display = 'none'
    return render_template(
        'index.html',
        message_display=message_display,
        symbols_list=symbols_list
    )


@app.route("/predict", methods=['POST'])
def predict():
    symbol = request.form.get('symbol')
    print(symbol)
    message_display = 'none'
    dir_list = os.listdir('./models')
    mape_list = []
    for folder in dir_list:
        if folder.__contains__('checkpoints'):
            continue
        else:
            mape_list.append(float(folder.split('_')[1]))
    min_mape = min(mape_list)
    best_model_name = ''
    for folder in dir_list:
        if folder.__contains__(str(min_mape)):
            best_model_name = folder
            break
    if symbol == 'GOOGL':
        suggestion_display = 'block'
        train_display = 'none'
        return render_template(
            'visualization.html',
            message_display=message_display,
            suggestion_display=suggestion_display,
            symbol=symbol,
            symbols_list=symbols_list,
            train_display=train_display
        )
    else:
        message_display = 'block'
        suggestion_display = 'none'
        train_display = 'block'
        return render_template(
            'visualization.html',
            message_display=message_display,
            suggestion_display=suggestion_display,
            symbols_list=symbols_list,
            symbol=symbol,
            train_display=train_display
        )


@app.route("/source_code")
def source_code():
    return render_template('Stock_Price_Prediction_LSTM.html')


if __name__ == '__main__':
    app.run(debug=True, port=5050, host='localhost')
