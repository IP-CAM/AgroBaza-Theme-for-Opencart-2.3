<?php echo $header; ?>
<div class="mobile-menu-area hidden-lg hidden-md">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <div class="mobile-menu">
          <nav id="dropdown">
            <ul>
              <?php echo $content_bottom; ?>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li>
      <a href="<?php echo $breadcrumb['href']; ?>">
        <?php echo $breadcrumb['text']; ?>
      </a>
    </li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success">
    <i class="fa fa-check-circle"></i>
    <?php echo $success; ?>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-warning">
    <i class="fa fa-exclamation-circle"></i>
    <?php echo $error_warning; ?>
  </div>
  <?php } ?>
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <h2>
        <?php echo $text_address_book; ?>
      </h2>
      <?php if ($addresses) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <?php foreach ($addresses as $result) { ?>
          <tr>
            <td class="text-left">
              <?php echo $result['address']; ?>
            </td>
            <td class="text-right">
              <a href="<?php echo $result['update']; ?>" class="btn btn-info">
                <?php echo $button_edit; ?>
              </a> &nbsp;
              <a href="<?php echo $result['delete']; ?>" class="btn btn-danger">
                <?php echo $button_delete; ?>
              </a>
            </td>
          </tr>
          <?php } ?>
        </table>
      </div>
      <?php } else { ?>
      <p>
        <?php echo $text_empty; ?>
      </p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-left">
          <a href="<?php echo $back; ?>" class="submit-btn-1 mt-20 btn-hover-1 text-right">
            <?php echo $button_back; ?>
          </a>
        </div>
        <div class="pull-right">
          <a href="<?php echo $add; ?>" class="submit-btn-1 mt-20 btn-hover-1 text-right">
            <?php echo $button_new_address; ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
