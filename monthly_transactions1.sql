select left(trans_date,7) as month, country, count(id) as trans_count, sum(state='approved') as approved_count, sum(amount) as trans_total_amount, sum((state = 'approved')*amount) as approved_total_amount
from transactions group by month, country;

""" 
trans_date is assumed to be in the format 'YYYY-MM-DD' or 'YYYY-MM-DD HH:MM:SS'. 
LEFT(trans_date, 7) extracts the first 7 characters from trans_date.
"""
