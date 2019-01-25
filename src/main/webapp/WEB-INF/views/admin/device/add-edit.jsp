<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="add-edit" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Device Information</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <br>
                            <form role="form">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control"
                                               id="name" name="name"
                                               value=""
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="name">Version</label>
                                        <input type="text" class="form-control"
                                               id="version" name="version"
                                               value=""
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="name">Firmware</label>
                                        <input type="text" class="form-control"
                                               id="firmware" name="firmware"
                                               value=""
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="name">Price</label>
                                        <input type="text" class="form-control"
                                               id="price" name="price"
                                               value=""
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" id="lock" name="lock"
                                                   class="minimal-red" value="">
                                            Lock device
                                        </label>
                                    </div>
                                </div>
                                <div class="box-footer">
                                    <div style="float: right">
                                        <button type="submit" class="btn btn-primary">Save
                                        </button>
                                        <button type="button" class="btn btn-danger"
                                                data-dismiss="modal">Cancel
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>