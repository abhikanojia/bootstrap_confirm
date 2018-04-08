function BootstrapConfirm(data) {
  this.confirmBox = data.confirmBox;
  this.triggerButton = data.triggerButton;
  this.okButton = data.okButton;
}

BootstrapConfirm.prototype.addInformation = function() {
  var _this = this;

  this.confirmBox.on('show.bs.modal', function(){
    var modal = $(this),
        title = _this.triggerButton.data('title'),
        message = _this.triggerButton.data('message');

    modal.find('.modal-title').text(title);
    modal.find('.modal-message').text(message);
  });
};

BootstrapConfirm.prototype.bindOkButton = function() {
  var _this = this;
  this.okButton.click(function(){
    _this.triggerButton.unbind('click')
                        .trigger('click');
  });
};

BootstrapConfirm.prototype.bindTriggerButton = function() {
  var _this = this;
  this.triggerButton.click(function(event){
    event.preventDefault();
    event.stopPropagation();
    _this.addInformation();
    _this.confirmBox.modal('show');
  });
};

BootstrapConfirm.prototype.init = function() {
  this.bindTriggerButton();
  this.bindOkButton();
};
