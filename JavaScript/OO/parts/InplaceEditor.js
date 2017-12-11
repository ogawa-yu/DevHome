function InplaceEditor($root, templates) {
    this.$root = $root;
    this.templates = templates;

    this.update_value("クリックして編集")
        .on('click', 'button', function(event) {
            this.update_value($(event.delegateTarget).find('input').val());
        }.bind(this))
        .on('click', 'p', function(event) {
            this.open_editor();
        }.bind(this));
}

InplaceEditor.prototype = {
    update_value: function(value) {
        this.value = value;
        return this.$root.html(this.templates.viewer(this));
    },
    open_editor: function() {
        return this.$root.html(this.templates.editor(this));
    }
};
