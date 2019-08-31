#include "todolist.h"

TodoList::TodoList(QObject *parent) : QObject(parent)
{
    mItems.append({true, QStringLiteral("Wash the car")});
    mItems.append({false, QStringLiteral("Fix the sink")});
}

QVector<TodoItem> TodoList::items() const
{
    return mItems;
}

bool TodoList::setItemAt(int index, const TodoItem &item)
{
    if(index < 0 || index> mItems.size())
        return false;

    const TodoItem &oldItem = mItems.at(index);
    if(item.done == oldItem.done && item.description == oldItem.description)
        return false;

    mItems[index] = item;

    return true;
}

void TodoList::appendItem()
{
    emit preItemAppended();

    TodoItem item;
    item.done = false;
    mItems.append(item);

    emit postItemAppended();
}

void TodoList::removeCompletedItems()
{
    for (int i= 0; i< mItems.size();) {
        if(mItems.at(i).done) {

            emit preItemRemoved(i);

            mItems.removeAt(i);

            emit postItemRemoved();
        } else {
            ++i;
        }
    }
}
