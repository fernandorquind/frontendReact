const assert = require('assert');
describe('Simple Unit Test in Math', () => {
  it('should return 3', () => {
    assert.equal(2 + 1, 3);
  });
  it('should return 6', () => {
    assert.equal(3 * 2, 6);
  });
  it('should return 2', () => {
    assert.equal(4 / 2, 2);
  });
  it('should return 12', () => {
    assert.equal(5 + 7, 12);
  });
});