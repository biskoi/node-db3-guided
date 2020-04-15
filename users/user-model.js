const db = require('../data/db-config.js');

module.exports = {
   all,
   byId,
   insert,
   update,
   del
};

function all() {
   return db('users');
};

function byId(id) {
   return db('users').where({id});
};

function insert(user) {
   return db('users').insert(user, 'id')
   .then(res => {
      return byId(res[0]);
   });
};

function update(newUser, id) {
   return db('users').where({id}).update(newUser)
   .then(res => {
      return byId(id);
   });
}

function del(id) {
   return db('users').where({id}).del()
};