package unit;

import buddy.*;
using buddy.Should;

import cocktail.event.*;

class TestEventListener extends BuddySuite {

    public function new()
    {
        describe('Event Listener', function () {
            describe('#handleEvent', function () {
                it('should call registered listeners', function () {
                    var count = 0;
                    var eventListener = new EventListener('test', function (e) count++, false);

                    eventListener.handleEvent(new Event());
                    eventListener.handleEvent(new Event());

                    count.should.be(2);
                });
            });
        });
    }
}

