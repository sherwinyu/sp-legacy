### 
Sp.Store = DS.Store.extend({
  revision: 4,
  adapter: DS.RESTAdapter.create()
});
### 
#
Sp.store = DS.Store.create(
  revision: 4
  adapter: DS.RESTAdapter.create(bulkCommit: false)
)

console.log Sp.store, "derpderp"
