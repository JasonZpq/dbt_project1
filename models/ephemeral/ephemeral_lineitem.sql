{{ config(materialized='ephemeral') }}

-- Ephemeral model for lineitem data transformation
-- This handles any data cleaning, filtering, or transformation logic
-- before the snapshot tracks changes

select 
    l_orderkey,
    l_partkey,
    l_suppkey,
    l_linenumber,
    l_quantity,
    l_extendedprice,
    l_discount,
    l_tax,
    l_returnflag,
    l_linestatus,
    l_shipdate,
    l_commitdate,
    l_receiptdate,
    l_shipinstruct,
    l_shipmode,
    l_comment
from {{ source('tpch', 'lineitem') }}
-- Add any filters, transformations, or data cleaning here
-- For example:
where l_quantity > 0  -- filter out invalid quantities
