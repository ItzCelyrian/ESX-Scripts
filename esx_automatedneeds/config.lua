Config = {}

Config.Visible = true

Config.Needs = {
    [1] = {
        ['item'] = 'water',
        ['type'] = 'thirst',
        ['rate'] = '200000',
        ['prop'] = 'prop_ld_flow_bottle'
    },
    [2] = {
        ['item'] = 'burger',
        ['type'] = 'hunger',
        ['rate'] = '200000',
        ['prop'] = 'prop_cs_burger_01'
    },
    [3] = {
        ['item'] = 'cooked_steak',
        ['type'] = 'hunger',
        ['rate'] = '500000',
        ['prop'] = nil
    },
}