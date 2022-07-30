from common.constants import FPGROWTH_MODEL,MAX_RESULTS


def item_to_item_predict(product_id):
    rules = FPGROWTH_MODEL['rules']
    preds = rules[rules['antecedents']==product_id]
    preds = preds['consequents'].apply(iter).apply(next)
    return preds[:MAX_RESULTS]