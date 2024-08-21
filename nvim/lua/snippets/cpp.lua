local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

ls.add_snippets("cpp", {
    snip({
        trig = "cppbasic",
        name = "C++ Template",
        desc = "C++ Basic Template",
    }, {
        text({
            '#include <bits/stdc++.h>',
            '',
            'using namespace std;',
            'typedef long long ll;',
            '',
            'int main() {',
            '    ios_base::sync_with_stdio(0);',
            '    cin.tie(nullptr);',
            '    ',
        }),
        insert(0, [[// Start Coding!]]),
        text({
            '',
            '',
            '    return 0;',
            '}',
        })
        
    }),
    snip({
        trig = "TEST",
        name = "Test Cases",
        desc = "Read the number of test cases and run a while to execute code for every test case.",
    }, {
        text({
            'int T; cin >> T;',
            'while(T--) {',
            '    '
        }),
        insert(0, [[// Your code goes here]]),
        text({
            '',
            '}',
        }),
    }),
    snip({
        trig = "ctemp",
        name = "C++ Template",
        desc = "C++ Competitive Programming Template",
    }, {
        text({
            '#include <bits/stdc++.h>',
            '',
            'using namespace std;',
            '',
            'typedef long long ll;',
            'typedef pair<ll, ll> pii;',
            'typedef vector<ll> vi;',
            'typedef vector<pii> vii;',
            'typedef vector<vi> vvi;',
            '',
            '#define pb push_back',
            '#define all(v) (v).begin(), (v).end()',
            '#define rall(v) (v).rbegin(), (v).rend()',
            '#define sz(v) (int)(v).size()',
            '',
            'void setPrec() { cout << fixed << setprecision(16); }',
            'void setIO(string NAME = "") {',
            '    cin.tie(0)->sync_with_stdio(0);',
            '    setPrec();',
            '    if(sz(NAME)) {',
            '        freopen((NAME + ".inp").c_str(),"r",stdin);',
            '        freopen((NAME + ".out").c_str(),"w",stdout);',
            '    }',
            '}',
            '',
            'int main() {',
            '    setIO();',
            '    ',
        }),
        insert(0,[[// Start Coding XP]]),
        text({
            '',
            '',
            '    return 0;',
            '}',
        })
    })
})

