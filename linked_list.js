class Node{
    constructor(data,next=null){
        this.data=data;
        this.next=next;
    }
}

class LinkedList {
    constructor() {
        this.head = null;
        this.size = 0;
    }

    // ! insertfirst in node.
    insertFirst(data) {
        this.head = new Node(data, this.head);
        this.size++;
    }

    // ? Insert Last in node.
    inserLast(data) {
        let node = new Node(data);
        let current;
        if (!this.head) {
            this.head = node;
        } else {
            current = this.head;
            while (current.next) {
                current = current.next;
            }
            current.next = node;
        }
        this.size++;

    }

    // * Insert at index number;
    inserAtIndex(data, index) {
        if (index > 0 && index > this.size) {
            return;
        }
        if (index === 0) {
            this.head = new Node(data, this.head);
            return;
        }
        const node = new Node(data);
        let current, previous;
        current = this.head;
        let count = 0;
        while (count < index) {
            previous = current; // node before index
            count++;
            current = current.next; //node after
        }
        node.next = current;
        previous.next = node;
        this.size++;

    }

    //! get at index in node;

    getAtIndex(index) {
        let current = this.head;
        let count = 0;
        while (current) {
            if (count == index) {
                console.log(current.data);
            }
            count++;
            current = current.next;
        }
        return null;
    }

    //! remove at index 
    removeAtIndex(index) {
        if (index > 0 && index > this.size) {
            return;
        }
        let current = this.head;
        let previous;
        let count = 0;

        if (index == 0) {
            this.head = current.next;
        } else {
            while (count < index) {
                count++;
                previous = current;
                current = current.next;
            }
            previous.next = current.next;
        }
        this.size--;
    }

    //! clear list
    clearAllList() {
        this.head = null;
        this.size = 0;
    }

    // ! Printall data

    printAllData() {
        let current = this.head;
        while (current) {
            console.log(current.data);
            current = current.next;
        }
    }
}

const all = new LinkedList();
all.insertFirst(100)
all.insertFirst(200)
all.insertFirst(300)
all.insertFirst(400)
all.inserLast(500);
all.inserAtIndex(320, 3);
// all.getAtIndex(3);
all.removeAtIndex(0);
// all.clearAllList();
all.printAllData();
// console.log(all.siz);